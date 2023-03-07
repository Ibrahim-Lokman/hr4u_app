import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/kpi.dart';
import '../screens/view_kpi_details_screen.dart';

class kpiItemViewCard extends StatelessWidget {
  const kpiItemViewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final kpi = Provider.of<Kpi>(context, listen : false);
    return GestureDetector(
      child: Card(
        
        child: ListTile(
          onTap: (){
        
                Navigator.of(context).pushNamed(
                  ViewKpiDetailsScreen.routeName, 
                  arguments: kpi.id,
                  );
              
         },
          leading: const Icon(Icons.list),
          trailing: Icon(Icons.arrow_forward_ios),
          title: Text(kpi.title)),
      ),
    );
  }
}