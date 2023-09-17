import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:gehealth_care/Register.dart';

// ignore: camel_case_types
class otp extends StatefulWidget {
  final String name;
  final String mobileNumber;
  const otp({required this.name, required this.mobileNumber});
  @override
  State<otp> createState() => _otpState();
}

// ignore: camel_case_types
class _otpState extends State<otp> {
  TextEditingController otpController = TextEditingController();
  String otp = '';
  int _resendTimeout = 30;
  bool _isResendDisabled = true;
  Timer? _timer;
  String generateOTP() {
    // Generate a random 6-digit OTP
    final random = Random();
    return (100000 + random.nextInt(900000)).toString();
  }

  void sendOTP() async {
    // Generate a random OTP (you can use a proper OTP generation library)
    otp = generateOTP();

    try {
      String message = 'Hello ${widget.name}, your OTP is: $otp';
      List<String> recipents = [widget.mobileNumber];

      String result = await sendSMS(message: message, recipients: recipents);
      print(result);
    } catch (error) {
      print(error.toString());
    }
  }

  void startResendTimer() {
    _isResendDisabled = true;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_resendTimeout > 0) {
        setState(() {
          _resendTimeout--;
        });
      } else {
        // Timer completed, enable resend button
        setState(() {
          _isResendDisabled = false;
        });
        _timer?.cancel();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    sendOTP();
    startResendTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                // gradient: LinearGradient(
                //   colors: [Colors.orange, Colors.yellow],
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                // ),
                ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'OTP Verification for ${widget.name}',
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width *
                      0.9, // One-third of the screen width
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4), // Decreased opacity
                    borderRadius:
                        BorderRadius.circular(12.0), // Rounded corners
                  ),
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          TextField(
                            controller: otpController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              labelText: 'Enter OTP',
                              prefixIcon: Icon(Icons.message),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              // Implement OTP verification logic here
                              String enteredOTP = otpController.text;
                              if (enteredOTP == otp) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (content) => Register(),
                                  ),
                                );
                                print('OTP is valid');
                              } else {
                                // Invalid OTP
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (content) => Register(),
                                  ),
                                );
                                print('Invalid OTP');
                              }
                            },
                            child: const Text('Verify OTP'),
                          ),
                          const SizedBox(height: 20),
                          _isResendDisabled
                              ? Text('Resend OTP in $_resendTimeout seconds',
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orangeAccent,
                                  ))
                              : ElevatedButton(
                                  onPressed: () {
                                    sendOTP();
                                    setState(() {
                                      _resendTimeout = 30;
                                    });
                                    startResendTimer();
                                  },
                                  child: const Text('Resend OTP'),
                                )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// Widget _textFieldOTP({bool first, last}) {
//   return Container(
//     height: 85,
//     child: AspectRatio(
//       aspectRatio: 1.0,
//       child: TextField(
//         autofocus: true,
//         onChanged: (value) {
//           if (value.length == 1 && last == false) {
//             FocusScope.of(context).nextFocus();
//           }
//           if (value.length == 0 && first == false) {
//             FocusScope.of(context).previousFocus();
//           }
//         },
//         showCursor: false,
//         readOnly: false,
//         textAlign: TextAlign.center,
//         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         keyboardType: TextInputType.number,
//         maxLength: 1,
//         decoration: InputDecoration(
//           counter: Offstage(),
//           enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(width: 2, color: Colors.black12),
//               borderRadius: BorderRadius.circular(12)),
//           focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(width: 2, color: Colors.purple),
//               borderRadius: BorderRadius.circular(12)),
//         ),
//       ),
//     ),
//   );
// }
// }
