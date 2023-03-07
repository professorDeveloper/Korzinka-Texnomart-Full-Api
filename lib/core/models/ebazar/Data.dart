import 'package:karzinka_full/core/models/ebazar/List.dart';

import 'PriceRange.dart';

class Data {
  Data({
      this.list, 
      this.count, 
      this.priceRange,});

  Data.fromJson(dynamic json) {
    if (json['list'] != null) {
      list = [];
      json['list'].forEach((v) {
        list?.add(EbazarItem.fromJson(v));
      });
    }
    count = json['count'];
    priceRange = json['priceRange'] != null ? PriceRange.fromJson(json['priceRange']) : null;
  }
  List<EbazarItem>? list;
  int? count;
  PriceRange? priceRange;


}