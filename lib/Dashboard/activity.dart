import 'dart:math';

import 'package:flutter/material.dart';

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
                    child: Text(
                      'Starts | today',
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        selectedItemColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            //backgroundColor: Colors.blueGrey,
            icon: Icon(Icons.home, color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: "Seasonal Yoga",
            // backgroundColor: Colors.blueGrey,
            icon: Icon(Icons.search, color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: "Activity",
            // backgroundColor: Colors.blueGrey,
            icon: Icon(Icons.bar_chart, color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            // backgroundColor: Colors.blueGrey,
            icon: Icon(Icons.settings, color: Colors.black),
          ),
        ],
        onTap: (int indexOfItem) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Settings()),
          );
        },
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings();

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
