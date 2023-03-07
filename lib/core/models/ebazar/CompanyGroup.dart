class CompanyGroup {
  CompanyGroup({
      this.id, 
      this.name, 
      this.description, 
      this.code,});

  CompanyGroup.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    code = json['code'];
  }
  int? id;
  dynamic name;
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