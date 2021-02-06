import 'package:flutter/material.dart';
import 'package:p1/src/page_three.dart';
import 'package:p1/src/page_two.dart';

class FirstPage extends StatelessWidget {
  TextEditingController passwordController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();

  String getPassword;
  String getEmail;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RestApp'),
        backgroundColor: Color.fromRGBO(240, 94, 100, 1),
      ),
      backgroundColor: Color.fromRGBO(249, 246, 239, 1),
      body: Container(
          child: Column(
        children: <Widget>[
          Container(
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/trazado.png'),
                      fit: BoxFit.fill)),
              child: Stack(
                children: <Widget>[
                  Positioned(
                      child: Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Center(
                              child: Text("Iniciar sesión",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold)))))
                ],
              )),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, 0.2),
                              blurRadius: 20.0,
                              offset: Offset(0, 10))
                        ]),
                    child: Column(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[100]))),
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Ingrese su correo electrónico",
                                  hintStyle:
                                      TextStyle(color: Colors.grey[400])),
                            )),
                        Container(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                                controller: passwordController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Contraseña",
                                  hintStyle: TextStyle(color: Colors.grey[400]),
                                ),
                                obscureText: true))
                      ],
                    )),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(240, 94, 100, 1),
                        Color.fromRGBO(240, 94, 100, .6)
                      ])),
                  child: RaisedButton(
                    color: colorCustomButton,
                    child: Center(
                      child: Text(
                        "iniciar sesión",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    onPressed: () {
                      getPassword = passwordController.text;
                      getEmail = emailController.text;

                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => ThreePage()));

                      /*showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                  title: Text('Datos de inicio de sesión:'),
                                  content: Text(
                                      "Usuario:  $getEmail  \nContraseña: $getPassword "),
                                  actions: <Widget>[
                                    FlatButton(
                                        child: Text("De acuerdo"),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        })
                                  ]));*/
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text("¿Olvidaste tu contraseña?",
                    style: TextStyle(
                        color: Color.fromRGBO(240, 94, 100, 1),
                        fontWeight: FontWeight.bold)),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Align(
                      alignment: Alignment.topLeft,
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
                                  color: colorCustomButton,
                                  child: Center(
                                    child: Text(
                                      "Detalles",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => PageTwo()));
                                  })),
                        ],
                      )),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}

// Parameters custom desing for the application

MaterialColor colorCustom = MaterialColor(0xFFF05E64, color);
MaterialColor colorCustomBackground = MaterialColor(0xFFF9F6EF, color);
MaterialColor colorCustomButton = MaterialColor(0xFF2AC8C2, color);

Map<int, Color> color = {
  50: Color.fromRGBO(240, 94, 100, .1),
  100: Color.fromRGBO(240, 94, 100, .2),
  200: Color.fromRGBO(240, 94, 100, .3),
  300: Color.fromRGBO(240, 94, 100, .4),
  400: Color.fromRGBO(240, 94, 100, .5),
  500: Color.fromRGBO(240, 94, 100, .6),
  600: Color.fromRGBO(240, 94, 100, .7),
  700: Color.fromRGBO(240, 94, 100, .8),
  800: Color.fromRGBO(240, 94, 100, .9),
  900: Color.fromRGBO(240, 94, 100, 1),
};
