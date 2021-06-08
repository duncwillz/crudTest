// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NewsStateTearOff {
  const _$NewsStateTearOff();

// ignore: unused_element
  _InitialNewsState initial(
      {@required List<NewsModel> news, @required String error}) {
    return _InitialNewsState(
      news: news,
      error: error,
    );
  }

// ignore: unused_element
  _ErrorNewsState error(
      {@required List<NewsModel> news, @required String error}) {
    return _ErrorNewsState(
      news: news,
      error: error,
    );
  }

// ignore: unused_element
  _LoadingNewsState loadingNews(
      {@required List<NewsModel> news, @required String error}) {
    return _LoadingNewsState(
      news: news,
      error: error,
    );
  }

// ignore: unused_element
  _LoadedNewsState loadedNews(
      {@required List<NewsModel> news, @required String error}) {
    return _LoadedNewsState(
      news: news,
      error: error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NewsState = _$NewsStateTearOff();

/// @nodoc
mixin _$NewsState {
  List<NewsModel> get news;
  String get error;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(List<NewsModel> news, String error),
    @required TResult error(List<NewsModel> news, String error),
    @required TResult loadingNews(List<NewsModel> news, String error),
    @required TResult loadedNews(List<NewsModel> news, String error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<NewsModel> news, String error),
    TResult error(List<NewsModel> news, String error),
    TResult loadingNews(List<NewsModel> news, String error),
    TResult loadedNews(List<NewsModel> news, String error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialNewsState value),
    @required TResult error(_ErrorNewsState value),
    @required TResult loadingNews(_LoadingNewsState value),
    @required TResult loadedNews(_LoadedNewsState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialNewsState value),
    TResult error(_ErrorNewsState value),
    TResult loadingNews(_LoadingNewsState value),
    TResult loadedNews(_LoadedNewsState value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $NewsStateCopyWith<NewsState> get copyWith;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res>;
  $Res call({List<NewsModel> news, String error});
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  final NewsState _value;
  // ignore: unused_field
  final $Res Function(NewsState) _then;

  @override
  $Res call({
    Object news = freezed,
    Object error = freezed,
  }) {
    return _then(_value.copyWith(
      news: news == freezed ? _value.news : news as List<NewsModel>,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
abstract class _$InitialNewsStateCopyWith<$Res>
    implements $NewsStateCopyWith<$Res> {
  factory _$InitialNewsStateCopyWith(
          _InitialNewsState value, $Res Function(_InitialNewsState) then) =
      __$InitialNewsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<NewsModel> news, String error});
}

/// @nodoc
class __$InitialNewsStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res>
    implements _$InitialNewsStateCopyWith<$Res> {
  __$InitialNewsStateCopyWithImpl(
      _InitialNewsState _value, $Res Function(_InitialNewsState) _then)
      : super(_value, (v) => _then(v as _InitialNewsState));

  @override
  _InitialNewsState get _value => super._value as _InitialNewsState;

  @override
  $Res call({
    Object news = freezed,
    Object error = freezed,
  }) {
    return _then(_InitialNewsState(
      news: news == freezed ? _value.news : news as List<NewsModel>,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$_InitialNewsState implements _InitialNewsState {
  const _$_InitialNewsState({@required this.news, @required this.error})
      : assert(news != null),
        assert(error != null);

  @override
  final List<NewsModel> news;
  @override
  final String error;

  @override
  String toString() {
    return 'NewsState.initial(news: $news, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialNewsState &&
            (identical(other.news, news) ||
                const DeepCollectionEquality().equals(other.news, news)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(news) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$InitialNewsStateCopyWith<_InitialNewsState> get copyWith =>
      __$InitialNewsStateCopyWithImpl<_InitialNewsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(List<NewsModel> news, String error),
    @required TResult error(List<NewsModel> news, String error),
    @required TResult loadingNews(List<NewsModel> news, String error),
    @required TResult loadedNews(List<NewsModel> news, String error),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingNews != null);
    assert(loadedNews != null);
    return initial(news, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<NewsModel> news, String error),
    TResult error(List<NewsModel> news, String error),
    TResult loadingNews(List<NewsModel> news, String error),
    TResult loadedNews(List<NewsModel> news, String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(news, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialNewsState value),
    @required TResult error(_ErrorNewsState value),
    @required TResult loadingNews(_LoadingNewsState value),
    @required TResult loadedNews(_LoadedNewsState value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingNews != null);
    assert(loadedNews != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialNewsState value),
    TResult error(_ErrorNewsState value),
    TResult loadingNews(_LoadingNewsState value),
    TResult loadedNews(_LoadedNewsState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialNewsState implements NewsState {
  const factory _InitialNewsState(
      {@required List<NewsModel> news,
      @required String error}) = _$_InitialNewsState;

  @override
  List<NewsModel> get news;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$InitialNewsStateCopyWith<_InitialNewsState> get copyWith;
}

/// @nodoc
abstract class _$ErrorNewsStateCopyWith<$Res>
    implements $NewsStateCopyWith<$Res> {
  factory _$ErrorNewsStateCopyWith(
          _ErrorNewsState value, $Res Function(_ErrorNewsState) then) =
      __$ErrorNewsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<NewsModel> news, String error});
}

/// @nodoc
class __$ErrorNewsStateCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$ErrorNewsStateCopyWith<$Res> {
  __$ErrorNewsStateCopyWithImpl(
      _ErrorNewsState _value, $Res Function(_ErrorNewsState) _then)
      : super(_value, (v) => _then(v as _ErrorNewsState));

  @override
  _ErrorNewsState get _value => super._value as _ErrorNewsState;

  @override
  $Res call({
    Object news = freezed,
    Object error = freezed,
  }) {
    return _then(_ErrorNewsState(
      news: news == freezed ? _value.news : news as List<NewsModel>,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$_ErrorNewsState implements _ErrorNewsState {
  const _$_ErrorNewsState({@required this.news, @required this.error})
      : assert(news != null),
        assert(error != null);

  @override
  final List<NewsModel> news;
  @override
  final String error;

  @override
  String toString() {
    return 'NewsState.error(news: $news, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorNewsState &&
            (identical(other.news, news) ||
                const DeepCollectionEquality().equals(other.news, news)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(news) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$ErrorNewsStateCopyWith<_ErrorNewsState> get copyWith =>
      __$ErrorNewsStateCopyWithImpl<_ErrorNewsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(List<NewsModel> news, String error),
    @required TResult error(List<NewsModel> news, String error),
    @required TResult loadingNews(List<NewsModel> news, String error),
    @required TResult loadedNews(List<NewsModel> news, String error),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingNews != null);
    assert(loadedNews != null);
    return error(news, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<NewsModel> news, String error),
    TResult error(List<NewsModel> news, String error),
    TResult loadingNews(List<NewsModel> news, String error),
    TResult loadedNews(List<NewsModel> news, String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(news, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialNewsState value),
    @required TResult error(_ErrorNewsState value),
    @required TResult loadingNews(_LoadingNewsState value),
    @required TResult loadedNews(_LoadedNewsState value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingNews != null);
    assert(loadedNews != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialNewsState value),
    TResult error(_ErrorNewsState value),
    TResult loadingNews(_LoadingNewsState value),
    TResult loadedNews(_LoadedNewsState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorNewsState implements NewsState {
  const factory _ErrorNewsState(
      {@required List<NewsModel> news,
      @required String error}) = _$_ErrorNewsState;

  @override
  List<NewsModel> get news;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$ErrorNewsStateCopyWith<_ErrorNewsState> get copyWith;
}

/// @nodoc
abstract class _$LoadingNewsStateCopyWith<$Res>
    implements $NewsStateCopyWith<$Res> {
  factory _$LoadingNewsStateCopyWith(
          _LoadingNewsState value, $Res Function(_LoadingNewsState) then) =
      __$LoadingNewsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<NewsModel> news, String error});
}

/// @nodoc
class __$LoadingNewsStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res>
    implements _$LoadingNewsStateCopyWith<$Res> {
  __$LoadingNewsStateCopyWithImpl(
      _LoadingNewsState _value, $Res Function(_LoadingNewsState) _then)
      : super(_value, (v) => _then(v as _LoadingNewsState));

  @override
  _LoadingNewsState get _value => super._value as _LoadingNewsState;

  @override
  $Res call({
    Object news = freezed,
    Object error = freezed,
  }) {
    return _then(_LoadingNewsState(
      news: news == freezed ? _value.news : news as List<NewsModel>,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$_LoadingNewsState implements _LoadingNewsState {
  const _$_LoadingNewsState({@required this.news, @required this.error})
      : assert(news != null),
        assert(error != null);

  @override
  final List<NewsModel> news;
  @override
  final String error;

  @override
  String toString() {
    return 'NewsState.loadingNews(news: $news, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingNewsState &&
            (identical(other.news, news) ||
                const DeepCollectionEquality().equals(other.news, news)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(news) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$LoadingNewsStateCopyWith<_LoadingNewsState> get copyWith =>
      __$LoadingNewsStateCopyWithImpl<_LoadingNewsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(List<NewsModel> news, String error),
    @required TResult error(List<NewsModel> news, String error),
    @required TResult loadingNews(List<NewsModel> news, String error),
    @required TResult loadedNews(List<NewsModel> news, String error),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingNews != null);
    assert(loadedNews != null);
    return loadingNews(news, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<NewsModel> news, String error),
    TResult error(List<NewsModel> news, String error),
    TResult loadingNews(List<NewsModel> news, String error),
    TResult loadedNews(List<NewsModel> news, String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingNews != null) {
      return loadingNews(news, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialNewsState value),
    @required TResult error(_ErrorNewsState value),
    @required TResult loadingNews(_LoadingNewsState value),
    @required TResult loadedNews(_LoadedNewsState value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingNews != null);
    assert(loadedNews != null);
    return loadingNews(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialNewsState value),
    TResult error(_ErrorNewsState value),
    TResult loadingNews(_LoadingNewsState value),
    TResult loadedNews(_LoadedNewsState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingNews != null) {
      return loadingNews(this);
    }
    return orElse();
  }
}

abstract class _LoadingNewsState implements NewsState {
  const factory _LoadingNewsState(
      {@required List<NewsModel> news,
      @required String error}) = _$_LoadingNewsState;

  @override
  List<NewsModel> get news;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$LoadingNewsStateCopyWith<_LoadingNewsState> get copyWith;
}

/// @nodoc
abstract class _$LoadedNewsStateCopyWith<$Res>
    implements $NewsStateCopyWith<$Res> {
  factory _$LoadedNewsStateCopyWith(
          _LoadedNewsState value, $Res Function(_LoadedNewsState) then) =
      __$LoadedNewsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<NewsModel> news, String error});
}

/// @nodoc
class __$LoadedNewsStateCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$LoadedNewsStateCopyWith<$Res> {
  __$LoadedNewsStateCopyWithImpl(
      _LoadedNewsState _value, $Res Function(_LoadedNewsState) _then)
      : super(_value, (v) => _then(v as _LoadedNewsState));

  @override
  _LoadedNewsState get _value => super._value as _LoadedNewsState;

  @override
  $Res call({
    Object news = freezed,
    Object error = freezed,
  }) {
    return _then(_LoadedNewsState(
      news: news == freezed ? _value.news : news as List<NewsModel>,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$_LoadedNewsState implements _LoadedNewsState {
  const _$_LoadedNewsState({@required this.news, @required this.error})
      : assert(news != null),
        assert(error != null);

  @override
  final List<NewsModel> news;
  @override
  final String error;

  @override
  String toString() {
    return 'NewsState.loadedNews(news: $news, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadedNewsState &&
            (identical(other.news, news) ||
                const DeepCollectionEquality().equals(other.news, news)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(news) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$LoadedNewsStateCopyWith<_LoadedNewsState> get copyWith =>
      __$LoadedNewsStateCopyWithImpl<_LoadedNewsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(List<NewsModel> news, String error),
    @required TResult error(List<NewsModel> news, String error),
    @required TResult loadingNews(List<NewsModel> news, String error),
    @required TResult loadedNews(List<NewsModel> news, String error),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingNews != null);
    assert(loadedNews != null);
    return loadedNews(news, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<NewsModel> news, String error),
    TResult error(List<NewsModel> news, String error),
    TResult loadingNews(List<NewsModel> news, String error),
    TResult loadedNews(List<NewsModel> news, String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadedNews != null) {
      return loadedNews(news, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialNewsState value),
    @required TResult error(_ErrorNewsState value),
    @required TResult loadingNews(_LoadingNewsState value),
    @required TResult loadedNews(_LoadedNewsState value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingNews != null);
    assert(loadedNews != null);
    return loadedNews(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialNewsState value),
    TResult error(_ErrorNewsState value),
    TResult loadingNews(_LoadingNewsState value),
    TResult loadedNews(_LoadedNewsState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadedNews != null) {
      return loadedNews(this);
    }
    return orElse();
  }
}

abstract class _LoadedNewsState implements NewsState {
  const factory _LoadedNewsState(
      {@required List<NewsModel> news,
      @required String error}) = _$_LoadedNewsState;

  @override
  List<NewsModel> get news;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$LoadedNewsStateCopyWith<_LoadedNewsState> get copyWith;
}
