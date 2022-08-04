import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallpaper_app/domain/search/model/api_call_status.dart';
import 'package:wallpaper_app/domain/search/model/search_respons.dart';

import 'package:wallpaper_app/domain/search/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(SearchService searchService) : super(SearchState.initial()) {
    int page = 1;
    SearchRespons firstSearchResult =
        SearchRespons(status: ApiCallStatus.notStarted);

    String? _imageQuery;
    on<OnSearch>((event, emit) async {
      _imageQuery = event.imageQuery;

      emit(state.copyWith(
          searchRespons: SearchRespons(status: ApiCallStatus.loading),
          isLoading: true,
          scrollMaxLoading: false));

      firstSearchResult =
          await searchService.getSearchImages(page, _imageQuery!);

      emit(SearchState(
        isLoading: false,
        searchRespons: firstSearchResult,
        scrollMaxLoading: false,
      ));
    });

    on<OnScrollMax>((event, emit) async {
      if (state.scrollMaxLoading ||
          firstSearchResult.status == ApiCallStatus.notStarted) return;

      emit(state.copyWith(
        searchRespons: firstSearchResult,
        isLoading: false,
        scrollMaxLoading: true,
      ));
      page++;
      _imageQuery ??= '';

      final _result1 = await searchService.getSearchImages(page, _imageQuery!);

      if (_result1.status == ApiCallStatus.noError) {
        _result1.hits!.insertAll(0, firstSearchResult.hits!);

        firstSearchResult.hits = _result1.hits!;
       
        emit(SearchState(
          searchRespons: _result1,
          isLoading: false,
          scrollMaxLoading: false,
        ));
      } else {
       
        emit(SearchState(
          searchRespons: _result1,
          isLoading: false,
          scrollMaxLoading: false,
        ));
      }
    });
  }
}
