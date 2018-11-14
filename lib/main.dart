import 'package:flutter/material.dart';
import 'package:tudo_em_murici/pages/home.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

Future <void> main() async{
  final FirebaseApp app = await FirebaseApp.configure(
    name: "Tudo em Murici",
    options: FirebaseOptions(
      apiKey: "AIzaSyDaG7jGT_PizWJsMFM0PiMF8bFF_MPeJyQ",
      googleAppID: "1:374168288805:android:4cc4ef55270c2ba5",
      databaseURL: "https://tradegames-2dff6.firebaseio.com"
    )
  );
  runApp(MaterialApp(
    theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.green
      ),
      home: HomePage(app: app,)
  ));
}