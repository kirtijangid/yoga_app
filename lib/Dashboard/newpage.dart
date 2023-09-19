import 'package:flutter/material.dart';
import 'package:yogmantra/Dashboard/activity.dart';

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

  List<String> assets2 = [
    'assets/hathyoga1.jpg',
    'assets/poweryoga1.jpg',
    'assets/legyoga1.jpg'
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
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        'Winter Yoga',
                        style: TextStyle(
                          fontSize: 15,
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
                height: 320,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  itemCount: assets.length,
                  physics: BouncingScrollPhysics(),
                  padEnds: false,
                  controller:
                      PageController(initialPage: 0, viewportFraction: 0.9),
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
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 10, left: 20),
                child: Text(
                  'Yoga Styles',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                  ),
                ),
                alignment: Alignment.bottomLeft,
              ),
              SizedBox(
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: assets.length,
                  padEnds: false,
                  pageSnapping: false,
                  reverse: false,
                  controller:
                      PageController(initialPage: 2, viewportFraction: 0.7),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(8),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          //  color: color[index],
                          borderRadius: BorderRadius.circular(25)),
                      child: Image.asset(
                        assets2[index % assets2.length],
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 10, left: 20),
                child: Text(
                  'Body Fitness',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                alignment: Alignment.bottomLeft,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(
                          bottom: 20,
                          right: 20,
                          left: 20,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        child: Image.asset('assets/abs.jpg')),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                      right: 20,
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            'Abs Workout',
                            style: TextStyle(
                                fontSize: 15,
                                 fontWeight: FontWeight.bold),
                          ),
                          alignment: Alignment.topLeft,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 10,
                          ),
                          child: Text('''This leads to better 
balance and steadiness,
 also called stability.'''),
                        )
                      ],
                    ),
                  ),
                ]),
              ),

             Align(
                alignment: Alignment.bottomCenter,
                child: Row(children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(
                          bottom: 20,
                          right: 20,
                          left: 20,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        child: Image.asset('assets/glutes.jpg')),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                      right: 20,
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            'Glutes/Butts Workout',
                            style: TextStyle(
                                fontSize: 15,
                                 fontWeight: FontWeight.bold),
                          ),
                          alignment: Alignment.topLeft,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 10,
                          ),
                          child: Text('''Strong glutes improve 
  balance.'''),
                        )
                      ],
                    ),
                  ),
                ]),
              ),

               Align(
                alignment: Alignment.bottomCenter,
                child: Row(children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(
                          bottom: 20,
                          right: 20,
                          left: 20,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        child: Image.asset('assets/legs.jpg')),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                      right: 20,
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            'Legs Workout',
                            style: TextStyle(
                                fontSize: 15,
                                 fontWeight: FontWeight.bold),
                          ),
                          alignment: Alignment.topLeft,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 10,
                          ),
                          child: Text('''Makes joints stronger.
Strengthens the core.'''),
                        )
                      ],
                    ),
                  ),
                ]),
              ),

               Align(
                alignment: Alignment.bottomCenter,
                child: Row(children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(
                          bottom: 20,
                          right: 20,
                          left: 20,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        child: Image.asset('assets/back.jpg')),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                      right: 10,
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            'Back Workout',
                            style: TextStyle(
                                fontSize: 15,
                                 fontWeight: FontWeight.bold),
                          ),
                          alignment: Alignment.topLeft,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 10,
                          ),
                          child: Text('''Improve Spinal Stability.
Build Lean Muscle Mass.'''),
                        )
                      ],
                    ),
                  ),
                ]),
              ),

             Align(
                alignment: Alignment.bottomCenter,
                child: Row(children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(
                          bottom: 20,
                          right: 20,
                          left: 20,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        child: Image.asset('assets/chest.jpg')),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                      right: 10,
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            'Chest Workout',
                            style: TextStyle(
                                fontSize: 15,
                                 fontWeight: FontWeight.bold),
                          ),
                          alignment: Alignment.topLeft,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 10,
                          ),
                          child: Text('''Improve posture, benefit
breathing and support 
the surrounding muscles 
and joints.'''),
                        )
                      ],
                    ),
                  ),
                ]),
              ),

            ],
          ),
        ),
      ),

      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
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
              MaterialPageRoute(builder: (context) => const Activity()),
             );
          }),
    );
  }
}


