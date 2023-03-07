
import 'package:flutter/cupertino.dart';

@immutable
abstract class PaginationEvent {}

class PaginationInitEvent extends PaginationEvent {}

class PaginationSearchEvent extends PaginationEvent {
  final String text;

  PaginationSearchEvent(this.text);
}

class PaginationNextEvent extends PaginationEvent {}
