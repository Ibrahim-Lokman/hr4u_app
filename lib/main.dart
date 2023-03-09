import 'package:flutter/material.dart';
import 'package:hr4u_app/kpi_management/models/kpi_provider.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => KPIProvider(),
        ),
        
      ],
      child: MaterialApp(
        
        title: 'HR4U',
        theme: ThemeData(
          fontFamily: 'Nunito',
          primarySwatch: Colors.red,
          canvasColor: Color.fromARGB(255, 211, 211, 211),
        ),
        home: const PmsPlanningPage(),

         routes: {
            KpiMenuPage.routeName: (ctx) => KpiMenuPage(),
          }
      ),
    );
  }
}
