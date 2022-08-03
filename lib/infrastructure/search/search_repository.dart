import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:wallpaper_app/domain/core/api_end_points.dart';
import 'package:wallpaper_app/domain/core/failures/main_failure.dart';
import 'package:wallpaper_app/domain/search/model/search_respons.dart';

import 'package:wallpaper_app/domain/search/search_service.dart';

@LazySingleton(as: SearchService)
class SearchRepository extends SearchService {
  @override
  Future<SearchRespons?> getSearchImages(pageNum, imageQuery) async {
    try {
      final Response response = await Dio(BaseOptions())
          .get('${ApiEndPoints.search}&page=$pageNum&q=$imageQuery');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchRespons.fromJson(response.data);
        

        return result;
      } else if (response.statusCode == 404 ){
        final result = SearchRespons(error:404 );
      }
    } catch (e) {
      return null;
    }
  }
}
