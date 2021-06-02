import 'package:flutter/material.dart';
import 'dart:core';
import 'especificarReporte.dart';
import 'actualizaReporte.dart';

class PantLista extends StatefulWidget {
  PantLista({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _PantListaState createState() => _PantListaState();
}

// La clase base para los diferentes tipos de elementos que la Lista puede contener
abstract class ListItem {}

// Un ListItem que contiene datos para mostrar un encabezado
class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);
}

// Un ListItem que contiene datos para mostrar un mensaje
class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}

class _PantListaState extends State<PantLista> {
  final items = List<ListItem>.generate(
    5,
    // ignore: unrelated_type_equality_checks
    (i) => i < 5 == 0
        ? HeadingItem("Reporte $i")
        : MessageItem("Sender ${i + 1}", "Reporte Realizado"),
  );
  String titulo1;
  String descri;
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PARADISE'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        // ignore: missing_return
        itemBuilder: (context, index) {
          final item = items[index];

          if (item is HeadingItem) {
            return ListTile(
              title: Text(
                item.heading,
                style: Theme.of(context).textTheme.headline,
              ),
            );
          } else if (item is MessageItem) {
            return ListTile(
              leading: Icon(Icons.star),
              title: Text(item.sender),
              subtitle: Text(item.body),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return new PantActualizar(); //PantEstadoGym(); // //PantMenPrincipalAdmin();  // //
                }));
              },
              onLongPress: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return new PantActualizar(); //PantEstadoGym(); // //PantMenPrincipalAdmin();  // //
                }));
              },
            );
          }
        },
      ),
    );
  }
}

class Template extends StatelessWidget {
  final String text;
  final String descripcion;
  Template(this.text, this.descripcion);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.text),
      leading: Icon(Icons.star_border),
      subtitle: Text(this.descripcion),
    );
  }
}
