import 'package:flutter/material.dart';

class ResetAlertDialog extends StatefulWidget {
  @override
  _ResetAlertDialogState createState() => _ResetAlertDialogState();
}

class _ResetAlertDialogState extends State<ResetAlertDialog> {
  bool _isChecked = false;

   @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: Container(
        height: 400,
        width: 350,
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            SizedBox(height: 100,),
            Text(
              'Do you want to reset this form?',
              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Nunito-Medium',
                                  color: Color(0xFFEC1940),
                                ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                Text('Yes, I want to reset the form'),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                        width: 140,
                        height: 50,
                        child: OutlinedButton(
                            style:  OutlinedButton.styleFrom(
                                  side: BorderSide(
                                    width: 1.0, 
                                    color: Color(0xFFEC1940), 
                                  ),
                                  backgroundColor: Colors.white,
                                  ),
                             onPressed: () => Navigator.pop(context, false),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Image.asset("assets/icons/pencil_2.png"),
                                SizedBox(width: 10,),
                                const Text(
                                  'No', 
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Nunito-Bold', 
                                    color: Color(0xFFEC1940),
                                  ),
                                  ),
                              ],
                            ),
                        ),
                      ),
                  SizedBox(width: 10),
                  Container(
                        width: 140,
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                               backgroundColor: Color(0xFFEC1940),
                              ),
                            onPressed: _isChecked
                               ? () => Navigator.pop(context, true)
                               : () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Image.asset("assets/icons/eye_2.png"),
                                SizedBox(width: 10,),
                                const Text(
                                  'Yes',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Nunito-Bold', 
                                    color: Colors.white,
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
      ),
    );
  }
}