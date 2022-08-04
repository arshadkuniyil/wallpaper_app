import 'package:json_annotation/json_annotation.dart';


import 'hit.dart';

part 'search_respons.g.dart';

@JsonSerializable()
class SearchRespons {
  int? status;
  int? total;
  int? totalHits;
  List<Hit>? hits;

  SearchRespons({ this.status,this.total, this.totalHits, this.hits});

  factory SearchRespons.fromJson(Map<String, dynamic> json) {
    return _$SearchResponsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResponsToJson(this);
}
