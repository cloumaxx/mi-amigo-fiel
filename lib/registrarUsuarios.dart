import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'menuUsuario.dart';
import 'dart:core';

class PantRegisUsua extends StatefulWidget {
  PantRegisUsua({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _PantRegisUsuaState createState() => _PantRegisUsuaState();
}

//******************************************************************************************************

class _PantRegisUsuaState extends State<PantRegisUsua> {
  var _listGeneros = ['Hombre', 'Mujer', 'Otro'];
  String _vista = 'Selecciona una opción';
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
          SizedBox(
            height: 15,
          ),
          Text(
            ' Para registrarse por favor\n llene los siguientes\n recuadros ',
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            ////// este container es la "caja" que pide el ingreso de datos
            padding: EdgeInsets.all(5),
            child: TextField(
              onChanged: (texto) {
                nombre = texto;
              },
              decoration: InputDecoration(
                  labelText: '¿Cual es tu nombre?',
                  hintText: 'Escribe tu nombre completo'), //InputDecoration
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            padding: EdgeInsets.all(5),
            child: TextField(
              onChanged: (texto) {
                edad = texto;
              },
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              decoration: InputDecoration(
                  labelText: '¿Cual es tu correo electronico?',
                  hintText: 'Escribe tu correo'),
            ),
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
              decoration: InputDecoration(
                  labelText: '¿Cuantos años tienes?',
                  hintText: 'Escribe tu edad'),
            ),
          ),
          SizedBox(height: 30),
          Text(
            ' ¿Cual es tu genero? ',
            style: TextStyle(
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            padding: const EdgeInsets.only(left: 10, right: 10),
            decoration:
                BoxDecoration(color: Colors.white, border: Border.all()),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                items: _listGeneros.map((String a) {
                  return DropdownMenuItem(value: a, child: Text(a));
                }).toList(),
                onChanged: (_value) => {
                  setState(() {
                    this.genero = _value;
                  })
                },
                value: genero,
                dropdownColor: Colors.orange[50],
                isExpanded: false,
                hint: Text(_vista),
              ),
            ),
          ),
          SizedBox(
            height: 20,
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
              decoration: InputDecoration(
                  labelText: '¿Cual es tu número de celular?',
                  hintText: 'Escribe tu número'),
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
              child: Text('Siguiente',
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
