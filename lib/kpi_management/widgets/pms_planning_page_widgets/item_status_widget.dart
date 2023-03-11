import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import '../../providers/status_enum.dart';

import '../../screens/kpi_menu_page.dart';


class ItemStatusWidget extends StatelessWidget {
  final String title;
  final kpiStatus status;

   ItemStatusWidget(
   this.title, 
   this.status,
);

  Color getcolor(String value) {
    switch(value)
        {
          case "Accepted" :
              return Color(0xFF19B269);
              break;
          case "Pending" :
              return Color(0xFFF15E2B);
              break;
          case "Reverted":
              return Color(0xFFFF1E1E);
              break;
          case "Open" :
              return Color(0xFF1967D2);
              break;
          default :
              return Color(0xFFF15E2B);
              break;
    }
}

  @override
  Widget build(BuildContext context) {
    String kpiStatusString = status.toString().substring(10);
    return InkWell(
      splashColor: Color(0xFFEC1940),
      onTap: (){
        Navigator.of(context).pushNamed(
                  KpiMenuPage.routeName, 
                  arguments: title,
                  );
      },
      child: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
        child: Column(
          children: [
            Container(
              width: 410, 
             // padding: EdgeInsets.all(0),
              child: Divider(
                      color: Colors.grey,
                    ),
            ),
            Row(
              children: [
                Container(
                  width: 140,
                  child: Row(
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Nunito-Regular',
                              ),  
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: 30,
                  alignment: Alignment.center,
                  child: Chip(  
                    label:  Text(
                    kpiStatusString,  
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Nunito-SemiBold', 
                      color: Colors.white
                      ),
                    ),
                    backgroundColor: getcolor(kpiStatusString),
                  ),
                ),
                Spacer(),

                kpiStatusString == "Reverted" ? badges.Badge(
                      badgeContent: Text(
                        '1', 
                        style: TextStyle(
                          color: Colors.white
                          ),
                        ),
                      //child: Image.asset("assets/icons/message.png"),
                      child: Icon(
                        Icons.mail_outline, 
                        color:Color(0xFFEC1940),
                        size: 30,
                      ),
                     ) : Spacer(),
                Spacer(),
                Spacer(),
                Icon(Icons.arrow_forward_ios, size: 15,),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}