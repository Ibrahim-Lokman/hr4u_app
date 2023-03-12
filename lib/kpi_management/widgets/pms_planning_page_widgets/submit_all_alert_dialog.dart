import 'package:flutter/material.dart';

class SubmitAllAlertDialog extends StatefulWidget {
  @override
  _SubmitAllAlertDialogState createState() => _SubmitAllAlertDialogState();
}

class _SubmitAllAlertDialogState extends State<SubmitAllAlertDialog> {
  bool _isChecked = false;

   @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.error_outline_rounded, 
                    color: Color(0xFFEC1940),),
                ),
                
                Text(
                  "Alert",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Nunito-Bold',
                      color: Color(0xFFEC1940),
                    ),
                ),
              //  SizedBox(width: 50,),
              ],
            ),
          ],
        ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: Container(
        height: 400,
        width: 350,
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: [

             Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Text(
                  "Other Individual KPIs",
                  style: TextStyle(
                    fontSize: 16, 
                    fontFamily: "Nunito-Regular",
                    ),
                ),
              ),

            SizedBox(height: 30,),
            Text(
              textAlign: TextAlign.center,
              'Please check all recommanded field before send to supervisor.',
              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Nunito-Medium',
                                color: Color(0xD9DE000000),
                                ),
            ),
            SizedBox(height: 20),
            Text(
              textAlign: TextAlign.center,
              'Do you want to procced all KPI and forms?',
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
                Text('Yes, I Carefully checked all forms.'),
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
                        width: 145,
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
                        width: 145,
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                               backgroundColor: Color(0xFFEC1940),
                               disabledBackgroundColor: Color(0xFF979797),
                              ),
                            onPressed: _isChecked
                               ? () => Navigator.pop(context, true)
                               : null,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Image.asset("assets/icons/eye_2.png"),
                                SizedBox(width: 10,),
                                const Text(
                                  'Ok',
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