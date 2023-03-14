import 'package:flutter/material.dart';

import 'item_status_widget.dart';
import '../../providers/dummy_kpi_items.dart';

class KpiWidget extends StatelessWidget {
  List<List<dynamic>> kpi_items = dummy_kpi_items;

 // const KPI_widget({
 //   super.key,
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
            "KPI (4)",
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
            itemCount: kpi_items.length,
            itemBuilder: (BuildContext  context, int index) {
              final item = kpi_items[index];
              return ItemStatusWidget(item[0], item[1]);
             },
              ),
        ),
       
        
      ],
    );
  }
}