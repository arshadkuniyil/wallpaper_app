// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? imageQuery) onSearch,
    required TResult Function() onScrollMax,
    required TResult Function() onRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? imageQuery)? onSearch,
    TResult Function()? onScrollMax,
    TResult Function()? onRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? imageQuery)? onSearch,
    TResult Function()? onScrollMax,
    TResult Function()? onRefresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSearch value) onSearch,
    required TResult Function(OnScrollMax value) onScrollMax,
    required TResult Function(OnRefresh value) onRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnSearch value)? onSearch,
    TResult Function(OnScrollMax value)? onScrollMax,
    TResult Function(OnRefresh value)? onRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSearch value)? onSearch,
    TResult Function(OnScrollMax value)? onScrollMax,
    TResult Function(OnRefresh value)? onRefresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class _$$OnSearchCopyWith<$Res> {
  factory _$$OnSearchCopyWith(
          _$OnSearch value, $Res Function(_$OnSearch) then) =
      __$$OnSearchCopyWithImpl<$Res>;
  $Res call({String? imageQuery});
}

/// @nodoc
class __$$OnSearchCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$$OnSearchCopyWith<$Res> {
  __$$OnSearchCopyWithImpl(_$OnSearch _value, $Res Function(_$OnSearch) _then)
      : super(_value, (v) => _then(v as _$OnSearch));

  @override
  _$OnSearch get _value => super._value as _$OnSearch;

  @override
  $Res call({
    Object? imageQuery = freezed,
  }) {
    return _then(_$OnSearch(
      imageQuery: imageQuery == freezed
          ? _value.imageQuery
          : imageQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OnSearch implements OnSearch {
  const _$OnSearch({this.imageQuery});

  @override
  final String? imageQuery;

  @override
  String toString() {
    return 'SearchEvent.onSearch(imageQuery: $imageQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSearch &&
            const DeepCollectionEquality()
                .equals(other.imageQuery, imageQuery));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageQuery));

  @JsonKey(ignore: true)
  @override
  _$$OnSearchCopyWith<_$OnSearch> get copyWith =>
      __$$OnSearchCopyWithImpl<_$OnSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? imageQuery) onSearch,
    required TResult Function() onScrollMax,
    required TResult Function() onRefresh,
  }) {
    return onSearch(imageQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? imageQuery)? onSearch,
    TResult Function()? onScrollMax,
    TResult Function()? onRefresh,
  }) {
    return onSearch?.call(imageQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? imageQuery)? onSearch,
    TResult Function()? onScrollMax,
    TResult Function()? onRefresh,
    required TResult orElse(),
  }) {
    if (onSearch != null) {
      return onSearch(imageQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSearch value) onSearch,
    required TResult Function(OnScrollMax value) onScrollMax,
    required TResult Function(OnRefresh value) onRefresh,
  }) {
    return onSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnSearch value)? onSearch,
    TResult Function(OnScrollMax value)? onScrollMax,
    TResult Function(OnRefresh value)? onRefresh,
  }) {
    return onSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSearch value)? onSearch,
    TResult Function(OnScrollMax value)? onScrollMax,
    TResult Function(OnRefresh value)? onRefresh,
    required TResult orElse(),
  }) {
    if (onSearch != null) {
      return onSearch(this);
    }
    return orElse();
  }
}

abstract class OnSearch implements SearchEvent {
  const factory OnSearch({final String? imageQuery}) = _$OnSearch;

  String? get imageQuery => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$OnSearchCopyWith<_$OnSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnScrollMaxCopyWith<$Res> {
  factory _$$OnScrollMaxCopyWith(
          _$OnScrollMax value, $Res Function(_$OnScrollMax) then) =
      __$$OnScrollMaxCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnScrollMaxCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$$OnScrollMaxCopyWith<$Res> {
  __$$OnScrollMaxCopyWithImpl(
      _$OnScrollMax _value, $Res Function(_$OnScrollMax) _then)
      : super(_value, (v) => _then(v as _$OnScrollMax));

  @override
  _$OnScrollMax get _value => super._value as _$OnScrollMax;
}

/// @nodoc

class _$OnScrollMax implements OnScrollMax {
  const _$OnScrollMax();

  @override
  String toString() {
    return 'SearchEvent.onScrollMax()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnScrollMax);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? imageQuery) onSearch,
    required TResult Function() onScrollMax,
    required TResult Function() onRefresh,
  }) {
    return onScrollMax();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? imageQuery)? onSearch,
    TResult Function()? onScrollMax,
    TResult Function()? onRefresh,
  }) {
    return onScrollMax?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? imageQuery)? onSearch,
    TResult Function()? onScrollMax,
    TResult Function()? onRefresh,
    required TResult orElse(),
  }) {
    if (onScrollMax != null) {
      return onScrollMax();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSearch value) onSearch,
    required TResult Function(OnScrollMax value) onScrollMax,
    required TResult Function(OnRefresh value) onRefresh,
  }) {
    return onScrollMax(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnSearch value)? onSearch,
    TResult Function(OnScrollMax value)? onScrollMax,
    TResult Function(OnRefresh value)? onRefresh,
  }) {
    return onScrollMax?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSearch value)? onSearch,
    TResult Function(OnScrollMax value)? onScrollMax,
    TResult Function(OnRefresh value)? onRefresh,
    required TResult orElse(),
  }) {
    if (onScrollMax != null) {
      return onScrollMax(this);
    }
    return orElse();
  }
}

abstract class OnScrollMax implements SearchEvent {
  const factory OnScrollMax() = _$OnScrollMax;
}

/// @nodoc
abstract class _$$OnRefreshCopyWith<$Res> {
  factory _$$OnRefreshCopyWith(
          _$OnRefresh value, $Res Function(_$OnRefresh) then) =
      __$$OnRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnRefreshCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$$OnRefreshCopyWith<$Res> {
  __$$OnRefreshCopyWithImpl(
      _$OnRefresh _value, $Res Function(_$OnRefresh) _then)
      : super(_value, (v) => _then(v as _$OnRefresh));

  @override
  _$OnRefresh get _value => super._value as _$OnRefresh;
}

/// @nodoc

class _$OnRefresh implements OnRefresh {
  const _$OnRefresh();

  @override
  String toString() {
    return 'SearchEvent.onRefresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? imageQuery) onSearch,
    required TResult Function() onScrollMax,
    required TResult Function() onRefresh,
  }) {
    return onRefresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? imageQuery)? onSearch,
    TResult Function()? onScrollMax,
    TResult Function()? onRefresh,
  }) {
    return onRefresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? imageQuery)? onSearch,
    TResult Function()? onScrollMax,
    TResult Function()? onRefresh,
    required TResult orElse(),
  }) {
    if (onRefresh != null) {
      return onRefresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSearch value) onSearch,
    required TResult Function(OnScrollMax value) onScrollMax,
    required TResult Function(OnRefresh value) onRefresh,
  }) {
    return onRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnSearch value)? onSearch,
    TResult Function(OnScrollMax value)? onScrollMax,
    TResult Function(OnRefresh value)? onRefresh,
  }) {
    return onRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSearch value)? onSearch,
    TResult Function(OnScrollMax value)? onScrollMax,
    TResult Function(OnRefresh value)? onRefresh,
    required TResult orElse(),
  }) {
    if (onRefresh != null) {
      return onRefresh(this);
    }
    return orElse();
  }
}

abstract class OnRefresh implements SearchEvent {
  const factory OnRefresh() = _$OnRefresh;
}

/// @nodoc
mixin _$SearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get scrollMaxLoading => throw _privateConstructorUsedError;
  SearchRespons get searchRespons => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading, bool scrollMaxLoading, SearchRespons searchRespons});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? scrollMaxLoading = freezed,
    Object? searchRespons = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      scrollMaxLoading: scrollMaxLoading == freezed
          ? _value.scrollMaxLoading
          : scrollMaxLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchRespons: searchRespons == freezed
          ? _value.searchRespons
          : searchRespons // ignore: cast_nullable_to_non_nullable
              as SearchRespons,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading, bool scrollMaxLoading, SearchRespons searchRespons});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, (v) => _then(v as _$_SearchState));

  @override
  _$_SearchState get _value => super._value as _$_SearchState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? scrollMaxLoading = freezed,
    Object? searchRespons = freezed,
  }) {
    return _then(_$_SearchState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      scrollMaxLoading: scrollMaxLoading == freezed
          ? _value.scrollMaxLoading
          : scrollMaxLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchRespons: searchRespons == freezed
          ? _value.searchRespons
          : searchRespons // ignore: cast_nullable_to_non_nullable
              as SearchRespons,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required this.isLoading,
      required this.scrollMaxLoading,
      required this.searchRespons});

  @override
  final bool isLoading;
  @override
  final bool scrollMaxLoading;
  @override
  final SearchRespons searchRespons;

  @override
  String toString() {
    return 'SearchState(isLoading: $isLoading, scrollMaxLoading: $scrollMaxLoading, searchRespons: $searchRespons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.scrollMaxLoading, scrollMaxLoading) &&
            const DeepCollectionEquality()
                .equals(other.searchRespons, searchRespons));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(scrollMaxLoading),
      const DeepCollectionEquality().hash(searchRespons));

  @JsonKey(ignore: true)
  @override
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final bool isLoading,
      required final bool scrollMaxLoading,
      required final SearchRespons searchRespons}) = _$_SearchState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get scrollMaxLoading => throw _privateConstructorUsedError;
  @override
  SearchRespons get searchRespons => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
