import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import '../screens/kpi_menu_page.dart';


class kpi_item_status_widget extends StatelessWidget {
  final String title;
  final String status;
  final Color color;

   kpi_item_status_widget(
   this.title, 
   this.status,
   this.color,
);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.red,
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
              padding: EdgeInsets.all(0),
              child: Divider(
                      color: Colors.grey,
                    ),
            ),
            Row(
              children: [
                Text(
                  title,
                  textScaleFactor: 1.2,
                  
                  ),
                Spacer(),
                Container(
                  height: 30,
                  alignment: Alignment.center,
                  child: Chip(  
                    label:  Text(status,  
                    style: TextStyle(color: Colors.white,)),
                    backgroundColor: color,
                  ),
                ),
                Spacer(),
                // Icon(Icons.mail_outlined, color: Colors.red,)
                status == "Reverted" ? badges.Badge(
                      
                      badgeContent: Text('1', style: TextStyle(color: Colors.white),),
                      child: Icon(Icons.mail_outline, color: Colors.red,size: 30,),
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