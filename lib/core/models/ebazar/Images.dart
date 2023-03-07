class Images {
  Images({
      this.id, 
      this.productId, 
      this.main, 
      this.largeUrl, 
      this.mediumUrl, 
      this.smallUrl,});

  Images.fromJson(dynamic json) {
    id = json['id'];
    productId = json['productId'];
    main = json['main'];
    largeUrl = json['largeUrl'];
    mediumUrl = json['mediumUrl'];
    smallUrl = json['smallUrl'];
  }
  int? id;
  int ?productId;
  bool? main;
  String? largeUrl;
  String? mediumUrl;
  String? smallUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['productId'] = productId;
    map['main'] = main;
    map['largeUrl'] = largeUrl;
    map['mediumUrl'] = mediumUrl;
    map['smallUrl'] = smallUrl;
    return map;
  }

}