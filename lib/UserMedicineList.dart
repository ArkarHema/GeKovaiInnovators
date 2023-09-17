import 'package:flutter/material.dart';
import 'package:gehealth_care/medicineList.dart';

class userMedicineList extends StatefulWidget {
  const userMedicineList({Key? key}) : super(key: key);

  @override
  State<userMedicineList> createState() => _userMedicineListState();
}

class _userMedicineListState extends State<userMedicineList> {
  final TextEditingController _count = TextEditingController();
  String count = '1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User 1 list'),
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
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width *
                          0.9, // One-third of the screen width
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color:
                            Colors.white.withOpacity(0.4), // Decreased opacity
                        borderRadius:
                            BorderRadius.circular(12.0), // Rounded corners
                      ),
                      child: Column(
                        children: [
                          Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Rounded corners
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                    'Paracetamol',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors
                                          .orange, // Text color set to black
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'Type: Capsule',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors
                                              .orange, // Text color set to black
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20.0,
                                      ),
                                      Text(
                                        'Strength: 100 mg',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors
                                              .orange, // Text color set to black
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20.0,
                                      ),
                                      Text(
                                        'After Food',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors
                                              .orange, // Text color set to black
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        children: const [
                                          Text(
                                            '1',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors
                                                  .orange, // Text color set to black
                                            ),
                                          ),
                                          Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                            size: 32,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: const [
                                          Text(
                                            '0',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors
                                                  .orange, // Text color set to black
                                            ),
                                          ),
                                          Icon(
                                            Icons.close,
                                            color: Colors.red,
                                            size: 32,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: const [
                                          Text(
                                            '1',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors
                                                  .orange, // Text color set to black
                                            ),
                                          ),
                                          Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                            size: 32,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                        height: 10,
                                      ),
                                      TextButton(
                                        onPressed: () => showDialog<String>(
                                          context: context,
                                          builder: (BuildContext context) =>
                                              AlertDialog(
                                            title: const Text(
                                                'Refill Stock with '),
                                            content: TextFormField(
                                              controller: _count,
                                              keyboardType:
                                                  TextInputType.number,
                                              onSaved: (value) =>
                                                  count = value!,
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
                                                onPressed: () => Navigator.pop(
                                                    context, 'Refill'),
                                                child: const Text('Refill'),
                                              ),
                                            ],
                                          ),
                                        ),
                                        child: const Text(
                                          'Stock : 6',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors
                                                .orange, // Text color set to black
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Rounded corners
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                    'Paracetamol',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors
                                          .orange, // Text color set to black
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'Type: Capsule',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors
                                              .orange, // Text color set to black
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20.0,
                                      ),
                                      Text(
                                        'Strength: 100 mg',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors
                                              .orange, // Text color set to black
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20.0,
                                      ),
                                      Text(
                                        'After Food',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors
                                              .orange, // Text color set to black
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        children: const [
                                          Text(
                                            '1',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors
                                                  .orange, // Text color set to black
                                            ),
                                          ),
                                          Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                            size: 32,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: const [
                                          Text(
                                            '0',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors
                                                  .orange, // Text color set to black
                                            ),
                                          ),
                                          Icon(
                                            Icons.close,
                                            color: Colors.red,
                                            size: 32,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: const [
                                          Text(
                                            '1',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors
                                                  .orange, // Text color set to black
                                            ),
                                          ),
                                          Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                            size: 32,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                        height: 10,
                                      ),
                                      TextButton(
                                        onPressed: () => showDialog<String>(
                                          context: context,
                                          builder: (BuildContext context) =>
                                              AlertDialog(
                                            title: const Text(
                                                'Refill Stock with '),
                                            content: TextFormField(
                                              controller: _count,
                                              keyboardType:
                                                  TextInputType.number,
                                              onSaved: (value) =>
                                                  count = value!,
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
                                                onPressed: () => Navigator.pop(
                                                    context, 'Refill'),
                                                child: const Text('Refill'),
                                              ),
                                            ],
                                          ),
                                        ),
                                        child: const Text(
                                          'Stock : 6',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors
                                                .orange, // Text color set to black
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (content) => const medicineList(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
