import 'package:flutter/material.dart';
import 'package:hr4u_app/kpi_management/models/kpi_provider.dart';
import 'package:hr4u_app/kpi_management/screens/view_kpi_details_screen.dart';
import 'package:provider/provider.dart';
import './kpi_management/screens/home_page.dart';

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
          primarySwatch: Colors.red,
        ),
        home: const HomePage(),

         routes: {
            ViewKpiDetailsScreen.routeName: (ctx) => ViewKpiDetailsScreen(),
          }
      ),
    );
  }
}
