import 'package:flutter/material.dart';


class PMSPlanningPage extends StatefulWidget {
  const PMSPlanningPage({super.key,});
  @override
  State<PMSPlanningPage> createState() => _PMSPlanningPageState();
}

class _PMSPlanningPageState extends State<PMSPlanningPage> {

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
            height: 200,
          ),
          Container(
            height: 200,
          ),

        ],
      ),
    );
  }
}