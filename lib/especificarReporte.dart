import 'package:flutter/material.dart';
import 'registrarUsuarios.dart';

////////////////////////////////////////////////////////////////////////////////////////////////
class PantEspReporte extends StatefulWidget {
  PantEspReporte({Key key, this.title, this.codigo}) : super(key: key);
  final String codigo;
  final String title;

  @override
  _PantEspReporteState createState() => _PantEspReporteState();
}

class _PantEspReporteState extends State<PantEspReporte> {
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
                child: Text('Actualizar',
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
        ], //children
      ),
    );
  }
} //_Pantalla3State
