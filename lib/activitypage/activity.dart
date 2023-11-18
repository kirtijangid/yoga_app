import 'dart:math';

import 'package:flutter/material.dart';
import 'package:yogmantra/bottomnavigation.dart';

class Activity extends StatefulWidget {
  const Activity();

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double? bmi;
  String errorText = '';
  String status = '';

  void calculateBMI() {
    final double? height = double.tryParse(_heightController.value.text);
    final double? weight = double.tryParse(_weightController.value.text);

    if (height == null || weight == null) {
      setState(() {
        errorText = "Please enter your Height and Weight";
      });
      return;
    }

    if (height <= 0 || weight <= 0) {
      setState(() {
        errorText = "Your Height and Weight must be positive numbers";
      });
      return;
    }

    setState(() {
      bmi = weight / pow((height / 100), 2);
      if (bmi! < 18.5) {
        status = "Underweight";
      } else if (bmi! > 18.5 && bmi! < 25) {
        status = 'Normal weight';
      } else if (bmi! > 25 && bmi! < 30) {
        status = 'Pre-Obesity';
      } else if (bmi! > 30 && bmi! < 35) {
        status = 'Obesity class 1';
      } else if (bmi! > 35 && bmi! < 40) {
        status = 'Obesity class 2';
      } else {
        status = 'Obesity class 3';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Activity',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      'Starts | today',
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Image.asset('assets/kcal2.jpg'),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        TextField(
                          controller: _heightController,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              labelText: 'Height (cm)',
                              suffixText: 'centimeters'),
                        ),

                        // const SizedBox(
                        //   height: 20,
                        // ),

                        TextField(
                          controller: _weightController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Weight(Kg)',
                               suffixText: 'kilograms'
                               ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ElevatedButton(
                              onPressed: calculateBMI,
                              child: const Text('Calculate'),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 30,
                        ),

                        Text(errorText),

                        // const SizedBox(
                        //   height: 20,
                        // ),

                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 300,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          border: Border.all(),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(bmi==null? '00.00' : bmi!.toStringAsFixed(2),
                                    style: TextStyle(
                                      fontSize: 60,
                                      color:
                                status == 'Underweight' ? Colors.blue
                                    : status == 'Normal weight' ? Colors.green
                                    : status == 'Pre-Obesity' ? Colors.yellow.shade700
                                    : status == 'Obesity class 1' ? Colors.orange
                                    : status == 'Obesity class 2' ? Colors.deepOrangeAccent
                                    : status == 'Obesity class 3' ? Colors.red
                                    : null
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),

                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(status,
                                    style: TextStyle(
                                      color:
                                      status == 'Underweight' ? Colors.blue
                                    : status == 'Normal weight' ? Colors.green
                                    : status == 'Pre-Obesity' ? Colors.yellow.shade700
                                    : status == 'Obesity class 1' ? Colors.orange
                                    : status == 'Obesity class 2' ? Colors.deepOrangeAccent
                                    : status == 'Obesity class 3' ? Colors.red
                                    : null
                                    ),
                                    ),
                                    const Text('BMI',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black45
                                    ),
                                    )
                                  ],
                                  ),
                                  ],
                                ),
                                Container(
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: Colors.black45,
                                    borderRadius: BorderRadius.circular(50),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 15,  //soften the shadow
                                        spreadRadius: 1,  //extend the shadow
                                        offset: Offset(5, 5),
                                      ),
                                    ],
                                    ),
                                ),

                                const SizedBox(
                                  height: 30,
                                ),
                                const Text('Nutritional Status',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16
                                ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 25,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(15)
                                          ),
                                          color: Colors.blue
                                        ),
                                        child: const Center(
                                          child: Text('Underweight',
                                           style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.white
                                           )),
                                        ),
                                      ),
                                    ),
                                    
                                    Expanded(child: Container(
                                      height: 25,
                                      color: Colors.green,
                                      child: const Center(
                                        child: Text('Normal \nweight',
                                        style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.white
                                        ),),
                                      ),
                                    ),
                                    ),

                                    Expanded(child: Container(
                                      height: 25,
                                      color: Colors.yellow.shade700,
                                      child: const Center(
                                        child: Text('Pre-Obesity',
                                        style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.white
                                        ),),
                                      ),
                                    ),
                                    ),

                                    Expanded(child: Container(
                                      height: 25,
                                      color: Colors.orange,
                                      child: const Center(
                                        child: Text('Obesity \nclass 1',
                                        style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.white
                                        ),),
                                      ),
                                    ),
                                    ),

                                    Expanded(child: Container(
                                      height: 25,
                                      color: Colors.deepOrangeAccent,
                                      child: const Center(
                                        child: Text('Obesity \nclass 2',
                                        style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.white
                                        ),),
                                      ),
                                    ),
                                    ),

                                    Expanded(child: Container(
                                      height: 25,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.horizontal(
                                        right: Radius.circular(15),
                                        
                                        ),
                                      color: Colors.red,
                                      ),
                                      child: const Center(
                                        child: Text('Obesity \nclass 3',
                                        style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.white
                                        ),
                                        ),
                                      ),
                                    ),
                                    ),

                                  ],
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('00', style: TextStyle(color: Colors.transparent),),
                                    Text('18.5'),
                                    Text('25.0'),
                                    Text('30.0'),
                                    Text('35.0'),
                                    Text('40.0'),
                                    Text('00', style: TextStyle(color: Colors.transparent)
                                    ),
                                  ],
                                )
                              ],
                            ),
                            ),
                        ),
                        
                      ],
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    child: Image.asset('assets/calendar.png'),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
      resizeToAvoidBottomInset: false,
       bottomNavigationBar: BottomBar(2),
    );
  }
}



