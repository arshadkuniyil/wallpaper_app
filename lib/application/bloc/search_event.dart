part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.onSearch( {String? imageQuery}) = OnSearch;
  const factory SearchEvent.onScrollMax() = OnScrollMax;
  const factory SearchEvent.onRefresh() = OnRefresh;
}
