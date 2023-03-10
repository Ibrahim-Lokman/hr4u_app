import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../widgets/forms_widget.dart';
import '../widgets/kpi_menu_items.dart';
import '../widgets/kpi_widget.dart';
import '../widgets/kpi_menu_card.dart';


class KpiMenuPage extends StatefulWidget {
  static const routeName = '/view-kpi-menu-details';
  const KpiMenuPage({super.key,});
  @override
  State<KpiMenuPage> createState() => _KpiMenuPageState();
}

class _KpiMenuPageState extends State<KpiMenuPage> {
  @override
  Widget build(BuildContext context) {

    final String title = ModalRoute.of(context)!.settings.arguments as String;
    
    return Scaffold(
      //resizeToAvoidBottomInset: false,
 
      appBar: AppBar(
        centerTitle: true,
        //elevation: 5,
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontFamily: 'Nunito-Medium',),
          ),
        backgroundColor:Color(0xFFEC1940),

      ),

      body: Padding(
        padding: const EdgeInsets.only(
          top : 23,
          left : 20,
          right : 20,
          bottom : 20
        ),
        child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return KpiMenuItems();
               },
          ),
      ),
    
    );
  }
}
