import 'package:flutter/material.dart';

class SeasonalYoga extends StatefulWidget {
  const SeasonalYoga({Key? key}) : super(key: key);

  @override
  State<SeasonalYoga> createState() => _SeasonalYogaState();
}

class _SeasonalYogaState extends State<SeasonalYoga> {
  List<String> assets = [
    'assets/winteryoga1.jpg',
    'assets/fallyoga1.jpg',
    'assets/summerseason1.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text('Seasonal Yoga',
        style: TextStyle(
          color: Colors.black),),
      ),
      body: 
    );
  }
}
