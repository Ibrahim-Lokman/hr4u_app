import 'package:flutter/material.dart';

import 'item.status.widget.dart';
import '../dummydata/dummy_kpi_form.dart';

class KPI_widget extends StatelessWidget {
  List<List<dynamic>> kpi_items = dummy_kpi_items;
 // const KPI_widget({
 //   super.key,
 // });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      height: 290,
      width: 440,
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
              "KPI (4)",
              textScaleFactor: 1.6,
              ),
          ),
          
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: kpi_items.length,
            itemBuilder: (context, index) {
              final item = kpi_items[index];
              return kpi_item_status_widget(item[0], item[1],item[2],);
             },
        ),
         
          
        ],
      ),
    );
  }
}

