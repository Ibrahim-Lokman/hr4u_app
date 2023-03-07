import 'package:flutter/material.dart';


class Kpi with ChangeNotifier {
  final String id;
  final String title;
  final String year;
  final String defination;
  final String strategicLink;
  final String note;

  final int needImprovement;
  final int wellDone;
  final int exceedExpectation;
 

Kpi({
    required this.id,
    required this.title,
    required this.year,
    required this.defination,
    required this.strategicLink,
    required this.note,

    required this.needImprovement,
    required this.wellDone,
    required this.exceedExpectation,
  });

}