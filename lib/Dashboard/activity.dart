import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity();

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
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
                  
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
