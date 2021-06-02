import 'package:flutter/material.dart';
import 'registrarUsuarios.dart';

////////////////////////////////////////////////////////////////////////////////////////////////
class PantVerReporte extends StatefulWidget {
  PantVerReporte({Key key, this.title, this.codigo}) : super(key: key);
  final String codigo;
  final String title;

  @override
  _PantVerReporteState createState() => _PantVerReporteState();
}

class _PantVerReporteState extends State<PantVerReporte> {
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
            height: 25,
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            child: Image.asset('assets/macotasAux.jpg', width: 50),
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
        ], //children
      ),
    );
  }
} //_Pantalla3State
