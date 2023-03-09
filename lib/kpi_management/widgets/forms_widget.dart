import 'package:flutter/material.dart';

import '../dummydata/dummy_kpi_form.dart';
import 'item.status.widget.dart';

class Forms_widget extends StatelessWidget {
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
        borderRadius: BorderRadius.all(Radius.circular(10)),
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
              textScaleFactor: 1.6,
              ),
          ),
          
          SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: [
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: form_items.length,
                  itemBuilder: (context, index) {
                    final item = form_items[index];
                    return kpi_item_status_widget(item[0], item[1],item[2],);
                   },
                  ),
              ],
            ),
          ),
          ],
      ),
    );
  }
}