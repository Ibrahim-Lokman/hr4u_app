import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ListCustom extends StatelessWidget {
  const ListCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
  itemCount: 1, // Replace with your desired item count
  itemBuilder: (BuildContext context, int index) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Icon(Icons.favorite_border), // Replace with your desired leading icon
          SizedBox(width: 16.0),
          Expanded(
            child: Text(
              'List item ${index + 1}', // Replace with your desired title
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Icon(Icons.arrow_forward_ios), // Replace with your desired trailing icon
        ],
      ),
    );
  },
);;
  }
}