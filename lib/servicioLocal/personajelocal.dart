import 'dart:convert';
import 'package:flutter/material.dart';

class personaje extends StatefulWidget {
  @override
  personajelocalcreateState() => personajelocal();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class personajelocal {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Load JSON File From Local"),
      ),
      body: Center(
        child: FutureBuilder(
          builder: (context, snapshot) {
            var showData = json.decode(snapshot.data.toString());
          },
          future: DefaultAssetBundle.of(context)
              .loadString("assets/emprecord.json"),
        ),
      ),
    );
  }
}
