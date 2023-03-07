import 'package:flutter/material.dart';
import 'package:hr4u_app/kpi_management/widgets/view_kpi.dart';
import '../widgets/colored_tab_bar.dart';
import '../widgets/create_kpi_form.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key,});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    
    final _kTabPages = <Widget>[
      ViewKpiWidget(),
      CreateKPIForm(onSave: (){},),
    ];

     final TabBar tabbar = TabBar(
                    labelColor: Colors.red,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(icon: Image.asset("assets/chat-arrow-grow_1.png"), text: 'View KPI'),
                      Tab(icon: Image.asset("assets/add_1.png"), text: 'Create new KPI'),
                    ],
                  );

    
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,


        drawer: Drawer(),

        appBar: AppBar(
          centerTitle: true,
          elevation: 5,
          
          title: const Text(
            'KPI Management',
            ),
          backgroundColor: Color.fromARGB(255, 226, 28, 51),

          //
          bottom: ColoredTabBar(Colors.white, tabbar)
        ),

        body: TabBarView(
          children: _kTabPages,
        ),
      ),
    );
  }
}