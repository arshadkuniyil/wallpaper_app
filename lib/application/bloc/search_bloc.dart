import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:wallpaper_app/domain/core/failures/main_failure.dart';
import 'package:wallpaper_app/domain/search/model/hit.dart';
import 'package:wallpaper_app/domain/search/model/search_respons.dart';

import 'package:wallpaper_app/domain/search/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(SearchService searchService) : super(SearchState.initial()) {
    int page = 1;
    SearchRespons? firstSearchResult;
    String? _imageQuery;
    on<OnSearch>((event, emit) async {
      print("test");
      _imageQuery = event.imageQuery;
      print(_imageQuery.toString());
      emit(state.copyWith(
          searchRespons: null, isLoading: true, scrollMaxLoading: false));

      firstSearchResult =
          await searchService.getSearchImages(page, _imageQuery!);

      emit(SearchState(
          isLoading: false,
          searchRespons: firstSearchResult,
          scrollMaxLoading: false));
    });

    on<OnScrollMax>((event, emit) async {
      if (state.isLoading) {
        return;
      }
      emit(state.copyWith(
          searchRespons: firstSearchResult,
          isLoading: false,
          scrollMaxLoading: true));
      page++;
      _imageQuery ??= '';

      final _result1 = await searchService.getSearchImages(page, _imageQuery!);

      _result1!.hits!.insertAll(0, firstSearchResult!.hits!);

      firstSearchResult!.hits = _result1.hits!;

      emit(SearchState(
          searchRespons: _result1, isLoading: false, scrollMaxLoading: false));
    });
  }
}
