import 'package:flutter/material.dart';
import 'package:hr4u_app/kpi_management/screens/kpi_menu_page.dart';
import 'package:provider/provider.dart';
import 'kpi_management/screens/pms_planning_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'HR4U',
      theme: ThemeData(
        fontFamily: 'Nunito',
       // primarySwatch: Color(0xFFEC1940),
        primaryColor:Color(0xFFEC1940),
        canvasColor: Color(0xFFE5E5E5),
      ),
      home: const PmsPlanningPage(),

       routes: {
          KpiMenuPage.routeName: (ctx) => KpiMenuPage(),
          
        }
    );
  }
}
