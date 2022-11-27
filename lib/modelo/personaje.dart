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
  String? house;
  String? patronus;
  String? alternate_actors;
  String? alive;
  String?eyeColour;
  String?ancestry;

Character({
  this.actor, 
  this.house, 
  this.image, 
  this.hogwartsStudent, 
  this.name
  this.house,
  this.patronus,
  this.eyeColour,
  this.alive,
  });
  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
        actor: json["actor"],
        house: json["house"],
        image: json["image"],
        hogwartsStudent: json["Student"],
        alive:json["alive"],
        patronus:json["patronus"],
        eyeColour:json["eyeColour"]
        name: json["name"]),
        
  }
   Map<String, dynamic> toJson() => {
        "actor": actor,
        "name": name,
        "house": house,
        "patronus": patronus,
        "image":image,
        "hogwartsStudent":hogwartsStudent,
        "eyeColour":eyeColour,
        "alive":alive,
        
      };
}
