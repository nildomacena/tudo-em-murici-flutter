import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'dart:async';

final List<Map<String, String>> estabelecimentos = [
  {
    "avatar":
        "https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2f2014%2f04%2f09%2f21%2fWDL-Logo-e-Cartao-de-Visita-39219_74096_061423646_1268192503.jpg",
    "nome": "Gourmet Burger"
  },
  {
    "avatar":
        "https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2f2014%2f04%2f09%2f21%2fWDL-Logo-e-Cartao-de-Visita-39219_74096_061423646_1268192503.jpg",
    "nome": "Gourmet Burger"
  },
  {
    "avatar":
        "https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2f2014%2f04%2f09%2f21%2fWDL-Logo-e-Cartao-de-Visita-39219_74096_061423646_1268192503.jpg",
    "nome": "Gourmet Burger"
  },
  {
    "avatar":
        "https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2f2014%2f04%2f09%2f21%2fWDL-Logo-e-Cartao-de-Visita-39219_74096_061423646_1268192503.jpg",
    "nome": "Gourmet Burger"
  },
  {
    "avatar":
        "https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2f2014%2f04%2f09%2f21%2fWDL-Logo-e-Cartao-de-Visita-39219_74096_061423646_1268192503.jpg",
    "nome": "Gourmet Burger"
  },
  {
    "avatar":
        "https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2f2014%2f04%2f09%2f21%2fWDL-Logo-e-Cartao-de-Visita-39219_74096_061423646_1268192503.jpg",
    "nome": "Gourmet Burger"
  },
  {
    "avatar":
        "https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2f2014%2f04%2f09%2f21%2fWDL-Logo-e-Cartao-de-Visita-39219_74096_061423646_1268192503.jpg",
    "nome": "Gourmet Burger"
  },
  {
    "avatar":
        "https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2f2014%2f04%2f09%2f21%2fWDL-Logo-e-Cartao-de-Visita-39219_74096_061423646_1268192503.jpg",
    "nome": "Gourmet Burger"
  },
];

class HomePage extends StatefulWidget {
  final app;
  HomePage({this.app});
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //final FirebaseDatabase database = FirebaseDatabase(app: widget.app );
  final DatabaseReference ref = FirebaseDatabase.instance.reference();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ref.child("estabelecimentos").once().then((DataSnapshot snapshot) {
      snapshot.value.map((value) {
        print("value");
      });
    });
  }

  Widget _buildEstabelecimentoItem(BuildContext context, int index) {
    return GestureDetector(
      onTap: (){
        print("Clicou");
      },
      child: Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 35.0,
            backgroundImage: NetworkImage(estabelecimentos[index]["avatar"]),
          ),
          Container(
            width: 12.0,
          ),
          Text(
            estabelecimentos[index]["nome"],
            style: TextStyle(fontSize: 20.0),
          )
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tudo em Murici"),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: _buildEstabelecimentoItem,
          itemCount: estabelecimentos.length,
        ),
      ),
    );
  }
}
