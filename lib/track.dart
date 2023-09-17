import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class trackScreen extends StatefulWidget {
  const trackScreen({Key? key}) : super(key: key);

  @override
  State<trackScreen> createState() => _trackScreenState();
}

class _trackScreenState extends State<trackScreen> {
  List<String> username = ['User1', 'User2', 'User3', 'User4'];
  String item = 'User1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tracking Adherence'),
      ),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          DropdownButton<String>(
                            value: item,
                            onChanged: (newValue) {
                              setState(() {
                                item = newValue!;
                              });
                            },
                            items: username
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              );
                            }).toList(),
                            style: const TextStyle(
                                color: Colors.black, fontSize: 16),
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.green,
                              size: 32,
                            ),
                            elevation: 4,
                            underline: Container(
                              height: 2,
                              color: Colors.orange,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            'Adhering',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors
                                  .orangeAccent, // Text color set to black
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: LinearPercentIndicator(
                              width: 200,
                              lineHeight: 20.0,
                              percent: 0.7,
                              center: Text("70 %"),
                              trailing: Icon(Icons.mood),
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              backgroundColor: Colors.grey,
                              progressColor: Colors.orange,
                            ),
                          ),
                          Row(
                            children: [
                              const Text(
                                'September 13, 2023',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors
                                      .orangeAccent, // Text color set to black
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: LinearPercentIndicator(
                                  width: 55,
                                  lineHeight: 20.0,
                                  percent: 0.66,
                                  center: const Text("66 %"),
                                  linearStrokeCap: LinearStrokeCap.roundAll,
                                  backgroundColor: Colors.grey,
                                  progressColor: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            '9:00 AM',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors
                                  .orangeAccent, // Text color set to black
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.check_box,
                                color: Colors.green,
                                size: 20.0,
                                semanticLabel: 'Paracetamol',
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                'Paracetamol (1 tab)',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors
                                      .orangeAccent, // Text color set to black
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.close,
                                color: Colors.red,
                                size: 20.0,
                                semanticLabel: 'Paracetamol',
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                'Cipla (1 tab)',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors
                                      .orangeAccent, // Text color set to black
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                'September 12,2023',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors
                                      .orangeAccent, // Text color set to black
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: LinearPercentIndicator(
                                  width: 58,
                                  lineHeight: 20.0,
                                  percent: 1.0,
                                  center: const Text("100%"),
                                  linearStrokeCap: LinearStrokeCap.roundAll,
                                  backgroundColor: Colors.grey,
                                  progressColor: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            '9:00 AM',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors
                                  .orangeAccent, // Text color set to black
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.check_box,
                                color: Colors.green,
                                size: 20.0,
                                semanticLabel: 'Paracetamol',
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                'Paracetamol (1 tab)',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors
                                      .orangeAccent, // Text color set to black
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.check_box,
                                color: Colors.green,
                                size: 20.0,
                                semanticLabel: 'Paracetamol',
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                'Cipla (1 tab)',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors
                                      .orangeAccent, // Text color set to black
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
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
