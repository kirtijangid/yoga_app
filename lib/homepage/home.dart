import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:yogmantra/bottomnavigation.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with TickerProviderStateMixin {
  List<String> assets = [
    'assets/beginner2.jpg',
    'assets/intermediate.jpg',
    'assets/advanced2.png'
  ];
  List<String> assets2 = ['assets/sunsalutation3.jpg', 'assets/seated1.jpg'];

  List<String> assets3 = ['assets/standing2.jpg', 'assets/floor1.jpg'];

  final Color = [
    Colors.red,
    Colors.amber,
    Colors.teal,
    Colors.blueGrey,
    Colors.blue
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Yoga Workout'),
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
                        'Challenges',
                        style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 300,
              //   width: MediaQuery.of(context).size.width,
              //   child: PageView.builder(
              //     itemCount: assets.length,
              //     padEnds: false,
              //     pageSnapping: false,
              //     physics: BouncingScrollPhysics(),
              //     reverse: true,
              //     controller:
              //         PageController(initialPage: 3, viewportFraction: 1),
              //     itemBuilder: (context, index) {
              //       return Container(
              //         margin: EdgeInsets.all(8),
              //         clipBehavior: Clip.antiAlias,
              //         decoration: BoxDecoration(
              //           //color: Color[index],
              //           borderRadius: BorderRadius.circular(25),
              //         ),
              //         child: Image.asset(
              //           assets[index],
              //           fit: BoxFit.cover,
              //         ),
              //       );
              //     },
              //   ),
              // ),
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  itemCount: assets.length,
                  physics: BouncingScrollPhysics(),
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
                        fit: BoxFit.cover
                      ),
                    );
                  },
                ),
              ),
              TabPageSelector(
                controller: TabController(
                    length: assets.length,
                    initialIndex: currentIndex,
                    vsync: this),
                selectedColor: Colors.red,
                color: Colors.grey,
                borderStyle: BorderStyle.none,
              ),

              Container(
                margin: EdgeInsets.only(top: 20, bottom: 10, left: 20),
                child: Text(
                  'Yoga',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                alignment: Alignment.bottomLeft,
              ),
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  itemCount: assets2.length,
                  physics: BouncingScrollPhysics(),
                  //pageSnapping: false,
                  padEnds: false,
                  //reverse: true,
                  controller:
                      PageController(initialPage: 1, viewportFraction: 0.5),
                  itemBuilder: (context, index) {
                    //print(index % assets2.length);
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

              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  itemCount: assets3.length,
                  physics: BouncingScrollPhysics(),
                  //pageSnapping: false,
                  padEnds: false,
                  //reverse: true,
                  controller:
                      PageController(initialPage: 1, viewportFraction: 0.5),
                  itemBuilder: (context, index) {
                    //print(index % assets2.length);
                    return Container(
                      margin: const EdgeInsets.all(8),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          //  color: color[index],
                          borderRadius: BorderRadius.circular(25)),
                      child: Image.asset(
                        assets3[index % assets3.length],
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
     bottomNavigationBar: BottomBar(0),
    );
  }
}
