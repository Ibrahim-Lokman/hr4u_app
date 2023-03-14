import 'package:flutter/material.dart';
import './reset_dialog.dart';

class SetKpiDialog extends StatefulWidget {
  @override
  _SetKpiDialogState createState() => _SetKpiDialogState();
}

class _SetKpiDialogState extends State<SetKpiDialog> {
  TextEditingController _textController1 = TextEditingController();
  TextEditingController _textController2 = TextEditingController();
  TextEditingController _textController3 = TextEditingController();
  TextEditingController _textController4 = TextEditingController();
  TextEditingController _textController5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(height: 100,),
            AlertDialog(
              shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              content: Container(
                width: 490,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.close_rounded),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.refresh_rounded),
                          onPressed: () {
                            showDialog(
                              context: context, builder: (context) => ResetAlertDialog()
                            );
                            
                            _textController1.clear();
                            _textController2.clear();
                            _textController3.clear();
                            _textController4.clear();
                            _textController5.clear();
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'RedDot PAT (BDT Mn)',
                      style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Nunito-SemiBold',
                                color: Color(0xFFEC1940),
                              ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: _textController1,
                        decoration: InputDecoration(
                          labelText: 'Kpi Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                           ),
                        ),
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: _textController2,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Need Improvement',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                           ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: _textController3,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Well Done',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                           ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: _textController4,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Exceed Expectation',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                           ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _textController5,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Company Acheivement',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                           ),
                        ),
                      ),
                    ),
                  Container(
                    height: 30,
                  )
                  ],
                  
                ),
              ),
            ),
            SizedBox(height: 180,),
            Container(
              color: Colors.white,
              width: (MediaQuery.of(context).size.width),
              height: 90,
              padding: EdgeInsets.all(20),
              
              child: Container(
               padding: EdgeInsets.all(10),
             
                child: ElevatedButton(
                  
                      onPressed: () {
                        // Save button logic goes here
                      },
                       style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFEC1940),
                        ),
                      child: Text('Save'),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}