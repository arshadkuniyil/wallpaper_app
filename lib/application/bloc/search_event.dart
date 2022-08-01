part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.onSearch({required String imageQuery}) = OnSearch;
  const factory SearchEvent.onScrollMax() = OnScrollMax;
}
