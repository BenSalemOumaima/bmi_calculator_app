import 'package:bmi_calculator_app/myhomePage.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  Result(@required this.bmi,@required this.result,@required this.txtResult);

  final String bmi;
  final String result ;
  final String txtResult;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text('Your Result',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Container(
            height: 550,
            width: 600,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xFF1D1E33),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                SizedBox(height: 60),
                Text(result,style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold)),
                SizedBox(height: 100),
                Text(bmi,style: TextStyle(color: Colors.white,fontSize: 90,fontWeight: FontWeight.bold)),
                SizedBox(height: 50),
                Text(txtResult,style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w400))
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              //heroTag: 'calcul',
              child:
              Center(child: Text('RE-CALCULATE',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold))),
              height: 75,
              width: 400,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.pink[800],
              ),
            ),
          ),
        ],
          ),
    );
  }
}
