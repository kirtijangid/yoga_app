import 'package:flutter/material.dart';
import 'package:yogmantra/activitypage/activity.dart';
import 'package:yogmantra/searchpage/search.dart';
import 'package:yogmantra/settingspage/settings.dart';
import 'pages/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: PhonePage1(),
       initialRoute: '/',
    routes: {
      '/': (context) => const Home(),
      '/search': (context) => const SearchPage(),
      '/activity' : (context) => const Activity(),
      '/settings' : (context) => const Settings(),
    },
      );
  }
}
