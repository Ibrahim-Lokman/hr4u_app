import 'package:flutter/material.dart';

import '../../providers/dummy_form_items.dart';
import 'item_status_widget.dart';

class FormsWidget extends StatelessWidget {
     List<List<dynamic>> form_items = dummy_form_items;
  
  //const Forms_widget({
  //  super.key,
  // });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 390,
      width: 440,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10)
        ),
      ),
      
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(
              top:  20,
              left: 20,
              right: 20,
              bottom: 10,
            ),
            child: Text(
              "Forms (5)",
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'Nunito-SemiBold', 
              ),
              ),
          ),
          
          Column(
            children: [
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: form_items.length,
                itemBuilder: (context, index) {
                  final item = form_items[index];
                  return ItemStatusWidget(item[0], item[1]);
                 },
                ),
            ],
          ),
          ],
      ),
    );
  }
}