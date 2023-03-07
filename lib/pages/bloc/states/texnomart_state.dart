
import 'package:flutter/cupertino.dart';
import 'package:karzinka_full/core/models/texnomart/CategoryData.dart';
import 'package:karzinka_full/core/models/texnomart/TexnomartItem.dart';

import '../../../core/models/texnomart/Items.dart';

@immutable
class TexnomartState {
  final Status status;
  final String message;
  final List<CategoryData> categorys;
  final List<Items> products;
  final bool enabled;
  final int page;

  const TexnomartState({
    this.status = Status.initial,
    this.message = "",
    this.products = const [],
    this.categorys = const [],
    this.enabled = true,
    this.page = 1,
  });

  TexnomartState copyWith({
    Status? status,
    String? message,
    List<CategoryData>? categorys,
    List<Items>? products,
    bool? hasData,
    int? page,
  }) {
    return TexnomartState(
      status: status ?? this.status,
      message: message ?? this.message,
      products: products ?? this.products,
      categorys: categorys ?? this.categorys,
      enabled: hasData ?? this.enabled,
      page: page ?? this.page,
    );
  }
}

enum Status { initial, loading, fail, success,loadingFirst,loadingSearch ,loadingNextSuc}
