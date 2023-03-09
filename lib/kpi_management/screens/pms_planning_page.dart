import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../widgets/forms_widget.dart';
import '../widgets/kpi_widget.dart';


class PMSPlanningPage extends StatefulWidget {
  const PMSPlanningPage({super.key,});
  @override
  State<PMSPlanningPage> createState() => _PMSPlanningPageState();
}

class _PMSPlanningPageState extends State<PMSPlanningPage> {
  final List<String> years = [
  '2020',
  '2021',
  '2022',
  '2023',
 ];
  String? selectedValue;
 final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {


    
    return Scaffold(
      resizeToAvoidBottomInset: false,


      drawer: Drawer(),

      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        
        title: const Text(
          'PMS Planning',
          ),
        backgroundColor: Color.fromARGB(255, 226, 28, 51),

      ),

      body: Column(
        children: [
           Container(
              padding: EdgeInsets.only(
                top: 33,
                bottom: 23,
                left: 19,
                right: 20
                ),
              color: Colors.white,
              width: 500,
              child: DropdownButtonFormField2(
              decoration: InputDecoration(

                labelText: "Select Year",
                border: OutlineInputBorder(),
              ),
             // isExpanded: true,
              items: years.map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                ),
              )).toList(),
    
              onSaved: (value) {
                selectedValue = value.toString();
              },

              onChanged: (value) {
                setState(() {
                selectedValue = value as String;
                });
              },
             
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black45,
                ),
              ),
            ),
            ),
          SizedBox(height: 12,),

          KPI_widget(),
          SizedBox(height: 12,),
          Forms_widget(),
          SizedBox(height: 12,),
          Container(
            
            color: Colors.white,
            width: 500,
            padding: EdgeInsets.all(20),
            child: Container(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Send bulk to supervisor', textScaleFactor: 1.5),
              ),
            ),
          ),

        
        ],
      ),
    );
  }
}


