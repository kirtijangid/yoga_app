import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 229, 229),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        shadowColor: Color.fromARGB(255, 80, 27, 215),
        title: const Text("Yoga"),
      ),
      body: Stack(
        children: [
          Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50, bottom: 50),
                    alignment: Alignment.topCenter,
                    child: ClipRRect(
                      borderRadius: BorderRadiusDirectional.horizontal(),
                      child: Image.asset('assets/image1.jpg'),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Text(
                      'Yoga classes',
                      style: TextStyle(
                        fontSize: 20,
                           fontStyle: FontStyle.italic),
                    ),
                  ))
                ],
              ))
        ],
      ),
    ));
  }
}
