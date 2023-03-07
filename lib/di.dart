import 'package:get_it/get_it.dart';
import 'package:karzinka_full/core/api/karzinka_api.dart';
import 'package:karzinka_full/core/api/texnomart_api.dart';
final di = GetIt.instance;

Future<void> setup() async {

  di.registerSingleton(KarzinkaEbazaarApi());
  di.registerSingleton(TexnomartApi());

}