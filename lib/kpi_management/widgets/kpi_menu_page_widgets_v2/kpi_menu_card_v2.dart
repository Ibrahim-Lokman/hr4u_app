import 'package:flutter/material.dart';

class KpiMenuCardV2 extends StatelessWidget {
  const KpiMenuCardV2(
     this.title,
     this.value
  );
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
  
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 17.0,
        left: 23,
        top: 10
        ),
      child: Row(
        children: [
          Container(
            width: 150,
          //  color: Colors.red,
            child: Text(
              title, 
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Nunito-Medium', 
                color: Color(0x8080000000)
              ),
            ),
          ),
          
          Text( 
            value, 
            style: TextStyle(
                fontSize: 13,
                fontFamily: 'Nunito-Medium', 
                color: Color(0xD9DE000000)
              ),
          ),
        ],
      ),
    );
  }
}


