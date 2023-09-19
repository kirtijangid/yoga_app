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
          
        ),
      ),
    );
  }
}
