import 'Data.dart';

class EbazarModel {
  EbazarModel({
      this.data, 
      this.message, 
      this.serverMessage, 
      this.status, 
      this.httpStatusCode,});

  EbazarModel.fromJson(dynamic json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    message = json['message'];
    serverMessage = json['serverMessage'];
    status = json['status'];
    httpStatusCode = json['httpStatusCode'];
  }
  Data? data;
  dynamic? message;
  dynamic? serverMessage;
  String? status;
  int? httpStatusCode;


}