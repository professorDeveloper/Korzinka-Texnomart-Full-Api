
import 'dart:convert';

Korzinka korzinkaFromJson(String str) => Korzinka.fromJson(json.decode(str));

String korzinkaToJson(Korzinka data) => json.encode(data.toJson());

class Korzinka {
  Korzinka({
    required this.data,
  });

  Data data;

  factory Korzinka.fromJson(Map<String, dynamic> json) => Korzinka(
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
  };
}

class Data {
  Data({
    required this.id,
    required this.title,
    required this.titleUz,
    required this.titleEn,
    required this.description,
    required this.descriptionUz,
    required this.descriptionEn,
    required this.tag,
    required this.tagUz,
    required this.tagEn,
    required this.products,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String title;
  String titleUz;
  String titleEn;
  dynamic description;
  dynamic descriptionUz;
  dynamic descriptionEn;
  String tag;
  String tagUz;
  String tagEn;
  List<Product> products;
  String createdAt;
  String updatedAt;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    title: json["title"],
    titleUz: json["title_uz"],
    titleEn: json["title_en"],
    description: json["description"],
    descriptionUz: json["description_uz"],
    descriptionEn: json["description_en"],
    tag: json["tag"],
    tagUz: json["tag_uz"],
    tagEn: json["tag_en"],
    products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "title_uz": titleUz,
    "title_en": titleEn,
    "description": description,
    "description_uz": descriptionUz,
    "description_en": descriptionEn,
    "tag": tag,
    "tag_uz": tagUz,
    "tag_en": tagEn,
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}

class Product {
  Product({
    required this.id,
    required this.title,
    required this.prices,
    required this.weightParam,
    required this.isBigSize,
    required this.catalogCategoryId,
    required this.productUrl,
    required this.smallImageUrl,
    required this.sorting,
  });

  int id;
  String title;
  Prices prices;
  String weightParam;
  bool isBigSize;
  int catalogCategoryId;
  String productUrl;
  String smallImageUrl;
  int sorting;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    title: json["title"],
    prices: Prices.fromJson(json["prices"]),
    weightParam: json["weight_param"],
    isBigSize: json["is_bigSize"],
    catalogCategoryId: json["catalog_category_id"],
    productUrl: json["product_url"],
    smallImageUrl: json["small_image_url"],
    sorting: json["sorting"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "prices": prices.toJson(),
    "weight_param": weightParam,
    "is_bigSize": isBigSize,
    "catalog_category_id": catalogCategoryId,
    "product_url": productUrl,
    "small_image_url": smallImageUrl,
    "sorting": sorting,
  };
}

class Prices {
  Prices({
    required this.isDiscount,
    required this.actualPrice,
    required this.oldPrice,
    required this.perUnit,
    required this.productType,
    required this.priceTagName,
    required this.priceTagId,
  });

  bool isDiscount;
  String actualPrice;
  String oldPrice;
  dynamic perUnit;
  String productType;
  String priceTagName;
  int priceTagId;

  factory Prices.fromJson(Map<String, dynamic> json) => Prices(
    isDiscount: json["is_discount"],
    actualPrice: json["actual_price"],
    oldPrice: json["old_price"],
    perUnit: json["per_unit"],
    productType: json["product_type"],
    priceTagName: json["price_tag_name"],
    priceTagId: json["price_tag_id"],
  );

  Map<String, dynamic> toJson() => {
    "is_discount": isDiscount,
    "actual_price": actualPrice,
    "old_price": oldPrice,
    "per_unit": perUnit,
    "product_type": productType,
    "price_tag_name": priceTagName,
    "price_tag_id": priceTagId,
  };
}
