import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

//esto es lo que muestra la pagina principal
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personajes"),
        backgroundColor: Colors.blue[800],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 8, right: 8, top: 8),
              child: Card(
                child: ListTile(
                  title: Text("Harry Potter"),
                  leading: CircleAvatar(),
                  trailing: Text("Student"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
