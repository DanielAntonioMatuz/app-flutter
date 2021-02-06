import 'package:flutter/material.dart';
import 'package:p1/src/page_four.dart';

class ThreePage extends StatelessWidget {
  final List<int> colorCodes = <int>[600, 500, 100,600, 500, 100,600, 500, 100,600, 500, 100,600, 500, 100,600, 500, 100,600, 500, 100];
  final List<String> listUser = <String>[
    'Daniel Matuz',
    'Elizabeth Amendi',
    'Martin Dominguez',
    'Rogelio Ovando',
    'Isaac Bezares',
    'Javier Roca',
    'Rocio Arjona',
    'Benita Diallo',
    'Iñaki Mera',
    'Ivan Amado',
    'Raimundo Tamayo',
    'Evangelina Ortuño',
    'Alex Cardona',
    'Leire Pedraza',
    'Mario Olmos',
    'Tania Peñalver',
    'Manuel Cid',
    'Jaume Lucas',
    'Mamadou Carrasco',
    'Adelaida Lamas'
  ];

  String nameData;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Usuarios',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Color.fromRGBO(240, 94, 100, 1),
        ),
        body: Container(
            alignment: Alignment.topCenter,
            child:
              ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: listUser.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Column(children: <Widget>[
                        Container(
                      height: 50,
                      width: 300,
                      margin: const EdgeInsets.only(top: 10.0),
                      color: Colors.red[colorCodes[index]],
                      child: Center(
                        child:
                        RaisedButton(
                                  color: Color.fromRGBO(0, 0, 0, 0),
                                  child: Center(
                                    child: Text(
                                      ' ${index+1}.-  ${listUser[index]}',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(context, 
                                    MaterialPageRoute(builder: (context) => PageFour(nameData: listUser[index],)));
                                  } 
                                )
                        ),
                      
                        )
                      ],)
                    );
                  }),
            ));
  }
}
