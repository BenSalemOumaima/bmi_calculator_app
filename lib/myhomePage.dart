import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'result.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  double slider_heigh_value = 180;
  int counter_weight_value = 30;
  int counter_age_value = 19;
var isPressedMale = false;
var isPressedFeMale = false;

  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        children: [
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  print('male clicked');
                  setState(() {
                    isPressedMale= !isPressedMale;
                  });
                 // isPressed= !isPressed;
                },
                child: Container(
                  height: 190,
                  width: 170,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: isPressedMale ? Color(0xFF1D1E33) : Colors.white30,
                    //color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 100,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'MALE',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      )
                    ],

                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('female clicked');
                  setState(() {
                    isPressedFeMale= !isPressedFeMale;
                  });
                },
                child: Container(
                  height: 190,
                  width: 170,
                  decoration: BoxDecoration(
                    color: isPressedFeMale ? Color(0xFF1D1E33) : Colors.white30,
                    //color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(FontAwesomeIcons.venus,
                        size: 100,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'FEMALE',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Container(
            height: 190,
            width: 370,
            decoration: BoxDecoration(
              color: Color(0xFF1D1E33),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Icon(Icons.pregnant_woman,size: 100,color: Colors.grey,),
                SizedBox(height: 5),
                Text(
                  'HEIGHT',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      slider_heigh_value.round().toString(),
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    Text(
                      'cm',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ],
                ),
                Slider(
                    value: slider_heigh_value,
                    min: 100,
                    max: 200,
                    activeColor: Colors.pink,
                    inactiveColor: Colors.grey,
                    label: slider_heigh_value.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        slider_heigh_value = value;
                        print(slider_heigh_value);
                      });
                    })
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              Container(
                height: 190,
                width: 170,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WEIGHT',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      counter_weight_value.toString(),
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          heroTag:'weigh_add',
                          child: Icon(
                            Icons.add,
                          ),
                          backgroundColor: Colors.grey,
                          tooltip: 'Increment',
                          onPressed: () {
                            setState(() {
                              counter_weight_value++;
                           });
                          }
                          ),

                        SizedBox(width: 10),
                        FloatingActionButton(
                          heroTag: 'weight_remove',
                          child: Icon(
                            Icons.remove,
                          ),
                          //backgroundColor: isPressed ? Colors.green : Colors.blue,
                          backgroundColor: Colors.grey,
                         //   tooltip: 'Increment',
                            onPressed: () {
                              setState(() {
                                counter_weight_value--;
                                //isPressed= !isPressed;

                              });
                            }
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 190,
                width: 170,
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AGE',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      counter_age_value.toString(),
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          heroTag:'age_add',
                          child: Icon(
                            Icons.add,
                          ),
                          backgroundColor: Colors.grey,
                          onPressed: () {
                            setState(() {
                              counter_age_value++;
                            });
                          },
                        ),
                        SizedBox(width: 10),
                        FloatingActionButton(
                          heroTag: 'age',
                          child: Icon(
                            Icons.remove,
                          ),
                          backgroundColor: Colors.grey,
                          onPressed: () {
                            setState(() {
                            counter_age_value--;

                          });
                          },
                      )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: (){
              CalculBMI calBMI = CalculBMI(slider_heigh_value.round(),counter_weight_value);

              Navigator.push(context, MaterialPageRoute(builder: (context) => Result(calBMI._calcul(),calBMI.ResultBMI(),calBMI.textResult() )));

            },
            child: Container(
              //heroTag: 'calcul',
              child:
              Center(child: Text('CALCULATE',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold))),
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

class CalculBMI {

  CalculBMI(this.height, this.weight);

  final int height;
  final int weight;
  double bmi;

  String _calcul() {
    double height = int.parse(this.height.toString()) / 100;
    double carre = height * height;
    bmi = double.parse(
        (int.parse(this.weight.toString()) / carre)
            .toStringAsFixed(1)
    );
    return bmi.toStringAsFixed(1);
  }

  String ResultBMI() {
    if (bmi < 18.5) {
      return "Underweight ";
    } else if (bmi <= 24.9) {
      return "weight normal";
    } else
      return "Overweight ";
  }

  String textResult() {
    if (bmi < 18.5) {
      return "You have a lower than normal body ";
    } else if (bmi <= 24.9) {
      return "You have a normal body";
    } else
      return "You have a higher than normal body  ";
  }
}
