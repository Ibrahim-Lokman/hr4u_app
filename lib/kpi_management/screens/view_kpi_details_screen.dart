import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hr4u_app/kpi_management/models/kpi_provider.dart';
import 'package:provider/provider.dart';

import '../models/kpi.dart';

class ViewKpiDetailsScreen extends StatelessWidget{
  static const routeName = '/view-kpi-details';
  final List<String> years = [
  '2020',
  '2021',
  '2022',
  '2023',
 ];

  String? selectedValue;
  final _formKey = GlobalKey<FormState>();
  String _kpiName = '';
  String _selectedYear = '';
  String _kpiDefinition = '';
  String _strategicLink = '';
  String _commentNote = '';
  String _needImprovement = '';
  String _wellDone = '';
  String _exceedsExpectation = '';

  @override
  Widget build(BuildContext context) {
    final kpiId = ModalRoute.of(context)!.settings.arguments as String;
    final Kpi kpiItem = Provider.of<KPIProvider>(context, listen: false).findById(kpiId);

    return Scaffold(

      resizeToAvoidBottomInset: false,

      appBar: AppBar(          
          centerTitle: true,
          elevation: 5,
          
          title: const Text(
            'View KPI',
            ),
          backgroundColor: Color.fromARGB(255, 226, 28, 51),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                right: 40,
                ),
              child: Icon(
                
                Icons.edit,
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 25,
              ),
              child: Icon(
                Icons.delete
              ),
            ),
          ],
          
        ),
        body: Container(
          padding:  EdgeInsets.all(15),
          margin: EdgeInsets.all(20),
          color: Colors.white,
          width: 450,
          child: Form(
        
              key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
    
                  children: [
                    TextFormField(
                      enabled: false,
                      initialValue: kpiItem.title,
                      decoration: InputDecoration(
                         labelText: 'KPI Name',
                         border: OutlineInputBorder(),               
                                ),        
                      ),
                    SizedBox(height: 12),
    
                    DropdownButtonFormField2(
                      value: kpiItem.year,
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
             
                      iconStyleData: const IconStyleData(
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black45,
                        ),
                     ),
                    ),
    
                    SizedBox(height: 12),
            
                    TextFormField(
                      enabled: false,
                      initialValue: kpiItem.defination,
                      maxLines: 2,
                      decoration: InputDecoration(
                        labelText: 'KPI Definition',
                        border: OutlineInputBorder(),
                      ),
                   ),
    
                    SizedBox(height: 12),
            
                    TextFormField(
                      enabled: false,
                      initialValue: kpiItem.strategicLink,
                      decoration: InputDecoration(
                      labelText: 'Strategic Link',
                      border: OutlineInputBorder(),
                    ),
                 ),
    
            SizedBox(height: 12),     
            
            TextFormField(
              enabled: false,
              initialValue: kpiItem.note,
              decoration: InputDecoration(
                labelText: 'Comment/Note',
                border: OutlineInputBorder(),
              ),
            ),
    
            SizedBox(height: 12),
    
            TextFormField(
              enabled: false,
              initialValue: kpiItem.needImprovement.toString(),
              decoration: InputDecoration(
                labelText: 'Need Improvement',
                border: OutlineInputBorder(),
              ),
            ),
    
            SizedBox(height: 12),
    
            TextFormField(
              enabled: false,
              initialValue: kpiItem.wellDone.toString(),
              decoration: InputDecoration(
                labelText: 'Well done',
                border: OutlineInputBorder(),
              ),
            ),
    
            SizedBox(height: 12),
    
            TextFormField(
              enabled: false,
              initialValue: kpiItem.exceedExpectation.toString(),
              decoration: InputDecoration(
                labelText: 'Exceeds Expectation',
                border: OutlineInputBorder(),
              ),
            ),
      ],
      ),
    ),
    ),
    );
  }
}