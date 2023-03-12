import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hr4u_app/kpi_management/widgets/pms_planning_page_widgets/Submit_all_alert_dialog.dart';

import '../widgets/pms_planning_page_widgets/forms_widget.dart';
import '../widgets/pms_planning_page_widgets/kpi_widget.dart';


class PmsPlanningPage extends StatefulWidget {
  const PmsPlanningPage({super.key,});
  @override
  State<PmsPlanningPage> createState() => _PmsPlanningPageState();
}

class _PmsPlanningPageState extends State<PmsPlanningPage> {
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
          style: TextStyle(fontSize: 18, fontFamily: 'Nunito-Medium'),
 
          ),
        backgroundColor: Color(0xFFEC1940),

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
              width: 490,
              child: DropdownButtonFormField2(
              decoration: InputDecoration(

                labelText: "Select Year",
                labelStyle: TextStyle(
                 fontSize: 12,
                 fontFamily: 'Nunito-Medium', 
                 letterSpacing: 0.4,
                ),
              
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

          KpiWidget(),
          SizedBox(height: 12,),
          FormsWidget(),
          SizedBox(height: 12,),
          Container(
            
            color: Colors.white,
            width: 500,
            padding: EdgeInsets.all(20),
            child: Container(
              height: 50,
              
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFEC1940),
                ),
                onPressed: () {
                  showDialog(
                              context: context, builder: (context) => SubmitAllAlertDialog()
                            );
                },
                child: const Text(
                  'Send bulk to supervisor', 
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Nunito-Bold', 
                    ),
                ),
              ),
            ),
          ),

        
        ],
      ),
    );
  }
}


