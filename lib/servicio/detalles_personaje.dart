import 'package:flutter/material.dart';
import "../modelo/personaje.dart";

class DetallesPersonaje extends StatefulWidget {
  final Character character;

  DetallesPersonaje(this.character);
  @override
  _DetallesPersonaje createState() => _DetallesPersonaje();
}

class _DetallesPersonaje extends State<DetallesPersonaje> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.character.name),
        backgroundColor: Colors.blue[800],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.network(widget.character.image),
              height: 300,
            ),
            Container(
              margin: const EdgeInsets.only(left: 8, right: 8),
              child: Card(
                child: Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: widget.character.house == ""
                      ? Container()
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Casa: ",
                              style: infoStyle(),
                            ),
                          ],
                        ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 8, right: 8),
              child: Card(
                child: Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Estudante de Hogwarts: ",
                        style: infoStyle(),
                      ),
                      Text(
                        widget.character.isStudient.toString(),
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  infoStyle() {}
}
