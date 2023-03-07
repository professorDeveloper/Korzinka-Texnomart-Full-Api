class Attributes5 {
  Attributes5({
      this.attributeId, 
      this.attributeName, 
      this.text,});

  Attributes5.fromJson(dynamic json) {
    attributeId = json['attribute_id'];
    attributeName = json['attribute_name'];
    text = json['text'];
  }
  int? attributeId;
  String? attributeName;
  String? text;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['attribute_id'] = attributeId;
    map['attribute_name'] = attributeName;
    map['text'] = text;
    return map;
  }

}