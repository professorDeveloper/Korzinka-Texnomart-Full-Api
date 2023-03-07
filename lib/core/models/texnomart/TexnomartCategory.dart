import 'CategoryData.dart';

class TexnomartCategory {
  TexnomartCategory({
      this.success, 
      this.errorCode, 
      this.message, 
      this.data,});

  TexnomartCategory.fromJson(dynamic json) {
    success = json['success'];
    errorCode = json['error_code'];
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(CategoryData.fromJson(v));
      });
    }
  }
  bool? success;
  int? errorCode;
  String? message;
  List<CategoryData>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['error_code'] = errorCode;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}