import 'package:flutter/material.dart';
import 'registrarUsuarios.dart';

////////////////////////////////////////////////////////////////////////////////////////////////
class PantActualizar extends StatefulWidget {
  PantActualizar({Key key, this.title, this.codigo}) : super(key: key);
  final String codigo;
  final String title;

  @override
  _PantActualizarState createState() => _PantActualizarState();
}

class _PantActualizarState extends State<PantActualizar> {
  String info = "Id del reporte:\n\n"
      "Nombre del reporte: \n\n"
      "Estado del reporte: \n\n"
      "Descripción: \n\n"
      "Fecha ingreso: \n\n"
      "Personal a cargo: \n\n";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PARADISE'),
      ),
      body: ListView(
        children: [
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
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 100.0, right: 100.0),
            decoration:
                BoxDecoration(color: Colors.orange[50], border: Border.all()),
            child: Text(
              '\n Observaciones: \n\n\n Fecha de salida:\n',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 25),
          Container(
              margin: EdgeInsets.only(left: 100.0, right: 100.0),
              decoration:
                  BoxDecoration(color: Colors.orange[50], border: Border.all()),
              child: MaterialButton(
                ///opcion para hacer el boton
                minWidth: 20.0,
                height: 50.0,
                disabledColor: Colors.blue,
                child: Text('Editar',
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                splashColor: Colors.blue,
                color: Colors.amberAccent,
                elevation: 30.0,

                onPressed: () {},
              )),
          SizedBox(height: 25),
          Container(
              margin: EdgeInsets.only(left: 100.0, right: 100.0),
              decoration:
                  BoxDecoration(color: Colors.orange[50], border: Border.all()),
              child: MaterialButton(
                ///opcion para hacer el boton
                minWidth: 20.0,
                height: 50.0,
                disabledColor: Colors.blue,
                child: Text('subir',
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                splashColor: Colors.deepOrangeAccent,
                color: Colors.amber[400],
                elevation: 30.0,

                onPressed: () {},
              )),
          SizedBox(
            height: 30,
          )
        ], //children
      ),
    );
  }
} //_Pantalla3State
