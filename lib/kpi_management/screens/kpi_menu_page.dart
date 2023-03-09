import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../widgets/forms_widget.dart';
import '../widgets/kpi_widget.dart';


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
        elevation: 5,
        
        title: Text(
          title,
          ),
        backgroundColor: Color.fromARGB(255, 226, 28, 51),

      ),

      body: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return KpiMenuItems();
             },
        ),
    
    );
  }
}

class KpiMenuItems extends StatelessWidget {
  const KpiMenuItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double? fontscaler = 1.4;
    return Column(
      children: [
        SizedBox(height: 15,),
        Container(
          padding: EdgeInsets.all(10),
          height: 260,
          width: 440,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            children: [
              KpiMenuCard("KPI Group", "Core Individual KPI 2.1",),
              KpiMenuCard("KPI Weightage", "15",),
              KpiMenuCard("KPI", "Crimson Product Portfolio",),
              
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Spacer(),
                  Container(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.remove_red_eye_outlined, color: Colors.white),
                            SizedBox(width: 10,),
                            const Text('View Details',textScaleFactor: 1),
                          ],
                        ),
                    ),
                  ),
                  
                  Spacer(),
                  Container(
                    width: 150,
                    height: 50,
                    child: OutlinedButton(
                      
                        style:  OutlinedButton.styleFrom(
                              side: BorderSide(width: 1.0, color: Colors.red),
                              backgroundColor: Colors.white,
                              ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.edit_outlined, color: Colors.red,),
                            SizedBox(width: 10,),
                            const Text('Edit', textScaleFactor: 1.2, style: TextStyle(color: Colors.red),),
                          ],
                        ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Icon(Icons.add_circle, color: Colors.red,size: 50, )),
                  
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

class KpiMenuCard extends StatelessWidget {
  const KpiMenuCard(
     this.title,
     this.value
  );
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    double? fontscaler = 1.4;
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 17.0,
        left: 23,
        top: 10
        
        ),
      child: Row(
        children: [
          Container(
            width: 150,
          //  color: Colors.red,
            child: Text(title, textScaleFactor: fontscaler)
            ),
          
          Text(value, textScaleFactor: fontscaler)
        ],
      ),
    );
  }
}


