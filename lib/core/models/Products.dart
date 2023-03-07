import 'Prices.dart';

class Products {
  Products({
      this.id, 
      this.title, 
      this.vendorCode, 
      this.selfmade, 
      this.categoryTagRu, 
      this.categoryTagUz, 
      this.categoryTagEn, 
      this.prices, 
      this.weightParam, 
      this.isBanner, 
      this.isBigSize, 
      this.catalogCategoryId, 
      this.productUrl, 
      this.smallImageUrl, 
      this.sorting,});

  Products.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    vendorCode = json['vendor_code'];
    selfmade = json['selfmade'];
    categoryTagRu = json['category_tag_ru'];
    categoryTagUz = json['category_tag_uz'];
    categoryTagEn = json['category_tag_en'];
    prices = (json['prices'] != null ? Prices.fromJson(json['prices']) : null)!;
    weightParam = json['weight_param'];
    isBanner = json['is_banner'];
    isBigSize = json['is_bigSize'];
    catalogCategoryId = json['catalog_category_id'];
    productUrl = json['product_url'];
    smallImageUrl = json['small_image_url'];
    sorting = json['sorting'];
  }
  int? id;
  String? title;
  dynamic? vendorCode;
  bool? selfmade;
  String? categoryTagRu;
  String? categoryTagUz;
  String? categoryTagEn;
  Prices? prices;
  String? weightParam;
  bool? isBanner;
  bool? isBigSize;
  int? catalogCategoryId;
  String? productUrl;
  String? smallImageUrl;
  int? sorting;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['vendor_code'] = vendorCode;
    map['selfmade'] = selfmade;
    map['category_tag_ru'] = categoryTagRu;
    map['category_tag_uz'] = categoryTagUz;
    map['category_tag_en'] = categoryTagEn;
    if (prices != null) {
      map['prices'] = prices!.toJson();
    }
    map['weight_param'] = weightParam;
    map['is_banner'] = isBanner;
    map['is_bigSize'] = isBigSize;
    map['catalog_category_id'] = catalogCategoryId;
    map['product_url'] = productUrl;
    map['small_image_url'] = smallImageUrl;
    map['sorting'] = sorting;
    return map;
  }

}