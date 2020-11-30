import 'package:bmi_calculator_app/result.dart';
import 'package:flutter/material.dart';
import 'myhomePage.dart';
import 'result.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
 //     initialRoute: '/',
     /* routes: {
        '/':(context) =>MyHomePage(),
        '/result':(context)=>Result(),
      },*/
    );
  }
}


