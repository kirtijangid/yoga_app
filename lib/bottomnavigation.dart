import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  int _currentIndex;
  BottomBar(this._currentIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromARGB(255, 44, 44, 44),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.transparent,
            Colors.transparent,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (val) {
            if (val == 0) {
              Navigator.popAndPushNamed(context, '/');
            } else if (val == 1) {
              Navigator.popAndPushNamed(context, '/search');
            }
            else if (val == 2) {
              Navigator.popAndPushNamed(context, '/activity');
            }
             else if (val == 3) {
              Navigator.popAndPushNamed(context, '/settings');
            }
          },
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bar_chart,
                size: 30,
              ),
              label: 'Activity',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 30,
              ),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
