// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_respons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchRespons _$SearchResponsFromJson(Map<String, dynamic> json) =>
    SearchRespons(
      status: json['status'] as int?,
      total: json['total'] as int?,
      totalHits: json['totalHits'] as int?,
      hits: (json['hits'] as List<dynamic>?)
          ?.map((e) => Hit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchResponsToJson(SearchRespons instance) =>
    <String, dynamic>{
      'status': instance.status,
      'total': instance.total,
      'totalHits': instance.totalHits,
      'hits': instance.hits,
    };
