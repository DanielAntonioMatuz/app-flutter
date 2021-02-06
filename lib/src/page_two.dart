import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      children: <Widget>[
        SizedBox(
          height: 60,
        ),
        Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(children: <Widget>[
            Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/photo_1.png'),
                        fit: BoxFit.fill)),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        child: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Center(
                                child: Text("D E T A L L E S",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold)))))
                  ],
                )),
            SizedBox(
              height: 30,
            ),
            Positioned(
                child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Center(
                        child: Text("Sobre el espacio",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold))))),
            SizedBox(
              height: 15,
            ),
            Positioned(
                child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Center(
                        child: Text(
                      "El espacio exterior o espacio vacío, también simplemente llamado espacio, se refiere a las regiones relativamente vacías del universo fuera de las atmósferas de los cuerpos celestes. Se usa espacio exterior para distinguirlo del espacio aéreo y las zonas terrestres.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.justify,
                    )))),
                    Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Container(
                              height: 50,
                              width: 125,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Color.fromRGBO(0, 0, 0, 1),
                                    Color.fromRGBO(0, 0, 0, .6)
                                  ])),
                              child: RaisedButton(
                                  color: Color.fromRGBO(0, 0, 0, .6),
                                  child: Center(
                                    child: Text(
                                      "Regresar",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }
                                )
                              ),
                                  
                        ],
                      )),
                )
          ]),
        )
      ],
    )));
  }
}
