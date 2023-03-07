class Availability {
  Availability({
      this.type, 
      this.text,});

  Availability.fromJson(dynamic json) {
    type = json['type'];
    text = json['text'];
  }
  String? type;
  String? text;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['text'] = text;
    return map;
  }

}