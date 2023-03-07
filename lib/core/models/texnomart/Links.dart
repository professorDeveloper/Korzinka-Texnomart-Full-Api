import 'Self.dart';
import 'First.dart';
import 'Last.dart';
import 'Prev.dart';

class Links {
  Links({
      this.self, 
      this.first, 
      this.last, 
      this.prev,});

  Links.fromJson(dynamic json) {
    self = json['self'] != null ? Self.fromJson(json['self']) : null;
    first = json['first'] != null ? First.fromJson(json['first']) : null;
    last = json['last'] != null ? Last.fromJson(json['last']) : null;
    prev = json['prev'] != null ? Prev.fromJson(json['prev']) : null;
  }
  Self? self;
  First? first;
  Last? last;
  Prev? prev;


}