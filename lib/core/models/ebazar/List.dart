import 'Company.dart';
import 'Category.dart';
import 'Manufacturer.dart';
import 'Measurement.dart';
import 'Images.dart';
import 'CompanyGroup.dart';

class EbazarItem {
  EbazarItem({
      this.id, 
      this.name, 
      this.keywords, 
      this.description, 
      this.skuNumber, 
      this.price, 
      this.storeQuantity, 
      this.quantity, 
      this.company, 
      this.category, 
      this.manufacturer, 
      this.measurement, 
      this.ingredients, 
      this.storageMethods, 
      this.metaTitle, 
      this.headline, 
      this.metaDescription, 
      this.metaKeyword, 
      this.createdDate, 
      this.images, 
      this.parentId, 
      this.missing, 
      this.oldPrice, 
      this.addedWishlist, 
      this.sale,
      this.campaign, 
      this.popular,});

  EbazarItem.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    keywords = json['keywords'];
    description = json['description'];
    skuNumber = json['skuNumber'];
    price = json['price'];
    storeQuantity = json['storeQuantity'];
    quantity = json['quantity'];
    company = json['company'] != null ? Company.fromJson(json['company']) : null;
    category = json['category'] != null ? Category.fromJson(json['category']) : null;
    manufacturer = json['manufacturer'] != null ? Manufacturer.fromJson(json['manufacturer']) : null;
    measurement = json['measurement'] != null ? Measurement.fromJson(json['measurement']) : null;
    ingredients = json['ingredients'];
    storageMethods = json['storageMethods'];
    metaTitle = json['metaTitle'];
    headline = json['headline'];
    metaDescription = json['metaDescription'];
    metaKeyword = json['metaKeyword'];
    createdDate = json['createdDate'];
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images?.add(Images.fromJson(v));
      });
    }
    parentId = json['parentId'];
    missing = json['missing'];
    oldPrice = json['oldPrice'];
    addedWishlist = json['addedWishlist'];
    companyGroup = CompanyGroup.fromJson(json['companyGroup']);
    sale = json['sale'];
    campaign = json['campaign'];
    popular = json['popular'];
  }
  int? id;
  String? name;
  dynamic? keywords;
  String? description;
  dynamic? skuNumber;
  int? price;
  dynamic? storeQuantity;
  dynamic? quantity;
  Company? company;
  Category? category;
  Manufacturer? manufacturer;
  Measurement? measurement;
  dynamic? ingredients;
  dynamic? storageMethods;
  dynamic? metaTitle;
  dynamic? headline;
  dynamic? metaDescription;
  dynamic? metaKeyword;
  int? createdDate;
  List<Images>? images;
  int? parentId;
  bool? missing;
  int? oldPrice;
  bool? addedWishlist;
  CompanyGroup? companyGroup;
  bool? sale;
  bool? campaign;
  bool? popular;


}