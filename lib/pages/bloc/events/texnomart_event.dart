
import 'package:flutter/cupertino.dart';

@immutable
abstract class TexnomartEvent {}

class TexnomartInitEvent extends TexnomartEvent {
  int index;

  TexnomartInitEvent(this.index);
}
class TexnomartCatByProductsEvent extends TexnomartEvent{
  String slug="smartfony";

  TexnomartCatByProductsEvent({this.slug="smartfony"});
}
class TexnomartSearchEvent extends TexnomartEvent {
  final String text;

  TexnomartSearchEvent(this.text);
}

class TexnomartNextEvent extends TexnomartEvent {
  String slug="smartfony";

  TexnomartNextEvent({required this.slug});
}
