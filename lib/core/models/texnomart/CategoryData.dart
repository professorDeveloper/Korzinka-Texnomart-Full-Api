class CategoryData {
  CategoryData({
      this.id, 
      this.title, 
      this.slug,});

  CategoryData.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
  }
  int? id;
  String? title;
  String? slug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['slug'] = slug;
    return map;
  }

}