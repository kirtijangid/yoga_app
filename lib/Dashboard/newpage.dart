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

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Seasonal Yoga',
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
                      'Winter Yoga',
                      style: TextStyle(
                        fontSize: 10,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                itemCount: assets.length,
                physics: BouncingScrollPhysics(),
                controller:
                    PageController(initialPage: 0,
                     viewportFraction: 0.9),
                onPageChanged: (value) {
                  currentIndex = value;
                  setState(() {});
                },
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(8),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        //color: Color[index],
                        borderRadius: BorderRadius.circular(25)),
                    child: Image.asset(
                      assets[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
