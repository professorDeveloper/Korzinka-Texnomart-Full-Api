import 'Items.dart';
import 'Links.dart';
import 'Meta.dart';

class Products {
  Products({
      this.items, 
      this.links, 
      this.meta,});

  Products.fromJson(dynamic json) {
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
    links = json['_links'] != null ? Links.fromJson(json['_links']) : null;
    meta = json['_meta'] != null ? Meta.fromJson(json['_meta']) : null;
  }
  List<Items>? items;
  Links? links;
  Meta? meta;


}