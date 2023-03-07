class Prices {
  Prices({
      this.isDiscount, 
      this.actualPrice, 
      this.oldPrice, 
      this.perUnit, 
      this.productType, 
      this.priceTagName, 
      this.priceTagTitleRu, 
      this.priceTagTitleUz, 
      this.priceTagTitleEn, 
      this.priceTagId,});

  Prices.fromJson(dynamic json) {
    isDiscount = json['is_discount'];
    actualPrice = json['actual_price'];
    oldPrice = json['old_price'];
    perUnit = json['per_unit'];
    productType = json['product_type'];
    priceTagName = json['price_tag_name'];
    priceTagTitleRu = json['price_tag_title_ru'];
    priceTagTitleUz = json['price_tag_title_uz'];
    priceTagTitleEn = json['price_tag_title_en'];
    priceTagId = json['price_tag_id'];
  }
  bool? isDiscount;
  String? actualPrice;
  String? oldPrice;
  String? perUnit;
  String? productType;
  String? priceTagName;
  String? priceTagTitleRu;
  String? priceTagTitleUz;
  String? priceTagTitleEn;
  int? priceTagId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['is_discount'] = isDiscount;
    map['actual_price'] = actualPrice;
    map['old_price'] = oldPrice;
    map['per_unit'] = perUnit;
    map['product_type'] = productType;
    map['price_tag_name'] = priceTagName;
    map['price_tag_title_ru'] = priceTagTitleRu;
    map['price_tag_title_uz'] = priceTagTitleUz;
    map['price_tag_title_en'] = priceTagTitleEn;
    map['price_tag_id'] = priceTagId;
    return map;
  }

}