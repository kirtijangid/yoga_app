import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Yoga Workout'),
      ),
      body: Column(children: [
        Container()
      ],),
    );
  }
}
