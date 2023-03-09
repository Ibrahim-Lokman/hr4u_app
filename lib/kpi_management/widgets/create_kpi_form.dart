import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../screens/text_field_screen.dart';

class CreateKPIForm extends StatefulWidget {
  final Function onSave;

  CreateKPIForm({required this.onSave});

  @override
  _CreateKPIFormState createState() => _CreateKPIFormState();
}

class _CreateKPIFormState extends State<CreateKPIForm> {

  final _textFieldController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _textFieldController.dispose();
    super.dispose();
  }

   final List<String> years = [
  '2020',
  '2021',
  '2022',
  '2023',
 ];

  String? selectedValue;
  final _formKey = GlobalKey<FormState>();
  String _kpiName = '';
  String _selectedYear = '';
  String _kpiDefinition = '';
  String _strategicLink = '';
  String _commentNote = '';
  String _needImprovement = '';
  String _wellDone = '';
  String _exceedsExpectation = '';
  

  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(15),
      margin: EdgeInsets.all(20),
      color: Colors.white,
      width: 400,
      child: Form(
        
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
    
          children: [
            TextFormField(
              controller: _textFieldController,
              decoration: InputDecoration(
                labelText: 'KPI Name',
                border: OutlineInputBorder(),               
              ),
              onSaved: (value) {
                _kpiName = value!;
              },
            ),
             ElevatedButton(
              child: Text('Open Input Screen'),
              onPressed: () async {
                // Navigate to the input screen and wait for the result.
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InputScreen()),
                );
                // Update the TextField with the result.
                setState(() {
                  _textFieldController.text = result;
                });
              },
            ),
    
            SizedBox(height: 12),
    
            DropdownButtonFormField2(
              decoration: InputDecoration(
                labelText: "Select Year",
                border: OutlineInputBorder(),
              ),
             // isExpanded: true,
              items: years.map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                ),
              )).toList(),
    
              onSaved: (value) {
                selectedValue = value.toString();
              },
              onChanged: (value) {
                setState(() {
                selectedValue = value as String;
                });
              },
             
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black45,
                ),
              ),
            ),
    
            SizedBox(height: 12),
            
            TextFormField(
              decoration: InputDecoration(
                labelText: 'KPI Definition',
                border: OutlineInputBorder(),
              ),
              onSaved: (value) {
                _kpiDefinition = value!;
              },
            ),
    
            SizedBox(height: 12),
            
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Strategic Link',
                border: OutlineInputBorder(),
              ),
              onSaved: (value) {
                _strategicLink = value!;
              },
            ),
    
            SizedBox(height: 12),
            
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Comment/Note',
                border: OutlineInputBorder(),
              ),
              onSaved: (value) {
                _commentNote = value!;
              },
            ),
    
            SizedBox(height: 12),
    
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Need Improvement',
                border: OutlineInputBorder(),
              ),
              onSaved: (value) {
                _needImprovement = value!;
              },
            ),
    
            SizedBox(height: 12),
    
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Well done',
                border: OutlineInputBorder(),
              ),
              onSaved: (value) {
                _wellDone = value!;
              },
            ),
    
            SizedBox(height: 12),
    
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Exceeds Expectation',
                border: OutlineInputBorder(),
              ),
              onSaved: (value) {
                _exceedsExpectation = value!;
              },
            ),
            
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                },
            child: Container(
              width: 400, 
              height: 50, 
              alignment: Alignment.center, 
              child: Text('Save', textScaleFactor: 1.5,
              )
            ),
          ),
       
      ],
      ),
    ),
    );
  }}