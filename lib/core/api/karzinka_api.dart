import 'package:dio/dio.dart';

import '../models/ebazar/Data.dart';
import '../models/ebazar/EbazarModel.dart';
import '../models/ebazar/List.dart';

class KarzinkaEbazaarApi {
  final dio = Dio(BaseOptions(
    connectTimeout: 60000,
  ));
  Future<List<EbazarItem>> searchProducts({
    int offset = 0,
    int limit = 10,
    String search = "",}) async {
    print('start');
    final response = await dio.get(
      "https://api.lebazar.uz/api/v1/search/product?start=$offset&limit=$limit&searchKey=$search",
      options: Options(headers: {"companyId": 78}),);
    print(response.data.toString());
    return List<EbazarItem>.from(response.data["data"]['list'].map((x) => EbazarItem.fromJson(x)));
  }
  Future<List<Data>> karzinkaCategorys() async {
    final response = await dio.get(
      "https://catalog.korzinka.uz/api/catalogs/categories/",
    );
    return List<Data>.from(response.data["data"].map((x) => Data.fromJson(x)));

  }
}
