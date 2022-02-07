// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  ServerFailure server() {
    return const ServerFailure();
  }

  DuplicateFailure duplicate() {
    return const DuplicateFailure();
  }

  SevereFailure severe() {
    return const SevereFailure();
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() server,
    required TResult Function() duplicate,
    required TResult Function() severe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? duplicate,
    TResult Function()? severe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? duplicate,
    TResult Function()? severe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) server,
    required TResult Function(DuplicateFailure value) duplicate,
    required TResult Function(SevereFailure value) severe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(DuplicateFailure value)? duplicate,
    TResult Function(SevereFailure value)? severe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(DuplicateFailure value)? duplicate,
    TResult Function(SevereFailure value)? severe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class $ServerFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(
      ServerFailure _value, $Res Function(ServerFailure) _then)
      : super(_value, (v) => _then(v as ServerFailure));

  @override
  ServerFailure get _value => super._value as ServerFailure;
}

/// @nodoc

class _$ServerFailure implements ServerFailure {
  const _$ServerFailure();

  @override
  String toString() {
    return 'Failure.server()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() server,
    required TResult Function() duplicate,
    required TResult Function() severe,
  }) {
    return server();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? duplicate,
    TResult Function()? severe,
  }) {
    return server?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? duplicate,
    TResult Function()? severe,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) server,
    required TResult Function(DuplicateFailure value) duplicate,
    required TResult Function(SevereFailure value) severe,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(DuplicateFailure value)? duplicate,
    TResult Function(SevereFailure value)? severe,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(DuplicateFailure value)? duplicate,
    TResult Function(SevereFailure value)? severe,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  const factory ServerFailure() = _$ServerFailure;
}

/// @nodoc
abstract class $DuplicateFailureCopyWith<$Res> {
  factory $DuplicateFailureCopyWith(
          DuplicateFailure value, $Res Function(DuplicateFailure) then) =
      _$DuplicateFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$DuplicateFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $DuplicateFailureCopyWith<$Res> {
  _$DuplicateFailureCopyWithImpl(
      DuplicateFailure _value, $Res Function(DuplicateFailure) _then)
      : super(_value, (v) => _then(v as DuplicateFailure));

  @override
  DuplicateFailure get _value => super._value as DuplicateFailure;
}

/// @nodoc

class _$DuplicateFailure implements DuplicateFailure {
  const _$DuplicateFailure();

  @override
  String toString() {
    return 'Failure.duplicate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DuplicateFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() server,
    required TResult Function() duplicate,
    required TResult Function() severe,
  }) {
    return duplicate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? duplicate,
    TResult Function()? severe,
  }) {
    return duplicate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? duplicate,
    TResult Function()? severe,
    required TResult orElse(),
  }) {
    if (duplicate != null) {
      return duplicate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) server,
    required TResult Function(DuplicateFailure value) duplicate,
    required TResult Function(SevereFailure value) severe,
  }) {
    return duplicate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(DuplicateFailure value)? duplicate,
    TResult Function(SevereFailure value)? severe,
  }) {
    return duplicate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(DuplicateFailure value)? duplicate,
    TResult Function(SevereFailure value)? severe,
    required TResult orElse(),
  }) {
    if (duplicate != null) {
      return duplicate(this);
    }
    return orElse();
  }
}

abstract class DuplicateFailure implements Failure {
  const factory DuplicateFailure() = _$DuplicateFailure;
}

/// @nodoc
abstract class $SevereFailureCopyWith<$Res> {
  factory $SevereFailureCopyWith(
          SevereFailure value, $Res Function(SevereFailure) then) =
      _$SevereFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$SevereFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $SevereFailureCopyWith<$Res> {
  _$SevereFailureCopyWithImpl(
      SevereFailure _value, $Res Function(SevereFailure) _then)
      : super(_value, (v) => _then(v as SevereFailure));

  @override
  SevereFailure get _value => super._value as SevereFailure;
}

/// @nodoc

class _$SevereFailure implements SevereFailure {
  const _$SevereFailure();

  @override
  String toString() {
    return 'Failure.severe()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SevereFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() server,
    required TResult Function() duplicate,
    required TResult Function() severe,
  }) {
    return severe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? duplicate,
    TResult Function()? severe,
  }) {
    return severe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? duplicate,
    TResult Function()? severe,
    required TResult orElse(),
  }) {
    if (severe != null) {
      return severe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) server,
    required TResult Function(DuplicateFailure value) duplicate,
    required TResult Function(SevereFailure value) severe,
  }) {
    return severe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(DuplicateFailure value)? duplicate,
    TResult Function(SevereFailure value)? severe,
  }) {
    return severe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? server,
    TResult Function(DuplicateFailure value)? duplicate,
    TResult Function(SevereFailure value)? severe,
    required TResult orElse(),
  }) {
    if (severe != null) {
      return severe(this);
    }
    return orElse();
  }
}

abstract class SevereFailure implements Failure {
  const factory SevereFailure() = _$SevereFailure;
}
