import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({Key key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Column(
        children: <Widget>[
          Hero(
            tag: 'dbz',
            child: Container(
              height: 500,
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
