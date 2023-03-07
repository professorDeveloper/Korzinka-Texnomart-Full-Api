import 'Data.dart';

class TexnomartItem {
  TexnomartItem({
      this.success, 
      this.errorCode, 
      this.message, 
      this.data,});

  TexnomartItem.fromJson(dynamic json) {
    success = json['success'];
    errorCode = json['error_code'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? success;
  int? errorCode;
  String? message;
  Data? data;


}