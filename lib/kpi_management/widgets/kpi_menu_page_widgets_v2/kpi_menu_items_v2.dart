import 'package:flutter/material.dart';
import 'kpi_menu_card_v2.dart';
import 'alert_dialogs/set_kpi_dialog.dart';

class KpiMenuItemsV2 extends StatefulWidget {
  const KpiMenuItemsV2({
    super.key,
  });

  

  @override
  State<KpiMenuItemsV2> createState() => _KpiMenuItemsV2State();
}

class _KpiMenuItemsV2State extends State<KpiMenuItemsV2> {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SizedBox(height: 8,),
        Container(
          padding: EdgeInsets.only(
            top: 47,
            bottom: 10,
            left: 30,
            right:20,
            ),
        //  height: 250,
         // width: 455,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            children: [
              KpiMenuCardV2("KPI Group", "Core Individual KPI 2.1",),
              KpiMenuCardV2("KPI Weightage", "--",),
              KpiMenuCardV2("KPI", "--",),
              SizedBox(height: 9,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(

                        child: OutlinedButton(
                          
                            style:  OutlinedButton.styleFrom(
                                  side: BorderSide(
                                    width: 1.0, 
                                    color: Color(0xFFEC1940), 
                                  ),
                                //  backgroundColor: Color.fromARGB(255, 103, 49, 49),
                                  ),
                            onPressed: () {
                              showDialog(context: context, builder: (context) => SetKpiDialog());
                            },
                            child: Container(
                              margin: EdgeInsets.all(
            5
            ),
                              child: Text(
                                
                                    'Set KPI', 
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Nunito-Medium', 
                                      color: Color(0xFFEC1940),
                                    ),
                                    ),
                            ),
                        ),
                      ),
                ],
              ),

            ],
          ),
        ),
        
      ],
    );
  }
}