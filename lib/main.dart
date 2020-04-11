import 'package:flutter/material.dart';
import 'package:pandemicui/screens/home.dart';
import 'package:pandemicui/screens/info.dart';
import 'package:pandemicui/screens/pandemic.dart';
import 'screens/pandemic.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        InfoScreen.id: (context) => InfoScreen(),
        PandemicScreen.id: (context) => PandemicScreen(),
      },
    );
  }
}
