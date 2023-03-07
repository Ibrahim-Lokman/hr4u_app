import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hr4u_app/kpi_management/models/kpi_provider.dart';
import 'package:provider/provider.dart';

import 'kpi_item_view_card.dart';
import 'list_custom.dart';



class ViewKpiWidget extends StatefulWidget {
  const ViewKpiWidget({super.key});

  @override
  State<ViewKpiWidget> createState() => _ViewKpiWidgetState();
}

class _ViewKpiWidgetState extends State<ViewKpiWidget> {

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
    final kpiData =  Provider.of<KPIProvider>(context);
    final kpiList = kpiData.items;
    return Column(
      children: <Widget>[
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(10),
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

            Container(
              height: 500,
              width: 450,
              color: Color.fromARGB(255, 251, 221, 231),
              child: ListView.builder(
                  itemCount: kpiList.length,
                  itemBuilder: (context,index) => 
                    ChangeNotifierProvider.value (
                      value: kpiList[index],
                      child: kpiItemViewCard(),
                    ),
                    
                
              ),
            ),
      ],
    );
  }
}

