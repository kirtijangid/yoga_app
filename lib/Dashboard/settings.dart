import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 10),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      'WORKOUT',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: const Text('Training Rest',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          margin: const EdgeInsets.only(left: 200),
                          child: const Text(
                            '10 sec',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: const Text(
                            'Daily Goal',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          margin: const EdgeInsets.only(left: 210),
                          child: const Text(
                            '200 Kcal',
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          alignment: Alignment.bottomLeft,
                          child: const Text(
                            'Sound Options',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 5),
                     alignment: Alignment.bottomLeft,
                    child: const Text(
                      'GENERAL',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                   Container(
                     margin: const EdgeInsets.only(top: 10,
                     left: 5),
                     child: ListView(
                      shrinkWrap: true,
                       children: const <Widget>[
                       ListTile(
                         title: Text('Set Workout Remainder',
                         style: TextStyle(
                          fontWeight: FontWeight.bold
                         ),
                         ),
                         leading: Icon(Icons.alarm),
                       ),
                       ListTile(
                         title: Text('Health Info',
                         style: TextStyle(
                          fontWeight: FontWeight.bold
                          ),
                          ),
                         leading: Icon(Icons.local_hospital),
                       ),
                       ListTile(
                         title: Text('Change Unit System',
                         style: TextStyle(
                          fontWeight: FontWeight.bold
                          ),
                          ),
                         leading: Icon(Icons.ac_unit),
                       ),
                       ListTile(
                         title: Text('Keep Screen On',
                         style: TextStyle(
                          fontWeight: FontWeight.bold
                          ),
                          ),
                         leading: Icon(Icons.screen_lock_portrait),
                       ),
                     ]),
                   ),

                   Container(
                    margin: EdgeInsets.only(top: 20, left: 5),
                     alignment: Alignment.bottomLeft,
                    child: const Text(
                      'SUPPORT US',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                   Container(
                     margin: const EdgeInsets.only(top: 10,
                     left: 5),
                     child: ListView(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                       children: const <Widget>[
                       ListTile(
                         title: Text('Share With Friends',
                         style: TextStyle(
                          fontWeight: FontWeight.bold
                         ),
                         ),
                         leading: Icon(Icons.share),
                       ),
                       ListTile(
                         title: Text('Feedback',
                         style: TextStyle(
                          fontWeight: FontWeight.bold
                          ),
                          ),
                         leading: Icon(Icons.feedback),
                       ),
                       ListTile(
                         title: Text('Rate Us',
                         style: TextStyle(
                          fontWeight: FontWeight.bold
                          ),
                          ),
                         leading: Icon(Icons.star),
                       ),
                       ListTile(
                         title: Text('Privacy Policy',
                         style: TextStyle(
                          fontWeight: FontWeight.bold
                          ),
                          ),
                         leading: Icon(Icons.privacy_tip),
                       ),
                     ]),
                   ),
                 ],
               ),
             ),
          ],
          ),
        ),
      
        ),
        
        
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
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
        onTap: (int indexOfItem) {},
      ),
    );
  }
}
