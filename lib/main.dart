import 'package:flutter/material.dart';
import 'package:tudo_em_murici/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.green
      ),
      home: HomePage(),
    );
  }
}