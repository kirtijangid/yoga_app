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
        onTap: (int indexOfItem) {
          
        },
      ),
    );
  }
}