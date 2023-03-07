import 'package:karzinka_full/core/models/texnomart/Stick.dart';

import 'Availability.dart';
import 'Attributes5.dart';

class Items {
  Items({
      this.id, 
      this.name, 
      this.image, 
      this.warranty, 
      this.allStock,
      this.availability, 
      this.reviewsCount, 
      this.reviewsMiddleRate, 
      this.salePrice, 
      this.fSalePrice, 
      this.loanPrice, 
      this.fLoanPrice, 
      this.oldPrice, 
      this.fOldPrice, 
      this.axiomMonthlyPrice, 
      this.kodProduct, 
      this.deficiency, 
      this.attributes5,});

  Items.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    warranty = json['warranty'];
    allStock = json['allStock'];
    availability = json['availability'] != null ? Availability.fromJson(json['availability']) : null;
    reviewsCount = json['reviewsCount'];
    reviewsMiddleRate = json['reviewsMiddleRate'];
    salePrice = json['sale_price'];
    fSalePrice = json['f_sale_price'];
    loanPrice = json['loan_price'];
    fLoanPrice = json['f_loan_price'];
    oldPrice = json['old_price'];
    fOldPrice = json['f_old_price'];
    axiomMonthlyPrice = json['axiomMonthlyPrice'];
    kodProduct = json['kod_product'];
    deficiency = json['deficiency'];
    if (json['attributes5'] != null) {
      attributes5 = [];
      json['attributes5'].forEach((v) {
        attributes5?.add(Attributes5.fromJson(v));
      });
    }
  }
  int? id;
  String? name;
  String? image;
  dynamic? warranty;
  int? allStock;
  Availability? availability;
  int? reviewsCount;
  int? reviewsMiddleRate;
  int? salePrice;
  String? fSalePrice;
  int? loanPrice;
  String? fLoanPrice;
  dynamic? oldPrice;
  dynamic? fOldPrice;
  String? axiomMonthlyPrice;
  String? kodProduct;
  String? deficiency;
  List<Attributes5>? attributes5;


}