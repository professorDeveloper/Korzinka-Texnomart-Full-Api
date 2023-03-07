class Manufacturer {
  Manufacturer({
      this.id, 
      this.name, 
      this.description, 
      this.code,});

  Manufacturer.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    code = json['code'];
  }
  int? id;
  String? name;
  dynamic description;
  dynamic code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['description'] = description;
    map['code'] = code;
    return map;
  }

}