import 'Products.dart';

class Data {
  Data({
      this.id, 
      this.titleUz,
      this.titleEn,
      this.description,
      this.descriptionUz,
      this.descriptionEn,
      this.createdAt,
      this.updatedAt,
      this.tagRu,
      this.tagUz,
      this.tagEn,
      this.slug,
      this.titleRu,
      this.products,
      });

  Data.fromJson(dynamic json) {
    id = json['id'];
    titleUz = json['title_uz'];
    titleEn = json['title_en'];
    description = json['description'];
    descriptionUz = json['description_uz'];
    descriptionEn = json['description_en'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    tagRu = json['tag_ru'];
    tagUz = json['tag_uz'];
    tagEn = json['tag_en'];
    slug = json['slug'];
    titleRu = json['title_ru'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
  }
  int? id;
  String?  titleUz;
  String?  titleEn;
  dynamic description;
  dynamic descriptionUz;
  dynamic descriptionEn;
  String?  createdAt;
  String?  updatedAt;
  String?  tagRu;
  String?  tagUz;
  String?  tagEn;
  String?  slug;
  String?  titleRu;
  List<Products>?  products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title_uz'] = titleUz;
    map['title_en'] = titleEn;
    map['description'] = description;
    map['description_uz'] = descriptionUz;
    map['description_en'] = descriptionEn;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['tag_ru'] = tagRu;
    map['tag_uz'] = tagUz;
    map['tag_en'] = tagEn;
    map['slug'] = slug;
    map['title_ru'] = titleRu;
    if (products != null) {
      map['products'] = products!.map((v) => v.toJson()).toList();
    }
    return map;
  }

}