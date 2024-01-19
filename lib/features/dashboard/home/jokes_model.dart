// To parse this JSON data, do
//
//     final jokesModel = jokesModelFromJson(jsonString);

import 'dart:convert';

List<JokesModel> jokesModelFromJson(String str) =>
    List<JokesModel>.from(json.decode(str).map((x) => JokesModel.fromJson(x)));

String jokesModelToJson(List<JokesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class JokesModel {
  Type? type;
  String? setup;
  String? punchline;
  int? id;

  JokesModel({
    this.type,
    this.setup,
    this.punchline,
    this.id,
  });

  factory JokesModel.fromJson(Map<String, dynamic> json) => JokesModel(
        type: typeValues.map[json["type"]]!,
        setup: json["setup"],
        punchline: json["punchline"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "setup": setup,
        "punchline": punchline,
        "id": id,
      };
}

enum Type { GENERAL }

final typeValues = EnumValues({"general": Type.GENERAL});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
