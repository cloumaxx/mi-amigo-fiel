import 'package:flutter/material.dart';
import 'main.dart';
import 'realizarReporte.dart';
import 'perfil.dart';
import 'registrarMiembros.dart';
import 'listaReportes.dart';

////////////////////////////////////////////////////////////////////////////////////////////////
class PantMenPrincAdmin extends StatefulWidget {
  PantMenPrincAdmin({Key key, this.title, this.nombre}) : super(key: key);
  final String nombre;

  final String title;
  @override
  _PantMenPrincAdminState createState() => _PantMenPrincAdminState();
}

///****************************************************************************************************************************
class _PantMenPrincAdminState extends State<PantMenPrincAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PARADISE'),
      ),
      body: ListView(
        children: [
          SizedBox(height: 50),
          Text(
            'Bienvenido \n¿Que desea hacer?',
            style: TextStyle(
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            decoration:
                BoxDecoration(color: Colors.orange[50], border: Border.all()),
            child: MaterialButton(
              minWidth: 20.0,
              height: 50.0,
              disabledColor: Colors.red,
              child: Text('Ver reportes',
                  style: TextStyle(fontSize: 20, color: Colors.black)),
              splashColor: Colors.lightBlue,
              color: Colors.brown[700],
              elevation: 30.0,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return new PantLista();
                }));
              },
            ),
          ),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            decoration:
                BoxDecoration(color: Colors.orange[50], border: Border.all()),
            child: MaterialButton(
              minWidth: 20.0,
              height: 50.0,
              disabledColor: Colors.cyan[100],
              child: Text('Registrar miembro nuevo',
                  style: TextStyle(fontSize: 20, color: Colors.black)),
              splashColor: Colors.lightBlue,
              color: Colors.deepOrangeAccent,
              elevation: 30.0,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return new PantRegisMiemb();
                }));
              },

              ///
            ),
          ),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            decoration:
                BoxDecoration(color: Colors.orange[50], border: Border.all()),
            child: MaterialButton(
              minWidth: 20.0,
              height: 50.0,
              disabledColor: Colors.cyan[100],
              child: Text('Ver tu perfil',
                  style: TextStyle(fontSize: 20, color: Colors.black)),
              splashColor: Colors.lightBlue,
              color: Colors.amber,
              elevation: 30.0,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return new PantPerfilUsuario();
                }));
              },
            ),
          ),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            decoration:
                BoxDecoration(color: Colors.orange[50], border: Border.all()),
            child: MaterialButton(
              minWidth: 20.0,
              height: 50.0,
              disabledColor: Colors.deepPurple[400],
              child: Text('Cerrar Sesión',
                  style: TextStyle(fontSize: 20, color: Colors.black)),
              splashColor: Colors.lightBlue,
              color: Colors.yellow,
              elevation: 30.0,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                  return new PantIngreso();
                }));
              },
            ),
          ),
          SizedBox(height: 40),
        ], //children
      ),
    );
  }
} //_Pantalla3State
