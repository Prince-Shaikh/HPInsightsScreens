import 'package:flutter/material.dart';
import 'package:insight_screens/Screens/insights.dart';

void main() => runApp(Insights());

class Insights extends StatelessWidget {
  const Insights({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: InsightsScreen(),
    );
  }
}