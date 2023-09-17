import 'package:flutter/material.dart';
import 'package:gehealth_care/medicineList.dart';

class userList extends StatefulWidget {
  const userList({Key? key}) : super(key: key);

  @override
  State<userList> createState() => _userListState();
}

class _userListState extends State<userList> {
  // ignore: non_constant_identifier_names
  final TextEditingController user_name = TextEditingController();
  final TextEditingController medicine_name = TextEditingController();
  final TextEditingController _availablestock = TextEditingController();
  final TextEditingController _stock = TextEditingController();
  bool changesMade = false;
  String _name = '';

  void handleSave() {
    // Add your save logic here
    changesMade = false; // Reset changesMade after saving
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Changes saved!'),
      ),
    );
  }

  Future<bool> _showDiscardConfirmationDialog() async {
    bool discard = false;
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Discard Changes?'),
          content: Text('Do you want to discard the changes?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                discard = true;
                Navigator.of(context).pop(true); // Discard changes
              },
              child: Text('Discard'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false); // Cancel
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                handleSave(); // Save changes and continue
                Navigator.of(context).pop(true);
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
    return discard;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (changesMade) {
          // Show confirmation dialog when attempting to leave without saving
          return await _showDiscardConfirmationDialog();
        }
        return true; // Allow leaving the page without changes
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'New User',
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                print('save called');
              },
              icon: const Icon(Icons.save),
            )
          ],
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
                  Container(
                    width: MediaQuery.of(context).size.width *
                        0.9, // One-third of the screen width
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4), // Decreased opacity
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                    ),
                    child: SingleChildScrollView(
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
                                  TextFormField(
                                    controller: user_name,
                                    validator: (value) => value!.isEmpty
                                        ? 'Please enter your name'
                                        : null,
                                    onSaved: (value) => _name = value!,
                                    style: const TextStyle(
                                      color: Colors
                                          .black, // Text color set to black
                                    ),
                                    decoration: const InputDecoration(
                                      labelText: 'Name',

                                      prefixIcon: Icon(Icons.person),
                                      border:
                                          OutlineInputBorder(), // Rounded border
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                ],
                              ),
                            ),
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
      ),
    );
  }

  @override
  void dispose() {
    user_name.dispose();
    super.dispose();
  }
}
