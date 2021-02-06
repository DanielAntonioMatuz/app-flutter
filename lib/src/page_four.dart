import 'package:flutter/material.dart';

class PageFour extends StatelessWidget {

  final String nameData;

  PageFour({this.nameData});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datos del usuario'),
        backgroundColor: Color.fromRGBO(240, 94, 100, 1),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(children: <Widget>[
          SizedBox(
            height: 260
          ),
          Text("Nombre del usuario:",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(
            height: 20
          ),
          Text("${nameData}",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400
          ),
          )
        ],)
      ),
    );
  }
}