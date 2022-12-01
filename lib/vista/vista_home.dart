import 'package:flutter/material.dart';
import '../modelo/personaje.dart';
import "../servicio/personaje_servicio.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

//esto es lo que muestra la pagina principal
class _HomeState extends State<Home> {
  CharacterService service = CharacterService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personajes"),
        backgroundColor: Colors.blue[800],
      ),
      body: SingleChildScrollView(
          child: FutureBuilder<List<Character>>(
        future: service.fetchCharacters(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
                children: snapshot.data!
                    .map((item) => Container(
                          margin:
                              const EdgeInsets.only(left: 8, right: 8, top: 8),
                          child: GestureDetector(
                            child: Card(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 8.0, bottom: 8),
                                child: ListTile(
                                  title: Text(item.name),
                                  leading: Container(
                                    height: 60,
                                    width: 60,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(item.image),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ))
                    .toList());
          } else
            return Container(
                margin: const EdgeInsets.only(top: 20),
                child: Center(child: CircularProgressIndicator()));
        },
      )),
    );
  }
}
