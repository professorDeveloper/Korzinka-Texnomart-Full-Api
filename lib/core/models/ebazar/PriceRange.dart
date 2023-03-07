class PriceRange {
  PriceRange({
      this.min, 
      this.max,});

  PriceRange.fromJson(dynamic json) {
    min = json['min'];
    max = json['max'];
  }
  double? min;
  double? max;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['min'] = min;
    map['max'] = max;
    return map;
  }

}