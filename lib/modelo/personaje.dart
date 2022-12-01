import 'dart:convert';

List<Character> characterFromJson(String str) => new List<Character>.from(
    json.decode(str).map((x) => Character.fromJson(x)));

String characterToJson(List<Character> data) =>
    json.encode(new List<dynamic>.from(data.map((x) => x.toJson())));

class Character {
  String name;
  String house;
  bool hogwartsStudent;
  bool hogwartsStaff;
  String actor;
  String image;
  String? alternate_names;
  String? alternate_actors;
  String? alive;
  String? eyeColour;
  String? ancestry;
  String patrous;
  String isStudient;
  Character(
      {required this.actor,
      required this.house,
      required this.image,
      required this.hogwartsStudent,
      required this.hogwartsStaff,
      required this.name,
      required this.patrous,
      required this.eyeColour,
      required this.alive,
      required this.isStudient});

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
        actor: json["actor"],
        house: json["house"],
        image: json["image"],
        hogwartsStudent: json["Student"],
        hogwartsStaff: json["hogwartsStaff"],
        alive: json["alive"],
        patrous: json["patronus"],
        eyeColour: json["eyeColour"],
        isStudient: json["isStudient"],
        name: json["name"]);
  }

  Map<String, dynamic> toJson() => {
        "actor": actor,
        "name": name,
        "house": house,
        "patronus": patrous,
        "image": image,
        "hogwartsStudent": hogwartsStudent,
        "hogwartsStaff": hogwartsStaff,
        "eyeColour": eyeColour,
        "alive": alive,
      };
}
