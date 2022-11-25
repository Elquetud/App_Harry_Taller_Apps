class Character {
  final String name;
  final String house;
  final bool isStudent;
  final String actor;
  final String image;

  Character(
      {required this.actor,
      required this.house,
      required this.image,
      required this.isStudent,
      required this.name});

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
        actor: json["actor"],
        house: json["house"],
        image: json["image"],
        isStudent: json["hogwartsStudient"],
        name: json["name"]);
  }
}
