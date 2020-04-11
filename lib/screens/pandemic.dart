import 'package:flutter/material.dart';

class PandemicScreen extends StatefulWidget {
  static const String id = 'pandemic_screen';
  @override
  _PandemicScreenState createState() => _PandemicScreenState();
}

class _PandemicScreenState extends State<PandemicScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
                child: Image.asset(
                  "assets/mundo.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            PandemicCard(
              text: "local",
              data: "casos  mortes  recuperados",
            ),
            PandemicCard(
              text: "pais",
              data: "------------/--------------------/-------------",
            ),
            PandemicCard(
              text: "pais",
              data: "------------/--------------------/-------------",
            ),
            PandemicCard(
              text: "pais",
              data: "------------/--------------------/-------------",
            ),
            PandemicCard(
              text: "pais",
              data: "------------/--------------------/-------------",
            ),
            PandemicCard(
              text: "pais",
              data: "------------/--------------------/-------------",
            ),
            PandemicCard(
              text: "pais",
              data: "------------/--------------------/-------------",
            ),
          ],
        ),
      ),
    );
  }
}

class PandemicCard extends StatelessWidget {
  PandemicCard({@required this.data, @required this.text});

  final String text;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: ListTile(
          leading: Text(
            text,
            style: TextStyle(fontSize: 20),
          ),
          title: Text(
            data,
            style: TextStyle(
              color: Colors.teal.shade900,
              fontSize: 20.0,
            ),
          ),
        ));
  }
}
