part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.onSearch() = OnSearch;
  const factory SearchEvent.onScrollMax() = OnScrollMax;
}
