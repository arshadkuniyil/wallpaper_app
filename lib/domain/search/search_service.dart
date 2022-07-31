import 'package:wallpaper_app/domain/core/failures/main_failure.dart';

import 'package:dartz/dartz.dart';

import 'model/search_respons.dart';

abstract class SearchService {
  Future<Either<MainFailure, SearchRespons?>> getSearchImages();
}
