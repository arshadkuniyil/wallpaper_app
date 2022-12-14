part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool isLoading,
    required bool scrollMaxLoading,
    required SearchRespons searchRespons,
  }) = _SearchState;
  factory SearchState.initial() {
    return   SearchState(searchRespons: SearchRespons(status: ApiCallStatus.notStarted), isLoading: true, scrollMaxLoading: false);
  }
}

