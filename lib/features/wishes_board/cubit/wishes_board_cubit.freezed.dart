// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wishes_board_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WishesBoardStateTearOff {
  const _$WishesBoardStateTearOff();

  InitialWishesBoardState initial() {
    return const InitialWishesBoardState();
  }

  LoadingWishesBoardState loading() {
    return const LoadingWishesBoardState();
  }

  LoadedWishesBoardState loaded({required List<Wish> wishes}) {
    return LoadedWishesBoardState(
      wishes: wishes,
    );
  }

  ErrorWishesBoardState error(Failure error) {
    return ErrorWishesBoardState(
      error,
    );
  }
}

/// @nodoc
const $WishesBoardState = _$WishesBoardStateTearOff();

/// @nodoc
mixin _$WishesBoardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Wish> wishes) loaded,
    required TResult Function(Failure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Wish> wishes)? loaded,
    TResult Function(Failure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Wish> wishes)? loaded,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialWishesBoardState value) initial,
    required TResult Function(LoadingWishesBoardState value) loading,
    required TResult Function(LoadedWishesBoardState value) loaded,
    required TResult Function(ErrorWishesBoardState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialWishesBoardState value)? initial,
    TResult Function(LoadingWishesBoardState value)? loading,
    TResult Function(LoadedWishesBoardState value)? loaded,
    TResult Function(ErrorWishesBoardState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialWishesBoardState value)? initial,
    TResult Function(LoadingWishesBoardState value)? loading,
    TResult Function(LoadedWishesBoardState value)? loaded,
    TResult Function(ErrorWishesBoardState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishesBoardStateCopyWith<$Res> {
  factory $WishesBoardStateCopyWith(
          WishesBoardState value, $Res Function(WishesBoardState) then) =
      _$WishesBoardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WishesBoardStateCopyWithImpl<$Res>
    implements $WishesBoardStateCopyWith<$Res> {
  _$WishesBoardStateCopyWithImpl(this._value, this._then);

  final WishesBoardState _value;
  // ignore: unused_field
  final $Res Function(WishesBoardState) _then;
}

/// @nodoc
abstract class $InitialWishesBoardStateCopyWith<$Res> {
  factory $InitialWishesBoardStateCopyWith(InitialWishesBoardState value,
          $Res Function(InitialWishesBoardState) then) =
      _$InitialWishesBoardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialWishesBoardStateCopyWithImpl<$Res>
    extends _$WishesBoardStateCopyWithImpl<$Res>
    implements $InitialWishesBoardStateCopyWith<$Res> {
  _$InitialWishesBoardStateCopyWithImpl(InitialWishesBoardState _value,
      $Res Function(InitialWishesBoardState) _then)
      : super(_value, (v) => _then(v as InitialWishesBoardState));

  @override
  InitialWishesBoardState get _value => super._value as InitialWishesBoardState;
}

/// @nodoc

class _$InitialWishesBoardState implements InitialWishesBoardState {
  const _$InitialWishesBoardState();

  @override
  String toString() {
    return 'WishesBoardState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialWishesBoardState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Wish> wishes) loaded,
    required TResult Function(Failure error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Wish> wishes)? loaded,
    TResult Function(Failure error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Wish> wishes)? loaded,
    TResult Function(Failure error)? error,
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
    required TResult Function(InitialWishesBoardState value) initial,
    required TResult Function(LoadingWishesBoardState value) loading,
    required TResult Function(LoadedWishesBoardState value) loaded,
    required TResult Function(ErrorWishesBoardState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialWishesBoardState value)? initial,
    TResult Function(LoadingWishesBoardState value)? loading,
    TResult Function(LoadedWishesBoardState value)? loaded,
    TResult Function(ErrorWishesBoardState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialWishesBoardState value)? initial,
    TResult Function(LoadingWishesBoardState value)? loading,
    TResult Function(LoadedWishesBoardState value)? loaded,
    TResult Function(ErrorWishesBoardState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialWishesBoardState implements WishesBoardState {
  const factory InitialWishesBoardState() = _$InitialWishesBoardState;
}

/// @nodoc
abstract class $LoadingWishesBoardStateCopyWith<$Res> {
  factory $LoadingWishesBoardStateCopyWith(LoadingWishesBoardState value,
          $Res Function(LoadingWishesBoardState) then) =
      _$LoadingWishesBoardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingWishesBoardStateCopyWithImpl<$Res>
    extends _$WishesBoardStateCopyWithImpl<$Res>
    implements $LoadingWishesBoardStateCopyWith<$Res> {
  _$LoadingWishesBoardStateCopyWithImpl(LoadingWishesBoardState _value,
      $Res Function(LoadingWishesBoardState) _then)
      : super(_value, (v) => _then(v as LoadingWishesBoardState));

  @override
  LoadingWishesBoardState get _value => super._value as LoadingWishesBoardState;
}

/// @nodoc

class _$LoadingWishesBoardState implements LoadingWishesBoardState {
  const _$LoadingWishesBoardState();

  @override
  String toString() {
    return 'WishesBoardState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingWishesBoardState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Wish> wishes) loaded,
    required TResult Function(Failure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Wish> wishes)? loaded,
    TResult Function(Failure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Wish> wishes)? loaded,
    TResult Function(Failure error)? error,
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
    required TResult Function(InitialWishesBoardState value) initial,
    required TResult Function(LoadingWishesBoardState value) loading,
    required TResult Function(LoadedWishesBoardState value) loaded,
    required TResult Function(ErrorWishesBoardState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialWishesBoardState value)? initial,
    TResult Function(LoadingWishesBoardState value)? loading,
    TResult Function(LoadedWishesBoardState value)? loaded,
    TResult Function(ErrorWishesBoardState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialWishesBoardState value)? initial,
    TResult Function(LoadingWishesBoardState value)? loading,
    TResult Function(LoadedWishesBoardState value)? loaded,
    TResult Function(ErrorWishesBoardState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingWishesBoardState implements WishesBoardState {
  const factory LoadingWishesBoardState() = _$LoadingWishesBoardState;
}

/// @nodoc
abstract class $LoadedWishesBoardStateCopyWith<$Res> {
  factory $LoadedWishesBoardStateCopyWith(LoadedWishesBoardState value,
          $Res Function(LoadedWishesBoardState) then) =
      _$LoadedWishesBoardStateCopyWithImpl<$Res>;
  $Res call({List<Wish> wishes});
}

/// @nodoc
class _$LoadedWishesBoardStateCopyWithImpl<$Res>
    extends _$WishesBoardStateCopyWithImpl<$Res>
    implements $LoadedWishesBoardStateCopyWith<$Res> {
  _$LoadedWishesBoardStateCopyWithImpl(LoadedWishesBoardState _value,
      $Res Function(LoadedWishesBoardState) _then)
      : super(_value, (v) => _then(v as LoadedWishesBoardState));

  @override
  LoadedWishesBoardState get _value => super._value as LoadedWishesBoardState;

  @override
  $Res call({
    Object? wishes = freezed,
  }) {
    return _then(LoadedWishesBoardState(
      wishes: wishes == freezed
          ? _value.wishes
          : wishes // ignore: cast_nullable_to_non_nullable
              as List<Wish>,
    ));
  }
}

/// @nodoc

class _$LoadedWishesBoardState implements LoadedWishesBoardState {
  const _$LoadedWishesBoardState({required this.wishes});

  @override
  final List<Wish> wishes;

  @override
  String toString() {
    return 'WishesBoardState.loaded(wishes: $wishes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedWishesBoardState &&
            const DeepCollectionEquality().equals(other.wishes, wishes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(wishes));

  @JsonKey(ignore: true)
  @override
  $LoadedWishesBoardStateCopyWith<LoadedWishesBoardState> get copyWith =>
      _$LoadedWishesBoardStateCopyWithImpl<LoadedWishesBoardState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Wish> wishes) loaded,
    required TResult Function(Failure error) error,
  }) {
    return loaded(wishes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Wish> wishes)? loaded,
    TResult Function(Failure error)? error,
  }) {
    return loaded?.call(wishes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Wish> wishes)? loaded,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(wishes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialWishesBoardState value) initial,
    required TResult Function(LoadingWishesBoardState value) loading,
    required TResult Function(LoadedWishesBoardState value) loaded,
    required TResult Function(ErrorWishesBoardState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialWishesBoardState value)? initial,
    TResult Function(LoadingWishesBoardState value)? loading,
    TResult Function(LoadedWishesBoardState value)? loaded,
    TResult Function(ErrorWishesBoardState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialWishesBoardState value)? initial,
    TResult Function(LoadingWishesBoardState value)? loading,
    TResult Function(LoadedWishesBoardState value)? loaded,
    TResult Function(ErrorWishesBoardState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedWishesBoardState implements WishesBoardState {
  const factory LoadedWishesBoardState({required List<Wish> wishes}) =
      _$LoadedWishesBoardState;

  List<Wish> get wishes;
  @JsonKey(ignore: true)
  $LoadedWishesBoardStateCopyWith<LoadedWishesBoardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorWishesBoardStateCopyWith<$Res> {
  factory $ErrorWishesBoardStateCopyWith(ErrorWishesBoardState value,
          $Res Function(ErrorWishesBoardState) then) =
      _$ErrorWishesBoardStateCopyWithImpl<$Res>;
  $Res call({Failure error});

  $FailureCopyWith<$Res> get error;
}

/// @nodoc
class _$ErrorWishesBoardStateCopyWithImpl<$Res>
    extends _$WishesBoardStateCopyWithImpl<$Res>
    implements $ErrorWishesBoardStateCopyWith<$Res> {
  _$ErrorWishesBoardStateCopyWithImpl(
      ErrorWishesBoardState _value, $Res Function(ErrorWishesBoardState) _then)
      : super(_value, (v) => _then(v as ErrorWishesBoardState));

  @override
  ErrorWishesBoardState get _value => super._value as ErrorWishesBoardState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ErrorWishesBoardState(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get error {
    return $FailureCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ErrorWishesBoardState implements ErrorWishesBoardState {
  const _$ErrorWishesBoardState(this.error);

  @override
  final Failure error;

  @override
  String toString() {
    return 'WishesBoardState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorWishesBoardState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $ErrorWishesBoardStateCopyWith<ErrorWishesBoardState> get copyWith =>
      _$ErrorWishesBoardStateCopyWithImpl<ErrorWishesBoardState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Wish> wishes) loaded,
    required TResult Function(Failure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Wish> wishes)? loaded,
    TResult Function(Failure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Wish> wishes)? loaded,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialWishesBoardState value) initial,
    required TResult Function(LoadingWishesBoardState value) loading,
    required TResult Function(LoadedWishesBoardState value) loaded,
    required TResult Function(ErrorWishesBoardState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialWishesBoardState value)? initial,
    TResult Function(LoadingWishesBoardState value)? loading,
    TResult Function(LoadedWishesBoardState value)? loaded,
    TResult Function(ErrorWishesBoardState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialWishesBoardState value)? initial,
    TResult Function(LoadingWishesBoardState value)? loading,
    TResult Function(LoadedWishesBoardState value)? loaded,
    TResult Function(ErrorWishesBoardState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorWishesBoardState implements WishesBoardState {
  const factory ErrorWishesBoardState(Failure error) = _$ErrorWishesBoardState;

  Failure get error;
  @JsonKey(ignore: true)
  $ErrorWishesBoardStateCopyWith<ErrorWishesBoardState> get copyWith =>
      throw _privateConstructorUsedError;
}
