import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:hr4u_app/kpi_management/widgets/pms_planning_page_widgets/alert_dialogs/reverted_message_dialog.dart';
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
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.8058, 
            child: Divider(
                    color: Colors.grey,
                  ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 15
                  ),
                width: MediaQuery.of(context).size.width*0.3536,
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
              SizedBox(width: 10,),
              Container(
                margin: EdgeInsets.all(5),
               // color: Colors.red,
              height: 30, //
              //  alignment: Alignment,
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
              kpiStatusString == "Reverted" 
              ? badges.Badge(
                    badgeContent: Text(
                      '1', 
                      style: TextStyle(
                        color: Colors.white
                        ),
                      ),
                    //child: Image.asset("assets/icons/message.png"),
                    child: GestureDetector(
                      
                      onTap: (){
                        showDialog(
                            context: context, builder: (context) => ShowRevertedMessage()
                          );
                        },
                      child: Container(
                        
                        padding: EdgeInsets.only(
                          left:5,
                          ),
                        child: Icon(
                        
                          Icons.mail_outline, 
                          color:Color(0xFFEC1940),
                          size: 30,
                                          
                        ),
                      ),
                    ),
                   )
               : Spacer(),
              Spacer(),
              Spacer(),
          
              Padding(
                padding: const EdgeInsets.only(right: 22),
                child: Icon(
                  Icons.arrow_forward_ios, 
                  size: 12,
                  ),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}