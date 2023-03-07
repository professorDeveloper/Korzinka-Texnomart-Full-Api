class Filter {
  Filter({
      this.minPrice, 
      this.maxPrice, 
      this.filterMaxPrice, 
      this.filterMinPrice,});

  Filter.fromJson(dynamic json) {
    minPrice = json['minPrice'];
    maxPrice = json['maxPrice'];
    filterMaxPrice = json['filterMaxPrice'];
    filterMinPrice = json['filterMinPrice'];
  }
  int? minPrice;
  int? maxPrice;
  int? filterMaxPrice;
  String? filterMinPrice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['minPrice'] = minPrice;
    map['maxPrice'] = maxPrice;
    map['filterMaxPrice'] = filterMaxPrice;
    map['filterMinPrice'] = filterMinPrice;
    return map;
  }

}