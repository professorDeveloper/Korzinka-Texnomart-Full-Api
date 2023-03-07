class Meta {
  Meta({
      this.totalCount, 
      this.pageCount, 
      this.currentPage, 
      this.perPage,});

  Meta.fromJson(dynamic json) {
    totalCount = json['totalCount'];
    pageCount = json['pageCount'];
    currentPage = json['currentPage'];
    perPage = json['perPage'];
  }
  int? totalCount;
  int? pageCount;
  int? currentPage;
  int? perPage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['totalCount'] = totalCount;
    map['pageCount'] = pageCount;
    map['currentPage'] = currentPage;
    map['perPage'] = perPage;
    return map;
  }

}