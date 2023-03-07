class Measurement {
  Measurement({
      this.id, 
      this.name, 
      this.description, 
      this.code,});

  Measurement.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    code = json['code'];
  }
  int? id;
  String? name;
  String? description;
  String? code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['description'] = description;
    map['code'] = code;
    return map;
  }

}