import 'package:flutter/material.dart';
import 'package:yogmantra/Dashboard/slider.dart';


class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

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
                margin: EdgeInsets.only(top: 60, bottom: 20),
                alignment: Alignment.topCenter,
                child: ClipRRect(
                  borderRadius: BorderRadiusDirectional.horizontal(),
                  child: Image.asset('assets/image3.png'),
                ),
              ),
              Expanded(
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Text(
                      'Practice Yoga ',
                      style: TextStyle(
                          fontSize: 40,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Column(children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 50),
                        child: const Text(
                          ''' Do your practice of physical exercise and
          relaxation make healthy.''',
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
                      child: Text(' Next   >> '),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ImageSlider()),
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


