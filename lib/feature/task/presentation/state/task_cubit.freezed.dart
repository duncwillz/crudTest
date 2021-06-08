// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TaskStateTearOff {
  const _$TaskStateTearOff();

// ignore: unused_element
  _InitialTaskState initial(
      {@required List<TaskModel> payload, @required String error}) {
    return _InitialTaskState(
      payload: payload,
      error: error,
    );
  }

// ignore: unused_element
  _ErrorTaskState error(
      {@required List<TaskModel> payload, @required String error}) {
    return _ErrorTaskState(
      payload: payload,
      error: error,
    );
  }

// ignore: unused_element
  _LoadingTaskState loadingTask(
      {@required List<TaskModel> payload, @required String error}) {
    return _LoadingTaskState(
      payload: payload,
      error: error,
    );
  }

// ignore: unused_element
  _LoadedTaskState taskUpdated(
      {@required List<TaskModel> payload, @required String error}) {
    return _LoadedTaskState(
      payload: payload,
      error: error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TaskState = _$TaskStateTearOff();

/// @nodoc
mixin _$TaskState {
  List<TaskModel> get payload;
  String get error;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(List<TaskModel> payload, String error),
    @required TResult error(List<TaskModel> payload, String error),
    @required TResult loadingTask(List<TaskModel> payload, String error),
    @required TResult taskUpdated(List<TaskModel> payload, String error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<TaskModel> payload, String error),
    TResult error(List<TaskModel> payload, String error),
    TResult loadingTask(List<TaskModel> payload, String error),
    TResult taskUpdated(List<TaskModel> payload, String error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialTaskState value),
    @required TResult error(_ErrorTaskState value),
    @required TResult loadingTask(_LoadingTaskState value),
    @required TResult taskUpdated(_LoadedTaskState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialTaskState value),
    TResult error(_ErrorTaskState value),
    TResult loadingTask(_LoadingTaskState value),
    TResult taskUpdated(_LoadedTaskState value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $TaskStateCopyWith<TaskState> get copyWith;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res>;
  $Res call({List<TaskModel> payload, String error});
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res> implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  final TaskState _value;
  // ignore: unused_field
  final $Res Function(TaskState) _then;

  @override
  $Res call({
    Object payload = freezed,
    Object error = freezed,
  }) {
    return _then(_value.copyWith(
      payload: payload == freezed ? _value.payload : payload as List<TaskModel>,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
abstract class _$InitialTaskStateCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$InitialTaskStateCopyWith(
          _InitialTaskState value, $Res Function(_InitialTaskState) then) =
      __$InitialTaskStateCopyWithImpl<$Res>;
  @override
  $Res call({List<TaskModel> payload, String error});
}

/// @nodoc
class __$InitialTaskStateCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res>
    implements _$InitialTaskStateCopyWith<$Res> {
  __$InitialTaskStateCopyWithImpl(
      _InitialTaskState _value, $Res Function(_InitialTaskState) _then)
      : super(_value, (v) => _then(v as _InitialTaskState));

  @override
  _InitialTaskState get _value => super._value as _InitialTaskState;

  @override
  $Res call({
    Object payload = freezed,
    Object error = freezed,
  }) {
    return _then(_InitialTaskState(
      payload: payload == freezed ? _value.payload : payload as List<TaskModel>,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$_InitialTaskState implements _InitialTaskState {
  const _$_InitialTaskState({@required this.payload, @required this.error})
      : assert(payload != null),
        assert(error != null);

  @override
  final List<TaskModel> payload;
  @override
  final String error;

  @override
  String toString() {
    return 'TaskState.initial(payload: $payload, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialTaskState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality()
                    .equals(other.payload, payload)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(payload) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$InitialTaskStateCopyWith<_InitialTaskState> get copyWith =>
      __$InitialTaskStateCopyWithImpl<_InitialTaskState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(List<TaskModel> payload, String error),
    @required TResult error(List<TaskModel> payload, String error),
    @required TResult loadingTask(List<TaskModel> payload, String error),
    @required TResult taskUpdated(List<TaskModel> payload, String error),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingTask != null);
    assert(taskUpdated != null);
    return initial(payload, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<TaskModel> payload, String error),
    TResult error(List<TaskModel> payload, String error),
    TResult loadingTask(List<TaskModel> payload, String error),
    TResult taskUpdated(List<TaskModel> payload, String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(payload, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialTaskState value),
    @required TResult error(_ErrorTaskState value),
    @required TResult loadingTask(_LoadingTaskState value),
    @required TResult taskUpdated(_LoadedTaskState value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingTask != null);
    assert(taskUpdated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialTaskState value),
    TResult error(_ErrorTaskState value),
    TResult loadingTask(_LoadingTaskState value),
    TResult taskUpdated(_LoadedTaskState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialTaskState implements TaskState {
  const factory _InitialTaskState(
      {@required List<TaskModel> payload,
      @required String error}) = _$_InitialTaskState;

  @override
  List<TaskModel> get payload;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$InitialTaskStateCopyWith<_InitialTaskState> get copyWith;
}

/// @nodoc
abstract class _$ErrorTaskStateCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$ErrorTaskStateCopyWith(
          _ErrorTaskState value, $Res Function(_ErrorTaskState) then) =
      __$ErrorTaskStateCopyWithImpl<$Res>;
  @override
  $Res call({List<TaskModel> payload, String error});
}

/// @nodoc
class __$ErrorTaskStateCopyWithImpl<$Res> extends _$TaskStateCopyWithImpl<$Res>
    implements _$ErrorTaskStateCopyWith<$Res> {
  __$ErrorTaskStateCopyWithImpl(
      _ErrorTaskState _value, $Res Function(_ErrorTaskState) _then)
      : super(_value, (v) => _then(v as _ErrorTaskState));

  @override
  _ErrorTaskState get _value => super._value as _ErrorTaskState;

  @override
  $Res call({
    Object payload = freezed,
    Object error = freezed,
  }) {
    return _then(_ErrorTaskState(
      payload: payload == freezed ? _value.payload : payload as List<TaskModel>,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$_ErrorTaskState implements _ErrorTaskState {
  const _$_ErrorTaskState({@required this.payload, @required this.error})
      : assert(payload != null),
        assert(error != null);

  @override
  final List<TaskModel> payload;
  @override
  final String error;

  @override
  String toString() {
    return 'TaskState.error(payload: $payload, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorTaskState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality()
                    .equals(other.payload, payload)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(payload) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$ErrorTaskStateCopyWith<_ErrorTaskState> get copyWith =>
      __$ErrorTaskStateCopyWithImpl<_ErrorTaskState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(List<TaskModel> payload, String error),
    @required TResult error(List<TaskModel> payload, String error),
    @required TResult loadingTask(List<TaskModel> payload, String error),
    @required TResult taskUpdated(List<TaskModel> payload, String error),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingTask != null);
    assert(taskUpdated != null);
    return error(payload, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<TaskModel> payload, String error),
    TResult error(List<TaskModel> payload, String error),
    TResult loadingTask(List<TaskModel> payload, String error),
    TResult taskUpdated(List<TaskModel> payload, String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(payload, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialTaskState value),
    @required TResult error(_ErrorTaskState value),
    @required TResult loadingTask(_LoadingTaskState value),
    @required TResult taskUpdated(_LoadedTaskState value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingTask != null);
    assert(taskUpdated != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialTaskState value),
    TResult error(_ErrorTaskState value),
    TResult loadingTask(_LoadingTaskState value),
    TResult taskUpdated(_LoadedTaskState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorTaskState implements TaskState {
  const factory _ErrorTaskState(
      {@required List<TaskModel> payload,
      @required String error}) = _$_ErrorTaskState;

  @override
  List<TaskModel> get payload;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$ErrorTaskStateCopyWith<_ErrorTaskState> get copyWith;
}

/// @nodoc
abstract class _$LoadingTaskStateCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$LoadingTaskStateCopyWith(
          _LoadingTaskState value, $Res Function(_LoadingTaskState) then) =
      __$LoadingTaskStateCopyWithImpl<$Res>;
  @override
  $Res call({List<TaskModel> payload, String error});
}

/// @nodoc
class __$LoadingTaskStateCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res>
    implements _$LoadingTaskStateCopyWith<$Res> {
  __$LoadingTaskStateCopyWithImpl(
      _LoadingTaskState _value, $Res Function(_LoadingTaskState) _then)
      : super(_value, (v) => _then(v as _LoadingTaskState));

  @override
  _LoadingTaskState get _value => super._value as _LoadingTaskState;

  @override
  $Res call({
    Object payload = freezed,
    Object error = freezed,
  }) {
    return _then(_LoadingTaskState(
      payload: payload == freezed ? _value.payload : payload as List<TaskModel>,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$_LoadingTaskState implements _LoadingTaskState {
  const _$_LoadingTaskState({@required this.payload, @required this.error})
      : assert(payload != null),
        assert(error != null);

  @override
  final List<TaskModel> payload;
  @override
  final String error;

  @override
  String toString() {
    return 'TaskState.loadingTask(payload: $payload, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingTaskState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality()
                    .equals(other.payload, payload)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(payload) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$LoadingTaskStateCopyWith<_LoadingTaskState> get copyWith =>
      __$LoadingTaskStateCopyWithImpl<_LoadingTaskState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(List<TaskModel> payload, String error),
    @required TResult error(List<TaskModel> payload, String error),
    @required TResult loadingTask(List<TaskModel> payload, String error),
    @required TResult taskUpdated(List<TaskModel> payload, String error),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingTask != null);
    assert(taskUpdated != null);
    return loadingTask(payload, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<TaskModel> payload, String error),
    TResult error(List<TaskModel> payload, String error),
    TResult loadingTask(List<TaskModel> payload, String error),
    TResult taskUpdated(List<TaskModel> payload, String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingTask != null) {
      return loadingTask(payload, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialTaskState value),
    @required TResult error(_ErrorTaskState value),
    @required TResult loadingTask(_LoadingTaskState value),
    @required TResult taskUpdated(_LoadedTaskState value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingTask != null);
    assert(taskUpdated != null);
    return loadingTask(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialTaskState value),
    TResult error(_ErrorTaskState value),
    TResult loadingTask(_LoadingTaskState value),
    TResult taskUpdated(_LoadedTaskState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingTask != null) {
      return loadingTask(this);
    }
    return orElse();
  }
}

abstract class _LoadingTaskState implements TaskState {
  const factory _LoadingTaskState(
      {@required List<TaskModel> payload,
      @required String error}) = _$_LoadingTaskState;

  @override
  List<TaskModel> get payload;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$LoadingTaskStateCopyWith<_LoadingTaskState> get copyWith;
}

/// @nodoc
abstract class _$LoadedTaskStateCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$LoadedTaskStateCopyWith(
          _LoadedTaskState value, $Res Function(_LoadedTaskState) then) =
      __$LoadedTaskStateCopyWithImpl<$Res>;
  @override
  $Res call({List<TaskModel> payload, String error});
}

/// @nodoc
class __$LoadedTaskStateCopyWithImpl<$Res> extends _$TaskStateCopyWithImpl<$Res>
    implements _$LoadedTaskStateCopyWith<$Res> {
  __$LoadedTaskStateCopyWithImpl(
      _LoadedTaskState _value, $Res Function(_LoadedTaskState) _then)
      : super(_value, (v) => _then(v as _LoadedTaskState));

  @override
  _LoadedTaskState get _value => super._value as _LoadedTaskState;

  @override
  $Res call({
    Object payload = freezed,
    Object error = freezed,
  }) {
    return _then(_LoadedTaskState(
      payload: payload == freezed ? _value.payload : payload as List<TaskModel>,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$_LoadedTaskState implements _LoadedTaskState {
  const _$_LoadedTaskState({@required this.payload, @required this.error})
      : assert(payload != null),
        assert(error != null);

  @override
  final List<TaskModel> payload;
  @override
  final String error;

  @override
  String toString() {
    return 'TaskState.taskUpdated(payload: $payload, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadedTaskState &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality()
                    .equals(other.payload, payload)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(payload) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$LoadedTaskStateCopyWith<_LoadedTaskState> get copyWith =>
      __$LoadedTaskStateCopyWithImpl<_LoadedTaskState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(List<TaskModel> payload, String error),
    @required TResult error(List<TaskModel> payload, String error),
    @required TResult loadingTask(List<TaskModel> payload, String error),
    @required TResult taskUpdated(List<TaskModel> payload, String error),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingTask != null);
    assert(taskUpdated != null);
    return taskUpdated(payload, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<TaskModel> payload, String error),
    TResult error(List<TaskModel> payload, String error),
    TResult loadingTask(List<TaskModel> payload, String error),
    TResult taskUpdated(List<TaskModel> payload, String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (taskUpdated != null) {
      return taskUpdated(payload, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialTaskState value),
    @required TResult error(_ErrorTaskState value),
    @required TResult loadingTask(_LoadingTaskState value),
    @required TResult taskUpdated(_LoadedTaskState value),
  }) {
    assert(initial != null);
    assert(error != null);
    assert(loadingTask != null);
    assert(taskUpdated != null);
    return taskUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialTaskState value),
    TResult error(_ErrorTaskState value),
    TResult loadingTask(_LoadingTaskState value),
    TResult taskUpdated(_LoadedTaskState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (taskUpdated != null) {
      return taskUpdated(this);
    }
    return orElse();
  }
}

abstract class _LoadedTaskState implements TaskState {
  const factory _LoadedTaskState(
      {@required List<TaskModel> payload,
      @required String error}) = _$_LoadedTaskState;

  @override
  List<TaskModel> get payload;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$LoadedTaskStateCopyWith<_LoadedTaskState> get copyWith;
}
