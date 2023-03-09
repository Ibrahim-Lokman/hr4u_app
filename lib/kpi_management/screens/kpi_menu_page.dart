import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../widgets/forms_widget.dart';
import '../widgets/kpi_widget.dart';


class KpiMenuPage extends StatefulWidget {
  const KpiMenuPage({super.key,});
  @override
  State<KpiMenuPage> createState() => _KpiMenuPageState();
}

class _KpiMenuPageState extends State<KpiMenuPage> {



  @override
  Widget build(BuildContext context) {


    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        
        title: const Text(
          'Core Individual KPIs',
          ),
        backgroundColor: Color.fromARGB(255, 226, 28, 51),

      ),

      body: Column(
        children: [
          SizedBox(height: 15,),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
        
              return SingleChildScrollView(
                physics: ScrollPhysics(),
                child: KpiMenuItems()
                );
             },
        ),
           
        
        ],
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
    return Column(
      children: [
        SizedBox(height: 15,),
        Container(
          padding: EdgeInsets.all(10),
          height: 250,
          width: 440,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(17.0),
                child: Row(
                  children: [
                    Container(
                      width: 150,
                    //  color: Colors.red,
                      child: Text("KPI Group", textScaleFactor: 1.2,)
                      ),
                    
                    Text("Core Individual KPI 2.1", textScaleFactor: 1.2)
                  ],
                ),
              ),
             Padding(
               padding: const EdgeInsets.all(17.0),
               child: Row(
                  children: [
                    Container(
                      width: 150,
                     // color: Colors.red,
                      child: Text("KPI Weightage", textScaleFactor: 1.2,)
                      ),
                    
                    Text("15", textScaleFactor: 1.2)
                  ],
                ),
             ),
              Padding(
                padding: const EdgeInsets.all(17.0),
                child: Row(
                  children: [
                    Container(
                      width: 150,
                      child: Text("KPI", textScaleFactor: 1.2,)
                      ),
                    
                    Text("Crimson Product Portfolio", style: TextStyle(fontSize: 12),)
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Spacer(),
                  Container(
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () {},
                        
                        child: const Text('View Details'),
                    ),
                  ),
                  
                  Spacer(),
                  Container(
                    width: 150,
                    child: ElevatedButton(
                        
                        onPressed: () {},
                        child: const Text('Edit'),
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.add_circle),
                  
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


