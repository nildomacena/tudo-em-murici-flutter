import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Tudo em Murici"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("data")
          ],
        ),
      ),
    );

  }
}