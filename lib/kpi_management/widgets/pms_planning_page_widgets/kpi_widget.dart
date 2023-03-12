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
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      height: 295,
      width: 450,
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
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'Nunito-SemiBold', 
              ),
            ),
          ),
          
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: kpi_items.length,
            itemBuilder: (context, index) {
              final item = kpi_items[index];
              return ItemStatusWidget(item[0], item[1]);
             },
        ),
         
          
        ],
      ),
    );
  }
}

