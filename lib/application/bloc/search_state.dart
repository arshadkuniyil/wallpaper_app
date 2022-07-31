part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool isLoading,
    required SearchRespons? searchRespons,
  }) = _SearchState;
  factory SearchState.initial() {
    return const SearchState(searchRespons: null, isLoading: true);
  }
}
