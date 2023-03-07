import 'package:flutter/material.dart';

class ViewKpiDetailsScreen extends StatelessWidget{
  static const routeName = '/view-kpi-details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 5,
          
          title: const Text(
            'View Kpi',
            ),
          backgroundColor: Color.fromARGB(255, 226, 28, 51),
          
        ),
    );
  }
}