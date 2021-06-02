import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'registrarUsuarios.dart';
import 'menuUsuario.dart';
import 'menuAdmin.dart';
import 'dart:core';
//import 'package:cloud_functions/cloud_functions.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pantalla Ingreso',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PantIngreso(
        title: 'PARADISE',
      ),
    );
  }
}

class PantIngreso extends StatefulWidget {
  PantIngreso({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _PantIngresoState createState() => _PantIngresoState();
}

//final Future<FirebaseApp> _initialization = Firebase

bool permitirAux(String usua, String clave) {
  bool permitirIngr = false;

  if (usua != "" && clave != "") {
    permitirIngr = true;
  }

  return permitirIngr;
}

String claveContrasena(String correo) {
  String clave = " ";
  return clave;
}

//******************************************************************************************************
Future msjErroneo(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Error'),
        content: const Text('La clave o el usuario está equivocado'),
        actions: [
          MaterialButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

class _PantIngresoState extends State<PantIngreso> {
  //FirebaseFunctions functions = FirebaseFunctions.instance;Firebase
  //FirebaseAuth auth = FirebaseAuth.instance;

  String nombre = " ";
  String usuario = " ";
  String contrasena = "";
  bool entrar = false;
  final myController = TextEditingController();

  //////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PARADISE'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            child: Image.asset(
              'assets/logo.png',
              height: 200,
              width: 200,
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            ////// este container es la "caja" que pide el ingreso de datos
            padding: EdgeInsets.all(5),
            child: TextField(
              onChanged: (texto) {
                usuario = texto;
              },
              decoration: InputDecoration(
                  hintText: 'Escribe tu correo'), //InputDecoration
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            padding: EdgeInsets.all(5),
            child: TextField(
              onChanged: (texto) {
                contrasena = texto;
              },
              obscureText: true,
              decoration: InputDecoration(hintText: 'Escribe tu contraseña'),
            ),
          ),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.only(left: 100.0, right: 100.0),
            decoration:
                BoxDecoration(color: Colors.orange[50], border: Border.all()),
            child: MaterialButton(
              minWidth: 20.0,
              height: 50.0,
              disabledColor: Colors.orange,
              child: Text('Ingresar',
                  style: TextStyle(fontSize: 20, color: Colors.black)),
              splashColor: Colors.deepOrange,
              color: Colors.orange[600],
              elevation: 30.0,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return new PantMenPrincUsua(); //PantEstadoGym(); // //PantMenPrincipalAdmin();  // //
                }));
              },
              //
            ),
          ),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.only(left: 100.0, right: 100.0),
            decoration:
                BoxDecoration(color: Colors.orange[50], border: Border.all()),
            child: MaterialButton(
              minWidth: 20.0,
              height: 50.0,
              disabledColor: Colors.orange,
              child: Text('Ingresar Admin',
                  style: TextStyle(fontSize: 20, color: Colors.black)),
              splashColor: Colors.deepOrange,
              color: Colors.orange[600],
              elevation: 30.0,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return new PantMenPrincAdmin(); //PantEstadoGym(); // //PantMenPrincipalAdmin();  // //
                }));
              },
              //
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              margin: EdgeInsets.only(left: 100.0, right: 100.0),
              decoration:
                  BoxDecoration(color: Colors.orange[50], border: Border.all()),
              child: MaterialButton(
                ///opcion para hacer el boton
                minWidth: 20.0,
                height: 50.0,
                disabledColor: Colors.blue,
                child: Text('Registrar',
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                splashColor: Colors.blue,
                color: Colors.amber[400],
                elevation: 30.0,

                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return new PantRegisUsua(); //PantEstadoGym(); // //PantMenPrincipalAdmin();  // //
                  }));
                },
              )),
          SizedBox(height: 30),
        ], //children
      ),
    );
  }
} //_Pantalla3State
