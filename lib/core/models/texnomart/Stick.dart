class Stick {
  Stick({
      this.title,
      this.backround, 
      this.color, 
      this.key, 
      this.icon,});

  Stick.fromJson(dynamic json) {
    title = json['title'];
    backround = json['backround'];
    color = json['color'];
    key = json['key'];
    icon = json['icon'];
  }
  String? title;
  String? backround;
  String? color;
  String? key;
  String? icon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['backround'] = backround;
    map['color'] = color;
    map['key'] = key;
    map['icon'] = icon;
    return map;
  }

}