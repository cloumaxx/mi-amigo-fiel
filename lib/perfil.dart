import 'package:flutter/material.dart';
import 'registrarUsuarios.dart';

////////////////////////////////////////////////////////////////////////////////////////////////
class PantPerfilUsuario extends StatefulWidget {
  PantPerfilUsuario({Key key, this.title, this.codigo}) : super(key: key);
  final String codigo;
  final String title;

  @override
  _PantPerfilUsuarioState createState() => _PantPerfilUsuarioState();
}

class _PantPerfilUsuarioState extends State<PantPerfilUsuario> {
  String info =
      "Información personal:\nNombre: \nEdad: \nCumple: \nIdentificación: \nCorreo: \nNúmero de contacto: ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PARADISE'),
      ),
      body: ListView(
        children: [
          Container(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/sinFotoPerfil.jpg'),
              radius: 100,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            info,
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.all(5),
            child: TextField(
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Agrega una descripción tuya\n\n.',
              ),
            ),
          ),
          SizedBox(height: 20),
          MaterialButton(
            minWidth: 20.0,
            height: 50.0,
            disabledColor: Colors.cyan[100],
            child: Text('Editar',
                style: TextStyle(fontSize: 20, color: Colors.black)),
            splashColor: Colors.lightGreen[400],
            color: Colors.limeAccent,
            elevation: 30.0,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return new PantRegisUsua();
              }));
            },
          ),
          SizedBox(height: 30),
        ], //children
      ),
    );
  }
} //_Pantalla3State
