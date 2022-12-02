// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../modelo/personaje.dart';

class CharacterService {
  Future<List<Character>> fetchCharacters() async {
    List<Character> list = <Character>[];
    http.Response response =
        await http.get("https://hp-api.onrender.com/api/characters");

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      list = json.map<Character>((item) => Character.fromJson(item)).toList();
      return list;
    } else
      return list;
  }
}
