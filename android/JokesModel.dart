class JokesModel {
  JokesModel({
      this.type, 
      this.setup, 
      this.punchline, 
      this.id,});

  JokesModel.fromJson(dynamic json) {
    type = json['type'];
    setup = json['setup'];
    punchline = json['punchline'];
    id = json['id'];
  }
  String? type;
  String? setup;
  String? punchline;
  num? id;
JokesModel copyWith({  String? type,
  String? setup,
  String? punchline,
  num? id,
}) => JokesModel(  type: type ?? this.type,
  setup: setup ?? this.setup,
  punchline: punchline ?? this.punchline,
  id: id ?? this.id,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['setup'] = setup;
    map['punchline'] = punchline;
    map['id'] = id;
    return map;
  }

}