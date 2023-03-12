import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ShowRevertedMessage extends StatelessWidget {
  const ShowRevertedMessage({super.key});


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        titlePadding: EdgeInsets.only(top: 5,right: 10, bottom: 0),
       // insetPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 200),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
            ),
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
                  "Reverted",
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
        content: Container(
          
          height: 230,
          width: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text(
                  "Reverted KPI name",
                  style: TextStyle(
                    fontSize: 16, 
                    fontFamily: "Nunito-Regular",
                    ),
                ),
              ),

              Container(
                height: 180,
                width: 350,
               // margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                 border: Border.all(color: Colors.grey),
                 borderRadius: BorderRadius.all(Radius.circular(10))
                 ),
                 
                child: SingleChildScrollView(
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    
                  ),
                ),
              ),
            ],
          ),
        ),
      );




    }

  }