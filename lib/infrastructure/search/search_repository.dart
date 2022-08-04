import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:wallpaper_app/domain/core/api_end_points.dart';
import 'package:wallpaper_app/domain/search/model/api_call_status.dart';
import 'package:wallpaper_app/domain/search/model/search_respons.dart';

import 'package:wallpaper_app/domain/search/search_service.dart';

@LazySingleton(as: SearchService)
class SearchRepository extends SearchService {
  @override
  Future<SearchRespons> getSearchImages(pageNum, imageQuery) async {
    try {
      final Response response = await Dio(BaseOptions())
          .get('${ApiEndPoints.search}&page=$pageNum&q=$imageQuery');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchRespons.fromJson(response.data);
        result.status = ApiCallStatus.noError;
        return result;
      } else {
        final result = SearchRespons(status: ApiCallStatus.serverFailure);
        return result;
      }
    } catch (e) {
      final result = SearchRespons(status: ApiCallStatus.clientFailure);
      return result;
    }
  }
}
