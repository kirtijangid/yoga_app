import 'package:flutter/material.dart';
import 'page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 20),
                alignment: Alignment.topCenter,
                child: ClipRRect(
                  borderRadius: BorderRadiusDirectional.horizontal(),
                  child: Image.asset('assets/image1.jpg'),
                ),
              ),
              Expanded(
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Text(
                      'Yoga classes',
                      style: TextStyle(
                          fontSize: 38,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Column(children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 50),
                        child: const Text(
                          ''' Meditation is the key to
     Productivity, Happiness & Longitivity.''',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ]),
              ),
              Expanded(
                  child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      child: Text('Next 2'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Page3()),
                        );
                      },
                    ),
                  )
                ],
              ))
            ]),
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
