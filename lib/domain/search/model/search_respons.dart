import 'package:json_annotation/json_annotation.dart';

import 'hit.dart';

part 'search_respons.g.dart';

@JsonSerializable()
class SearchRespons {
  int? error;
  int? total;
  int? totalHits;
  List<Hit>? hits;

  SearchRespons({this.error,this.total, this.totalHits, this.hits});

  factory SearchRespons.fromJson(Map<String, dynamic> json) {
    return _$SearchResponsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResponsToJson(this);
}
