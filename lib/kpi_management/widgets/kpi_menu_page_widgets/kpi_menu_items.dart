import 'package:flutter/material.dart';

import '../kpi_menu_page_widgets/kpi_menu_card.dart';

class KpiMenuItems extends StatelessWidget {
  const KpiMenuItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SizedBox(height: 8,),
        Container(
          padding: EdgeInsets.all(22),
          height: 250,
          width: 455,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            children: [
              KpiMenuCard("KPI Group", "Core Individual KPI 2.1",),
              KpiMenuCard("KPI Weightage", "15",),
              KpiMenuCard("KPI", "Crimson Product Portfolio",),
              SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Spacer(),
                  Container(
                    width: 130,
                    height: 40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                           backgroundColor: Color(0xFFEC1940),
                          ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.remove_red_eye_outlined, 
                              color: Colors.white,
                              size: 14,
                            ),
                            // Image.asset("assets/icons/eye_2.png"),
                            SizedBox(width: 10,),
                            const Text(
                              'View Details',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Nunito-Medium', 
                                color: Color(0xFFFAFAFA)
                              ),
                            ),
                          ],
                        ),
                    ),
                  ),
                  
                  Spacer(),
                  Container(
                    width: 130,
                    height: 40,
                    child: OutlinedButton(
                      
                        style:  OutlinedButton.styleFrom(
                              side: BorderSide(
                                width: 1.0, 
                                color: Color(0xFFEC1940), 
                              ),
                              backgroundColor: Colors.white,
                              ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.edit_outlined, 
                              color: Color(0xFFEC1940),
                              size: 14,
                              ),
                            // Image.asset("assets/icons/pencil_2.png"),
                            SizedBox(width: 10,),
                            const Text(
                              'Edit', 
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Nunito-Medium', 
                                color: Color(0xFFEC1940),
                              ),
                              ),
                          ],
                        ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Icon(
                      Icons.add_circle, 
                      color: Color(0xFFEC1940),
                      size: 45, 
                      )
                    ),
                  Spacer(),
                ],
              ),

            ],
          ),
        ),
        
      ],
    );
  }
}