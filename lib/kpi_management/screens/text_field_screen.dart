import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  static const routeName = '/input-screen';

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  // Create a controller for the input TextField.
  final _inputController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the input TextField.
            TextFormField(controller: _inputController),
            SizedBox(height: 20),
            // Display a button to save the input data.
            ElevatedButton(
              child: Text('Save'),
              onPressed: () {
                // Pass the input data back to the previous screen.
                Navigator.pop(context, _inputController.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}