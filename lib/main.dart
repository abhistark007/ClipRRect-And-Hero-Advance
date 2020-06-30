import 'package:cliprect_hero_advance/secondScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ClipRRect & Hero")),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "A widget can be anything like image text icon etc",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Hero(
            tag: 'dbz',
            child: ClipRRect(
              // It clips any widget into rounded rectangle
              borderRadius: BorderRadius.circular(30),
              child: Container(
                padding: EdgeInsets.all(20),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  gradient: LinearGradient(colors: [
                    Colors.pink,
                    Colors.purple,
                  ]),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
              },
              child: Text(
                "Second Screen",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
