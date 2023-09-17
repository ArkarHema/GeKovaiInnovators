import 'package:flutter/material.dart';

class refill extends StatefulWidget {
  const refill({Key? key}) : super(key: key);

  @override
  State<refill> createState() => _refillState();
}

class _refillState extends State<refill> {
  final TextEditingController _count = TextEditingController();
  String count = '1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Refill Needed'),
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
                          const Text(
                            'Click on any medicine to adjust stock',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey, // Text color set to black
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            'Medications running low',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color set to black
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () => showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title: const Text('Refill Stock with '),
                                    content: TextFormField(
                                      controller: _count,
                                      keyboardType: TextInputType.number,
                                      onSaved: (value) => count = value!,
                                      style: const TextStyle(
                                        color: Colors
                                            .black, // Text color set to black
                                      ),
                                      decoration: const InputDecoration(
                                        labelText: 'Quantity',
                                        prefixIcon: Icon(Icons.add),
                                        border:
                                            OutlineInputBorder(), // Rounded border
                                      ),
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Refill'),
                                        child: const Text('Refill'),
                                      ),
                                    ],
                                  ),
                                ),
                                child: const Text(
                                  'Paracetamol',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors
                                        .orange, // Text color set to black
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  //navigate to buying options
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange, // Button color
                                  onPrimary: Colors.white, // Text color
                                  padding:
                                      const EdgeInsets.all(16.0), // Padding
                                  textStyle: const TextStyle(
                                    fontSize: 18.0,
                                  ),
                                ),
                                child: const Text('Buy'),
                              ),
                            ],
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
