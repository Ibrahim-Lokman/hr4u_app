import 'package:flutter/material.dart';

class SubmitAllAlertDialog extends StatefulWidget {
  @override
  _SubmitAllAlertDialogState createState() => _SubmitAllAlertDialogState();
}

class _SubmitAllAlertDialogState extends State<SubmitAllAlertDialog> {
  bool _isChecked = false;

   @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: AlertDialog(
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
          content: Expanded(

            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: [
                 Padding(
                    padding: const EdgeInsets.only(bottom: 13.0),
                    child: Text(
                      "Other Individual KPIs",
                      style: TextStyle(
                        fontSize: 16, 
                        fontFamily: "Nunito-Regular",
                        ),
                    ),
                  ),
      
                
                Container(
                  margin: EdgeInsets.only(top: 42),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Please check all recommanded field before send to supervisor.',
                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Nunito-Medium',
                                      color: Color(0xD9DE000000),
                                      ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Do you want to submit all KPIs?',
                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Nunito-Medium',
                                        color: Color(0xFFEC1940),
                                      ),
                  ),
                ),
                SizedBox(height: 20,),
               
                Row(
                  
                  children: [
                    Expanded(  
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
                                //  SizedBox(width: 10,),
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
                        SizedBox(width: 10,),

                    Expanded(   
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                 backgroundColor: Color(0xFFEC1940),
                                 disabledBackgroundColor: Color(0xFF979797),
                                ),
                              onPressed:() => Navigator.pop(context, true),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}