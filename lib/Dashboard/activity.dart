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
                      'Starts | today',
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                  ),
                  Container(
                    child: Image.asset('assets/kcal2.jpg'),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
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
              MaterialPageRoute(builder: (context) => const Settings()),
            );
          }),
    );
  }
}

class Settings extends StatelessWidget{
  const Settings();
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
