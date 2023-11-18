import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: _buildListView(),
    );
  }

  ListView _buildListView() {
    return ListView.builder(itemBuilder: (_, index) {
      return const ListTile(
        title: Text(
          'Set Workout Remainder',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Icon(Icons.alarm),
      );
      ListTile(
        title: Text(
          'Health Info',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Icon(Icons.local_hospital),
      );
      ListTile(
        title: Text(
          'Change Unit System',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Icon(Icons.ac_unit),
      );
      ListTile(
        title: Text(
          'Keep Screen On',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Icon(Icons.screen_lock_portrait),
      );
    });
  }
}

class HealthInfo extends StatelessWidget {
  const HealthInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('hello'),
    );
  }
}
