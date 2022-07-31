import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallpaper_app/domain/search/model/search_respons.dart';

import 'package:wallpaper_app/domain/search/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(SearchService searchService) : super(SearchState.initial()) {
    on<OnSearch>((event, emit) async {
      emit(const SearchState(searchRespons: null, isLoading: true));
      final _result = await searchService.getSearchImages();
      final state = _result.fold(
        (l) => const SearchState(searchRespons: null, isLoading: false),
        (r) => SearchState(searchRespons: r, isLoading: false),
      );
      emit(state);
    });
  }
}
