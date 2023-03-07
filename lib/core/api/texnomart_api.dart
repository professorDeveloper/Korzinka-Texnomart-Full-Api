import 'package:dio/dio.dart';
import 'package:karzinka_full/core/models/texnomart/Items.dart';
import 'package:karzinka_full/core/models/texnomart/TexnomartItem.dart';

import '../models/texnomart/CategoryData.dart';

class TexnomartApi {
  final dio = Dio(BaseOptions(
      connectTimeout: 60000));

  Future<List<CategoryData>> texnomartCategorys() async {
    var response = await dio.get("https://backend.texnomart.uz/api/application/home/categories?type=top");
    return List<CategoryData>.from(
        response.data["data"].map((x) => CategoryData.fromJson(x)));
  }

  Future<List<Items>> texnomartCatByProducts({required String slug, required String page}) async {
    var response = await dio.get(
        "https://backend.texnomart.uz/api/application/product/filter-products?page=$page&category_slug=$slug",
  );
    print(response.requestOptions.uri.toString());
    print(response.data.toString());

    return List<Items>.from(response.data["data"]['products']['items']
        .map((x) => Items.fromJson(x)));
  }
  Future<List<Items>> texnomartSearch({required String slug, required String page}) async {
    var response = await dio.get(
        "https://backend.texnomart.uz/api/v2/search/search?q=$slug&page=$page",
  );
    print(response.requestOptions.uri.toString());
    print(response.data.toString());

    return List<Items>.from(response.data["data"]['items']
        .map((x) => Items.fromJson(x)));
  }
}
