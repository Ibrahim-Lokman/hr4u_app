import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../widgets/pms_planning_page_widgets/alert_dialogs/submit_all_alert_dialog.dart';
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
    
    double deviceHeigth = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    
    final appBar =  AppBar(
        centerTitle: true,
        elevation: 5,
        title: const Text(
          'PMS Planning',
          style: TextStyle(fontSize: 18, fontFamily: 'Nunito-Medium'),
 
          ),
        backgroundColor: Color(0xFFEC1940),

      );
   
   
   
    return Scaffold(
      resizeToAvoidBottomInset: false,

      drawer: Drawer(),

      appBar: appBar,

      body: SingleChildScrollView(
        child: Column(
          children: [
             Container(
              height: deviceHeigth > 600 ? (MediaQuery.of(context).size.height - appBar.preferredSize.height - MediaQuery.of(context).padding.top)*0.1325 : 100,
              color: Colors.white,
               padding: EdgeInsets.only(
                top: 17,
                bottom: 15,
                left: 21,
                right: 20
                ),
               child: DropdownButtonFormField2(
               value: "2023",
               decoration: InputDecoration(
                 labelText: "Select Year",
                 labelStyle: TextStyle(
                  fontSize: 16, //12
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
            SizedBox(
                height: (MediaQuery.of(context).size.height - appBar.preferredSize.height - MediaQuery.of(context).padding.top)*0.02,
      
              ),
            
            Container(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              height: (MediaQuery.of(context).size.height - appBar.preferredSize.height - MediaQuery.of(context).padding.top)*0.38 ,
              width: (MediaQuery.of(context).size.width)*0.884,
              child: KpiWidget()
              ),
            
            SizedBox(height: 15,),
            
            Container(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              height: (MediaQuery.of(context).size.height - appBar.preferredSize.height - MediaQuery.of(context).padding.top)*0.23 ,
              width: (MediaQuery.of(context).size.width)*0.884,
              child: FormsWidget()
              ),
              
            Container( 
              margin: EdgeInsets.only(top: 40),
              color: Colors.white,
              width: (MediaQuery.of(context).size.width),
              padding: EdgeInsets.only(
                top: 33,
                bottom: 33,
                right: 25,
                left: 25,
                ),
              child: Container(
                height: (MediaQuery.of(context).size.height - appBar.preferredSize.height - MediaQuery.of(context).padding.top)*0.06,
                width: (MediaQuery.of(context).size.width)*0.884,
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
      ),
    );
  }
}


