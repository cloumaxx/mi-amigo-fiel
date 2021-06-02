import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'menuUsuario.dart';
import 'dart:core';

class PantRealReport extends StatefulWidget {
  PantRealReport({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _PantRealReportState createState() => _PantRealReportState();
}

//******************************************************************************************************
class _PantRealReportState extends State<PantRealReport> {
  String nombre = "";
  String edad = "";
  String genero = "Hombre";

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
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 100.0, right: 100.0),
            decoration:
                BoxDecoration(color: Colors.orange[50], border: Border.all()),
            child: Text(
              '\n Realizar Reporte \n',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            ' Por favor indique el estado en el\n que se encuentra el animalito ',
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            ////// este container es la "caja" que pide el ingreso de datos
            padding: EdgeInsets.all(5),
            child: TextField(
              onChanged: (texto) {
                nombre = texto;
              },
              decoration:
                  InputDecoration(hintText: 'Descripción'), //InputDecoration
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            ' Por favor indique la dirección\n del animal en el mapa ',
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            padding: EdgeInsets.all(5),
            child: TextField(
              onChanged: (texto) {
                edad = texto;
              },
              keyboardType: TextInputType.number,
              obscureText: false,
              decoration: InputDecoration(hintText: 'Escribe la dirección'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            ' Subir foto del estado en el\n que se encuentra el animal ',
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(left: 100.0, right: 100.0),
            decoration: BoxDecoration(
                color: Colors.lightBlueAccent[100], border: Border.all()),
            child: MaterialButton(
              minWidth: 20.0,
              height: 50.0,
              disabledColor: Colors.orange,
              child: Text('Buscar Foto',
                  style: TextStyle(fontSize: 20, color: Colors.black)),
              splashColor: Colors.deepOrange,
              color: Colors.lightBlueAccent[100],
              elevation: 30.0,
              onPressed: () {},
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
              disabledColor: Colors.orange,
              child: Text('Validar',
                  style: TextStyle(fontSize: 20, color: Colors.black)),
              splashColor: Colors.deepOrange,
              color: Colors.orange[600],
              elevation: 30.0,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return new PantMenPrincUsua(
                    nombre: nombre,
                  ); //PantEstadoGym(); // //PantMenPrincipalAdmin();  // //
                }));
              },
            ),
          ),
        ], //children
      ),
    );
  }
} //_Pantalla3State
