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
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(
          top:  21,
          left: 13,
          bottom: 5,
        ),
          child: Text(
            "Forms (2)",
            style: TextStyle(
              fontSize: 17,
              fontFamily: 'Nunito-SemiBold', 
            ),
            ),
        ),
        
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: form_items.length,
            itemBuilder: (context, index) {
              final item = form_items[index];
              return ItemStatusWidget(item[0], item[1]);
             },
            ),
        ),
        ],
    );
  }
}