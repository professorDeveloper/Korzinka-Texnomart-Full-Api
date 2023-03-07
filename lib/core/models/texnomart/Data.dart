import 'Products.dart';
import 'Filter.dart';

class Data {
  Data({
      this.products, 
      this.filter, 
      this.scripSeo, 
      this.descriptionText,});

  Data.fromJson(dynamic json) {
    products = json['products'] != null ? Products.fromJson(json['products']) : null;
    filter = json['filter'] != null ? Filter.fromJson(json['filter']) : null;
    scripSeo = json['scripSeo'];
    descriptionText = json['descriptionText'];
  }
  Products? products;
  Filter? filter;
  String? scripSeo;
  String? descriptionText;


}