import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider>
    with TickerProviderStateMixin {
  List<String> assets = [
    'assets/beginner2.jpg',
    'assets/intermediate.jpg',
    'assets/advanced2.png'
  ];
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
        margin: EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  itemCount: assets.length,
                  physics: BouncingScrollPhysics(),
                  controller:
                      PageController(initialPage: 0, viewportFraction: 1),
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
              TabPageSelector(
                controller: TabController(
                    length: assets.length,
                    initialIndex: currentIndex,
                    vsync: this),
                selectedColor: Colors.red,
                color: Colors.grey,
                borderStyle: BorderStyle.none,
              ),
              SizedBox(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  physics: BouncingScrollPhysics(),
                  controller:
                      PageController(initialPage: 3, viewportFraction: 0.7),
                  itemBuilder: (context, index) {
                    print(index % assets.length);
                    return Container(
                      margin: EdgeInsets.all(8),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          //color: Color[index]
                          borderRadius: BorderRadius.circular(25)),
                      child: Image.asset(
                        assets[index % assets.length],
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}