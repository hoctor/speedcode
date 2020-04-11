import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pandemicui/screens/info.dart';
import 'package:pandemicui/screens/pandemic.dart';
import '../widgets/button.dart';
import 'info.dart';
import 'pandemic.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(50, 30),
                  bottomRight: Radius.elliptical(50, 30),
                ),
                child: ShaderMask(
                  shaderCallback: (bounds) => RadialGradient(
                    center: Alignment.bottomRight,
                    radius: 1,
                    colors: [
                      Colors.transparent,
                      Colors.white,
                    ],
                    tileMode: TileMode.mirror,
                  ).createShader(bounds),
                  child: Image.asset(
                    "assets/casos.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Divider(),
            RoundedButton(
              onPressed: () {
                Navigator.pushNamed(context, PandemicScreen.id);
              },
              title: 'Pandemic Info',
              colour: Colors.green,
            ),
            RoundedButton(
              onPressed: () {
                Navigator.pushNamed(context, InfoScreen.id);
              },
              title: 'About us',
              colour: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
