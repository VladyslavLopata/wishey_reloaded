// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wishlist_board_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TopicsBoardStateTearOff {
  const _$TopicsBoardStateTearOff();

  InitialTopicsBoardState initial() {
    return const InitialTopicsBoardState();
  }

  LoadingTopicsBoardState loading() {
    return const LoadingTopicsBoardState();
  }

  LoadedTopicsBoardState loaded({required List<String> topics}) {
    return LoadedTopicsBoardState(
      topics: topics,
    );
  }
}

/// @nodoc
const $TopicsBoardState = _$TopicsBoardStateTearOff();

/// @nodoc
mixin _$TopicsBoardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> topics) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> topics)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> topics)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTopicsBoardState value) initial,
    required TResult Function(LoadingTopicsBoardState value) loading,
    required TResult Function(LoadedTopicsBoardState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialTopicsBoardState value)? initial,
    TResult Function(LoadingTopicsBoardState value)? loading,
    TResult Function(LoadedTopicsBoardState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTopicsBoardState value)? initial,
    TResult Function(LoadingTopicsBoardState value)? loading,
    TResult Function(LoadedTopicsBoardState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicsBoardStateCopyWith<$Res> {
  factory $TopicsBoardStateCopyWith(
          TopicsBoardState value, $Res Function(TopicsBoardState) then) =
      _$TopicsBoardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TopicsBoardStateCopyWithImpl<$Res>
    implements $TopicsBoardStateCopyWith<$Res> {
  _$TopicsBoardStateCopyWithImpl(this._value, this._then);

  final TopicsBoardState _value;
  // ignore: unused_field
  final $Res Function(TopicsBoardState) _then;
}

/// @nodoc
abstract class $InitialTopicsBoardStateCopyWith<$Res> {
  factory $InitialTopicsBoardStateCopyWith(InitialTopicsBoardState value,
          $Res Function(InitialTopicsBoardState) then) =
      _$InitialTopicsBoardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialTopicsBoardStateCopyWithImpl<$Res>
    extends _$TopicsBoardStateCopyWithImpl<$Res>
    implements $InitialTopicsBoardStateCopyWith<$Res> {
  _$InitialTopicsBoardStateCopyWithImpl(InitialTopicsBoardState _value,
      $Res Function(InitialTopicsBoardState) _then)
      : super(_value, (v) => _then(v as InitialTopicsBoardState));

  @override
  InitialTopicsBoardState get _value => super._value as InitialTopicsBoardState;
}

/// @nodoc

class _$InitialTopicsBoardState implements InitialTopicsBoardState {
  const _$InitialTopicsBoardState();

  @override
  String toString() {
    return 'TopicsBoardState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialTopicsBoardState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> topics) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> topics)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> topics)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTopicsBoardState value) initial,
    required TResult Function(LoadingTopicsBoardState value) loading,
    required TResult Function(LoadedTopicsBoardState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialTopicsBoardState value)? initial,
    TResult Function(LoadingTopicsBoardState value)? loading,
    TResult Function(LoadedTopicsBoardState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTopicsBoardState value)? initial,
    TResult Function(LoadingTopicsBoardState value)? loading,
    TResult Function(LoadedTopicsBoardState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialTopicsBoardState implements TopicsBoardState {
  const factory InitialTopicsBoardState() = _$InitialTopicsBoardState;
}

/// @nodoc
abstract class $LoadingTopicsBoardStateCopyWith<$Res> {
  factory $LoadingTopicsBoardStateCopyWith(LoadingTopicsBoardState value,
          $Res Function(LoadingTopicsBoardState) then) =
      _$LoadingTopicsBoardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingTopicsBoardStateCopyWithImpl<$Res>
    extends _$TopicsBoardStateCopyWithImpl<$Res>
    implements $LoadingTopicsBoardStateCopyWith<$Res> {
  _$LoadingTopicsBoardStateCopyWithImpl(LoadingTopicsBoardState _value,
      $Res Function(LoadingTopicsBoardState) _then)
      : super(_value, (v) => _then(v as LoadingTopicsBoardState));

  @override
  LoadingTopicsBoardState get _value => super._value as LoadingTopicsBoardState;
}

/// @nodoc

class _$LoadingTopicsBoardState implements LoadingTopicsBoardState {
  const _$LoadingTopicsBoardState();

  @override
  String toString() {
    return 'TopicsBoardState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingTopicsBoardState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> topics) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> topics)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> topics)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTopicsBoardState value) initial,
    required TResult Function(LoadingTopicsBoardState value) loading,
    required TResult Function(LoadedTopicsBoardState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialTopicsBoardState value)? initial,
    TResult Function(LoadingTopicsBoardState value)? loading,
    TResult Function(LoadedTopicsBoardState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTopicsBoardState value)? initial,
    TResult Function(LoadingTopicsBoardState value)? loading,
    TResult Function(LoadedTopicsBoardState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingTopicsBoardState implements TopicsBoardState {
  const factory LoadingTopicsBoardState() = _$LoadingTopicsBoardState;
}

/// @nodoc
abstract class $LoadedTopicsBoardStateCopyWith<$Res> {
  factory $LoadedTopicsBoardStateCopyWith(LoadedTopicsBoardState value,
          $Res Function(LoadedTopicsBoardState) then) =
      _$LoadedTopicsBoardStateCopyWithImpl<$Res>;
  $Res call({List<String> topics});
}

/// @nodoc
class _$LoadedTopicsBoardStateCopyWithImpl<$Res>
    extends _$TopicsBoardStateCopyWithImpl<$Res>
    implements $LoadedTopicsBoardStateCopyWith<$Res> {
  _$LoadedTopicsBoardStateCopyWithImpl(LoadedTopicsBoardState _value,
      $Res Function(LoadedTopicsBoardState) _then)
      : super(_value, (v) => _then(v as LoadedTopicsBoardState));

  @override
  LoadedTopicsBoardState get _value => super._value as LoadedTopicsBoardState;

  @override
  $Res call({
    Object? topics = freezed,
  }) {
    return _then(LoadedTopicsBoardState(
      topics: topics == freezed
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$LoadedTopicsBoardState implements LoadedTopicsBoardState {
  const _$LoadedTopicsBoardState({required this.topics});

  @override
  final List<String> topics;

  @override
  String toString() {
    return 'TopicsBoardState.loaded(topics: $topics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedTopicsBoardState &&
            const DeepCollectionEquality().equals(other.topics, topics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(topics));

  @JsonKey(ignore: true)
  @override
  $LoadedTopicsBoardStateCopyWith<LoadedTopicsBoardState> get copyWith =>
      _$LoadedTopicsBoardStateCopyWithImpl<LoadedTopicsBoardState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<String> topics) loaded,
  }) {
    return loaded(topics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> topics)? loaded,
  }) {
    return loaded?.call(topics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<String> topics)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(topics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialTopicsBoardState value) initial,
    required TResult Function(LoadingTopicsBoardState value) loading,
    required TResult Function(LoadedTopicsBoardState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialTopicsBoardState value)? initial,
    TResult Function(LoadingTopicsBoardState value)? loading,
    TResult Function(LoadedTopicsBoardState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialTopicsBoardState value)? initial,
    TResult Function(LoadingTopicsBoardState value)? loading,
    TResult Function(LoadedTopicsBoardState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedTopicsBoardState implements TopicsBoardState {
  const factory LoadedTopicsBoardState({required List<String> topics}) =
      _$LoadedTopicsBoardState;

  List<String> get topics;
  @JsonKey(ignore: true)
  $LoadedTopicsBoardStateCopyWith<LoadedTopicsBoardState> get copyWith =>
      throw _privateConstructorUsedError;
}
