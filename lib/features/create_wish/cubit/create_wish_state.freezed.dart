// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_wish_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateWishStateTearOff {
  const _$CreateWishStateTearOff();

  InitialWishState initial() {
    return const InitialWishState();
  }

  LoadingWishState loading() {
    return const LoadingWishState();
  }

  LoadedWishState loaded(
      {bool shouldShowSaveButton = false,
      bool shouldReplaceExisting = false,
      required LoadedStateViewModel viewModel}) {
    return LoadedWishState(
      shouldShowSaveButton: shouldShowSaveButton,
      shouldReplaceExisting: shouldReplaceExisting,
      viewModel: viewModel,
    );
  }

  SaveErrorWishState saveError() {
    return const SaveErrorWishState();
  }

  ServerErrorWishState serverError({required Failure failure}) {
    return ServerErrorWishState(
      failure: failure,
    );
  }
}

/// @nodoc
const $CreateWishState = _$CreateWishStateTearOff();

/// @nodoc
mixin _$CreateWishState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool shouldShowSaveButton,
            bool shouldReplaceExisting, LoadedStateViewModel viewModel)
        loaded,
    required TResult Function() saveError,
    required TResult Function(Failure failure) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool shouldShowSaveButton, bool shouldReplaceExisting,
            LoadedStateViewModel viewModel)?
        loaded,
    TResult Function()? saveError,
    TResult Function(Failure failure)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool shouldShowSaveButton, bool shouldReplaceExisting,
            LoadedStateViewModel viewModel)?
        loaded,
    TResult Function()? saveError,
    TResult Function(Failure failure)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialWishState value) initial,
    required TResult Function(LoadingWishState value) loading,
    required TResult Function(LoadedWishState value) loaded,
    required TResult Function(SaveErrorWishState value) saveError,
    required TResult Function(ServerErrorWishState value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialWishState value)? initial,
    TResult Function(LoadingWishState value)? loading,
    TResult Function(LoadedWishState value)? loaded,
    TResult Function(SaveErrorWishState value)? saveError,
    TResult Function(ServerErrorWishState value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialWishState value)? initial,
    TResult Function(LoadingWishState value)? loading,
    TResult Function(LoadedWishState value)? loaded,
    TResult Function(SaveErrorWishState value)? saveError,
    TResult Function(ServerErrorWishState value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWishStateCopyWith<$Res> {
  factory $CreateWishStateCopyWith(
          CreateWishState value, $Res Function(CreateWishState) then) =
      _$CreateWishStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateWishStateCopyWithImpl<$Res>
    implements $CreateWishStateCopyWith<$Res> {
  _$CreateWishStateCopyWithImpl(this._value, this._then);

  final CreateWishState _value;
  // ignore: unused_field
  final $Res Function(CreateWishState) _then;
}

/// @nodoc
abstract class $InitialWishStateCopyWith<$Res> {
  factory $InitialWishStateCopyWith(
          InitialWishState value, $Res Function(InitialWishState) then) =
      _$InitialWishStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialWishStateCopyWithImpl<$Res>
    extends _$CreateWishStateCopyWithImpl<$Res>
    implements $InitialWishStateCopyWith<$Res> {
  _$InitialWishStateCopyWithImpl(
      InitialWishState _value, $Res Function(InitialWishState) _then)
      : super(_value, (v) => _then(v as InitialWishState));

  @override
  InitialWishState get _value => super._value as InitialWishState;
}

/// @nodoc

class _$InitialWishState implements InitialWishState {
  const _$InitialWishState();

  @override
  String toString() {
    return 'CreateWishState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialWishState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool shouldShowSaveButton,
            bool shouldReplaceExisting, LoadedStateViewModel viewModel)
        loaded,
    required TResult Function() saveError,
    required TResult Function(Failure failure) serverError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool shouldShowSaveButton, bool shouldReplaceExisting,
            LoadedStateViewModel viewModel)?
        loaded,
    TResult Function()? saveError,
    TResult Function(Failure failure)? serverError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool shouldShowSaveButton, bool shouldReplaceExisting,
            LoadedStateViewModel viewModel)?
        loaded,
    TResult Function()? saveError,
    TResult Function(Failure failure)? serverError,
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
    required TResult Function(InitialWishState value) initial,
    required TResult Function(LoadingWishState value) loading,
    required TResult Function(LoadedWishState value) loaded,
    required TResult Function(SaveErrorWishState value) saveError,
    required TResult Function(ServerErrorWishState value) serverError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialWishState value)? initial,
    TResult Function(LoadingWishState value)? loading,
    TResult Function(LoadedWishState value)? loaded,
    TResult Function(SaveErrorWishState value)? saveError,
    TResult Function(ServerErrorWishState value)? serverError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialWishState value)? initial,
    TResult Function(LoadingWishState value)? loading,
    TResult Function(LoadedWishState value)? loaded,
    TResult Function(SaveErrorWishState value)? saveError,
    TResult Function(ServerErrorWishState value)? serverError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialWishState implements CreateWishState {
  const factory InitialWishState() = _$InitialWishState;
}

/// @nodoc
abstract class $LoadingWishStateCopyWith<$Res> {
  factory $LoadingWishStateCopyWith(
          LoadingWishState value, $Res Function(LoadingWishState) then) =
      _$LoadingWishStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingWishStateCopyWithImpl<$Res>
    extends _$CreateWishStateCopyWithImpl<$Res>
    implements $LoadingWishStateCopyWith<$Res> {
  _$LoadingWishStateCopyWithImpl(
      LoadingWishState _value, $Res Function(LoadingWishState) _then)
      : super(_value, (v) => _then(v as LoadingWishState));

  @override
  LoadingWishState get _value => super._value as LoadingWishState;
}

/// @nodoc

class _$LoadingWishState implements LoadingWishState {
  const _$LoadingWishState();

  @override
  String toString() {
    return 'CreateWishState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingWishState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool shouldShowSaveButton,
            bool shouldReplaceExisting, LoadedStateViewModel viewModel)
        loaded,
    required TResult Function() saveError,
    required TResult Function(Failure failure) serverError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool shouldShowSaveButton, bool shouldReplaceExisting,
            LoadedStateViewModel viewModel)?
        loaded,
    TResult Function()? saveError,
    TResult Function(Failure failure)? serverError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool shouldShowSaveButton, bool shouldReplaceExisting,
            LoadedStateViewModel viewModel)?
        loaded,
    TResult Function()? saveError,
    TResult Function(Failure failure)? serverError,
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
    required TResult Function(InitialWishState value) initial,
    required TResult Function(LoadingWishState value) loading,
    required TResult Function(LoadedWishState value) loaded,
    required TResult Function(SaveErrorWishState value) saveError,
    required TResult Function(ServerErrorWishState value) serverError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialWishState value)? initial,
    TResult Function(LoadingWishState value)? loading,
    TResult Function(LoadedWishState value)? loaded,
    TResult Function(SaveErrorWishState value)? saveError,
    TResult Function(ServerErrorWishState value)? serverError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialWishState value)? initial,
    TResult Function(LoadingWishState value)? loading,
    TResult Function(LoadedWishState value)? loaded,
    TResult Function(SaveErrorWishState value)? saveError,
    TResult Function(ServerErrorWishState value)? serverError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingWishState implements CreateWishState {
  const factory LoadingWishState() = _$LoadingWishState;
}

/// @nodoc
abstract class $LoadedWishStateCopyWith<$Res> {
  factory $LoadedWishStateCopyWith(
          LoadedWishState value, $Res Function(LoadedWishState) then) =
      _$LoadedWishStateCopyWithImpl<$Res>;
  $Res call(
      {bool shouldShowSaveButton,
      bool shouldReplaceExisting,
      LoadedStateViewModel viewModel});

  $LoadedStateViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class _$LoadedWishStateCopyWithImpl<$Res>
    extends _$CreateWishStateCopyWithImpl<$Res>
    implements $LoadedWishStateCopyWith<$Res> {
  _$LoadedWishStateCopyWithImpl(
      LoadedWishState _value, $Res Function(LoadedWishState) _then)
      : super(_value, (v) => _then(v as LoadedWishState));

  @override
  LoadedWishState get _value => super._value as LoadedWishState;

  @override
  $Res call({
    Object? shouldShowSaveButton = freezed,
    Object? shouldReplaceExisting = freezed,
    Object? viewModel = freezed,
  }) {
    return _then(LoadedWishState(
      shouldShowSaveButton: shouldShowSaveButton == freezed
          ? _value.shouldShowSaveButton
          : shouldShowSaveButton // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldReplaceExisting: shouldReplaceExisting == freezed
          ? _value.shouldReplaceExisting
          : shouldReplaceExisting // ignore: cast_nullable_to_non_nullable
              as bool,
      viewModel: viewModel == freezed
          ? _value.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as LoadedStateViewModel,
    ));
  }

  @override
  $LoadedStateViewModelCopyWith<$Res> get viewModel {
    return $LoadedStateViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$LoadedWishState implements LoadedWishState {
  const _$LoadedWishState(
      {this.shouldShowSaveButton = false,
      this.shouldReplaceExisting = false,
      required this.viewModel});

  @JsonKey()
  @override
  final bool shouldShowSaveButton;
  @JsonKey()
  @override
  final bool shouldReplaceExisting;
  @override
  final LoadedStateViewModel viewModel;

  @override
  String toString() {
    return 'CreateWishState.loaded(shouldShowSaveButton: $shouldShowSaveButton, shouldReplaceExisting: $shouldReplaceExisting, viewModel: $viewModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedWishState &&
            const DeepCollectionEquality()
                .equals(other.shouldShowSaveButton, shouldShowSaveButton) &&
            const DeepCollectionEquality()
                .equals(other.shouldReplaceExisting, shouldReplaceExisting) &&
            const DeepCollectionEquality().equals(other.viewModel, viewModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shouldShowSaveButton),
      const DeepCollectionEquality().hash(shouldReplaceExisting),
      const DeepCollectionEquality().hash(viewModel));

  @JsonKey(ignore: true)
  @override
  $LoadedWishStateCopyWith<LoadedWishState> get copyWith =>
      _$LoadedWishStateCopyWithImpl<LoadedWishState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool shouldShowSaveButton,
            bool shouldReplaceExisting, LoadedStateViewModel viewModel)
        loaded,
    required TResult Function() saveError,
    required TResult Function(Failure failure) serverError,
  }) {
    return loaded(shouldShowSaveButton, shouldReplaceExisting, viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool shouldShowSaveButton, bool shouldReplaceExisting,
            LoadedStateViewModel viewModel)?
        loaded,
    TResult Function()? saveError,
    TResult Function(Failure failure)? serverError,
  }) {
    return loaded?.call(shouldShowSaveButton, shouldReplaceExisting, viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool shouldShowSaveButton, bool shouldReplaceExisting,
            LoadedStateViewModel viewModel)?
        loaded,
    TResult Function()? saveError,
    TResult Function(Failure failure)? serverError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(shouldShowSaveButton, shouldReplaceExisting, viewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialWishState value) initial,
    required TResult Function(LoadingWishState value) loading,
    required TResult Function(LoadedWishState value) loaded,
    required TResult Function(SaveErrorWishState value) saveError,
    required TResult Function(ServerErrorWishState value) serverError,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialWishState value)? initial,
    TResult Function(LoadingWishState value)? loading,
    TResult Function(LoadedWishState value)? loaded,
    TResult Function(SaveErrorWishState value)? saveError,
    TResult Function(ServerErrorWishState value)? serverError,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialWishState value)? initial,
    TResult Function(LoadingWishState value)? loading,
    TResult Function(LoadedWishState value)? loaded,
    TResult Function(SaveErrorWishState value)? saveError,
    TResult Function(ServerErrorWishState value)? serverError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedWishState implements CreateWishState {
  const factory LoadedWishState(
      {bool shouldShowSaveButton,
      bool shouldReplaceExisting,
      required LoadedStateViewModel viewModel}) = _$LoadedWishState;

  bool get shouldShowSaveButton;
  bool get shouldReplaceExisting;
  LoadedStateViewModel get viewModel;
  @JsonKey(ignore: true)
  $LoadedWishStateCopyWith<LoadedWishState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveErrorWishStateCopyWith<$Res> {
  factory $SaveErrorWishStateCopyWith(
          SaveErrorWishState value, $Res Function(SaveErrorWishState) then) =
      _$SaveErrorWishStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveErrorWishStateCopyWithImpl<$Res>
    extends _$CreateWishStateCopyWithImpl<$Res>
    implements $SaveErrorWishStateCopyWith<$Res> {
  _$SaveErrorWishStateCopyWithImpl(
      SaveErrorWishState _value, $Res Function(SaveErrorWishState) _then)
      : super(_value, (v) => _then(v as SaveErrorWishState));

  @override
  SaveErrorWishState get _value => super._value as SaveErrorWishState;
}

/// @nodoc

class _$SaveErrorWishState implements SaveErrorWishState {
  const _$SaveErrorWishState();

  @override
  String toString() {
    return 'CreateWishState.saveError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SaveErrorWishState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool shouldShowSaveButton,
            bool shouldReplaceExisting, LoadedStateViewModel viewModel)
        loaded,
    required TResult Function() saveError,
    required TResult Function(Failure failure) serverError,
  }) {
    return saveError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool shouldShowSaveButton, bool shouldReplaceExisting,
            LoadedStateViewModel viewModel)?
        loaded,
    TResult Function()? saveError,
    TResult Function(Failure failure)? serverError,
  }) {
    return saveError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool shouldShowSaveButton, bool shouldReplaceExisting,
            LoadedStateViewModel viewModel)?
        loaded,
    TResult Function()? saveError,
    TResult Function(Failure failure)? serverError,
    required TResult orElse(),
  }) {
    if (saveError != null) {
      return saveError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialWishState value) initial,
    required TResult Function(LoadingWishState value) loading,
    required TResult Function(LoadedWishState value) loaded,
    required TResult Function(SaveErrorWishState value) saveError,
    required TResult Function(ServerErrorWishState value) serverError,
  }) {
    return saveError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialWishState value)? initial,
    TResult Function(LoadingWishState value)? loading,
    TResult Function(LoadedWishState value)? loaded,
    TResult Function(SaveErrorWishState value)? saveError,
    TResult Function(ServerErrorWishState value)? serverError,
  }) {
    return saveError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialWishState value)? initial,
    TResult Function(LoadingWishState value)? loading,
    TResult Function(LoadedWishState value)? loaded,
    TResult Function(SaveErrorWishState value)? saveError,
    TResult Function(ServerErrorWishState value)? serverError,
    required TResult orElse(),
  }) {
    if (saveError != null) {
      return saveError(this);
    }
    return orElse();
  }
}

abstract class SaveErrorWishState implements CreateWishState {
  const factory SaveErrorWishState() = _$SaveErrorWishState;
}

/// @nodoc
abstract class $ServerErrorWishStateCopyWith<$Res> {
  factory $ServerErrorWishStateCopyWith(ServerErrorWishState value,
          $Res Function(ServerErrorWishState) then) =
      _$ServerErrorWishStateCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$ServerErrorWishStateCopyWithImpl<$Res>
    extends _$CreateWishStateCopyWithImpl<$Res>
    implements $ServerErrorWishStateCopyWith<$Res> {
  _$ServerErrorWishStateCopyWithImpl(
      ServerErrorWishState _value, $Res Function(ServerErrorWishState) _then)
      : super(_value, (v) => _then(v as ServerErrorWishState));

  @override
  ServerErrorWishState get _value => super._value as ServerErrorWishState;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(ServerErrorWishState(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ServerErrorWishState implements ServerErrorWishState {
  const _$ServerErrorWishState({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'CreateWishState.serverError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServerErrorWishState &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  $ServerErrorWishStateCopyWith<ServerErrorWishState> get copyWith =>
      _$ServerErrorWishStateCopyWithImpl<ServerErrorWishState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool shouldShowSaveButton,
            bool shouldReplaceExisting, LoadedStateViewModel viewModel)
        loaded,
    required TResult Function() saveError,
    required TResult Function(Failure failure) serverError,
  }) {
    return serverError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool shouldShowSaveButton, bool shouldReplaceExisting,
            LoadedStateViewModel viewModel)?
        loaded,
    TResult Function()? saveError,
    TResult Function(Failure failure)? serverError,
  }) {
    return serverError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool shouldShowSaveButton, bool shouldReplaceExisting,
            LoadedStateViewModel viewModel)?
        loaded,
    TResult Function()? saveError,
    TResult Function(Failure failure)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialWishState value) initial,
    required TResult Function(LoadingWishState value) loading,
    required TResult Function(LoadedWishState value) loaded,
    required TResult Function(SaveErrorWishState value) saveError,
    required TResult Function(ServerErrorWishState value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialWishState value)? initial,
    TResult Function(LoadingWishState value)? loading,
    TResult Function(LoadedWishState value)? loaded,
    TResult Function(SaveErrorWishState value)? saveError,
    TResult Function(ServerErrorWishState value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialWishState value)? initial,
    TResult Function(LoadingWishState value)? loading,
    TResult Function(LoadedWishState value)? loaded,
    TResult Function(SaveErrorWishState value)? saveError,
    TResult Function(ServerErrorWishState value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerErrorWishState implements CreateWishState {
  const factory ServerErrorWishState({required Failure failure}) =
      _$ServerErrorWishState;

  Failure get failure;
  @JsonKey(ignore: true)
  $ServerErrorWishStateCopyWith<ServerErrorWishState> get copyWith =>
      throw _privateConstructorUsedError;
}
