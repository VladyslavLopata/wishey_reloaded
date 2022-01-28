// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'loaded_state_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoadedStateViewModelTearOff {
  const _$LoadedStateViewModelTearOff();

  _LoadedStateViewModel call(
      {List<WishField> fields = const [
        TopicWishField(),
        TitleWishField(),
        NoteWishField(),
        PriceWishField(),
        LinkWishField()
      ]}) {
    return _LoadedStateViewModel(
      fields: fields,
    );
  }
}

/// @nodoc
const $LoadedStateViewModel = _$LoadedStateViewModelTearOff();

/// @nodoc
mixin _$LoadedStateViewModel {
  List<WishField> get fields => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoadedStateViewModelCopyWith<LoadedStateViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedStateViewModelCopyWith<$Res> {
  factory $LoadedStateViewModelCopyWith(LoadedStateViewModel value,
          $Res Function(LoadedStateViewModel) then) =
      _$LoadedStateViewModelCopyWithImpl<$Res>;
  $Res call({List<WishField> fields});
}

/// @nodoc
class _$LoadedStateViewModelCopyWithImpl<$Res>
    implements $LoadedStateViewModelCopyWith<$Res> {
  _$LoadedStateViewModelCopyWithImpl(this._value, this._then);

  final LoadedStateViewModel _value;
  // ignore: unused_field
  final $Res Function(LoadedStateViewModel) _then;

  @override
  $Res call({
    Object? fields = freezed,
  }) {
    return _then(_value.copyWith(
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<WishField>,
    ));
  }
}

/// @nodoc
abstract class _$LoadedStateViewModelCopyWith<$Res>
    implements $LoadedStateViewModelCopyWith<$Res> {
  factory _$LoadedStateViewModelCopyWith(_LoadedStateViewModel value,
          $Res Function(_LoadedStateViewModel) then) =
      __$LoadedStateViewModelCopyWithImpl<$Res>;
  @override
  $Res call({List<WishField> fields});
}

/// @nodoc
class __$LoadedStateViewModelCopyWithImpl<$Res>
    extends _$LoadedStateViewModelCopyWithImpl<$Res>
    implements _$LoadedStateViewModelCopyWith<$Res> {
  __$LoadedStateViewModelCopyWithImpl(
      _LoadedStateViewModel _value, $Res Function(_LoadedStateViewModel) _then)
      : super(_value, (v) => _then(v as _LoadedStateViewModel));

  @override
  _LoadedStateViewModel get _value => super._value as _LoadedStateViewModel;

  @override
  $Res call({
    Object? fields = freezed,
  }) {
    return _then(_LoadedStateViewModel(
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<WishField>,
    ));
  }
}

/// @nodoc

class _$_LoadedStateViewModel implements _LoadedStateViewModel {
  const _$_LoadedStateViewModel(
      {this.fields = const [
        TopicWishField(),
        TitleWishField(),
        NoteWishField(),
        PriceWishField(),
        LinkWishField()
      ]});

  @JsonKey()
  @override
  final List<WishField> fields;

  @override
  String toString() {
    return 'LoadedStateViewModel(fields: $fields)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadedStateViewModel &&
            const DeepCollectionEquality().equals(other.fields, fields));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fields));

  @JsonKey(ignore: true)
  @override
  _$LoadedStateViewModelCopyWith<_LoadedStateViewModel> get copyWith =>
      __$LoadedStateViewModelCopyWithImpl<_LoadedStateViewModel>(
          this, _$identity);
}

abstract class _LoadedStateViewModel implements LoadedStateViewModel {
  const factory _LoadedStateViewModel({List<WishField> fields}) =
      _$_LoadedStateViewModel;

  @override
  List<WishField> get fields;
  @override
  @JsonKey(ignore: true)
  _$LoadedStateViewModelCopyWith<_LoadedStateViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WishFieldTearOff {
  const _$WishFieldTearOff();

  TopicWishField topic({String content = ''}) {
    return TopicWishField(
      content: content,
    );
  }

  TitleWishField title({String content = ''}) {
    return TitleWishField(
      content: content,
    );
  }

  NoteWishField note({String content = ''}) {
    return NoteWishField(
      content: content,
    );
  }

  PriceWishField price({String content = ''}) {
    return PriceWishField(
      content: content,
    );
  }

  LinkWishField link({String content = ''}) {
    return LinkWishField(
      content: content,
    );
  }
}

/// @nodoc
const $WishField = _$WishFieldTearOff();

/// @nodoc
mixin _$WishField {
  String get content => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) topic,
    required TResult Function(String content) title,
    required TResult Function(String content) note,
    required TResult Function(String content) price,
    required TResult Function(String content) link,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? topic,
    TResult Function(String content)? title,
    TResult Function(String content)? note,
    TResult Function(String content)? price,
    TResult Function(String content)? link,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? topic,
    TResult Function(String content)? title,
    TResult Function(String content)? note,
    TResult Function(String content)? price,
    TResult Function(String content)? link,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopicWishField value) topic,
    required TResult Function(TitleWishField value) title,
    required TResult Function(NoteWishField value) note,
    required TResult Function(PriceWishField value) price,
    required TResult Function(LinkWishField value) link,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TopicWishField value)? topic,
    TResult Function(TitleWishField value)? title,
    TResult Function(NoteWishField value)? note,
    TResult Function(PriceWishField value)? price,
    TResult Function(LinkWishField value)? link,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopicWishField value)? topic,
    TResult Function(TitleWishField value)? title,
    TResult Function(NoteWishField value)? note,
    TResult Function(PriceWishField value)? price,
    TResult Function(LinkWishField value)? link,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WishFieldCopyWith<WishField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishFieldCopyWith<$Res> {
  factory $WishFieldCopyWith(WishField value, $Res Function(WishField) then) =
      _$WishFieldCopyWithImpl<$Res>;
  $Res call({String content});
}

/// @nodoc
class _$WishFieldCopyWithImpl<$Res> implements $WishFieldCopyWith<$Res> {
  _$WishFieldCopyWithImpl(this._value, this._then);

  final WishField _value;
  // ignore: unused_field
  final $Res Function(WishField) _then;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $TopicWishFieldCopyWith<$Res>
    implements $WishFieldCopyWith<$Res> {
  factory $TopicWishFieldCopyWith(
          TopicWishField value, $Res Function(TopicWishField) then) =
      _$TopicWishFieldCopyWithImpl<$Res>;
  @override
  $Res call({String content});
}

/// @nodoc
class _$TopicWishFieldCopyWithImpl<$Res> extends _$WishFieldCopyWithImpl<$Res>
    implements $TopicWishFieldCopyWith<$Res> {
  _$TopicWishFieldCopyWithImpl(
      TopicWishField _value, $Res Function(TopicWishField) _then)
      : super(_value, (v) => _then(v as TopicWishField));

  @override
  TopicWishField get _value => super._value as TopicWishField;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(TopicWishField(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TopicWishField implements TopicWishField {
  const _$TopicWishField({this.content = ''});

  @JsonKey()
  @override
  final String content;

  @override
  String toString() {
    return 'WishField.topic(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TopicWishField &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  $TopicWishFieldCopyWith<TopicWishField> get copyWith =>
      _$TopicWishFieldCopyWithImpl<TopicWishField>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) topic,
    required TResult Function(String content) title,
    required TResult Function(String content) note,
    required TResult Function(String content) price,
    required TResult Function(String content) link,
  }) {
    return topic(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? topic,
    TResult Function(String content)? title,
    TResult Function(String content)? note,
    TResult Function(String content)? price,
    TResult Function(String content)? link,
  }) {
    return topic?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? topic,
    TResult Function(String content)? title,
    TResult Function(String content)? note,
    TResult Function(String content)? price,
    TResult Function(String content)? link,
    required TResult orElse(),
  }) {
    if (topic != null) {
      return topic(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopicWishField value) topic,
    required TResult Function(TitleWishField value) title,
    required TResult Function(NoteWishField value) note,
    required TResult Function(PriceWishField value) price,
    required TResult Function(LinkWishField value) link,
  }) {
    return topic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TopicWishField value)? topic,
    TResult Function(TitleWishField value)? title,
    TResult Function(NoteWishField value)? note,
    TResult Function(PriceWishField value)? price,
    TResult Function(LinkWishField value)? link,
  }) {
    return topic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopicWishField value)? topic,
    TResult Function(TitleWishField value)? title,
    TResult Function(NoteWishField value)? note,
    TResult Function(PriceWishField value)? price,
    TResult Function(LinkWishField value)? link,
    required TResult orElse(),
  }) {
    if (topic != null) {
      return topic(this);
    }
    return orElse();
  }
}

abstract class TopicWishField implements WishField {
  const factory TopicWishField({String content}) = _$TopicWishField;

  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  $TopicWishFieldCopyWith<TopicWishField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleWishFieldCopyWith<$Res>
    implements $WishFieldCopyWith<$Res> {
  factory $TitleWishFieldCopyWith(
          TitleWishField value, $Res Function(TitleWishField) then) =
      _$TitleWishFieldCopyWithImpl<$Res>;
  @override
  $Res call({String content});
}

/// @nodoc
class _$TitleWishFieldCopyWithImpl<$Res> extends _$WishFieldCopyWithImpl<$Res>
    implements $TitleWishFieldCopyWith<$Res> {
  _$TitleWishFieldCopyWithImpl(
      TitleWishField _value, $Res Function(TitleWishField) _then)
      : super(_value, (v) => _then(v as TitleWishField));

  @override
  TitleWishField get _value => super._value as TitleWishField;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(TitleWishField(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleWishField implements TitleWishField {
  const _$TitleWishField({this.content = ''});

  @JsonKey()
  @override
  final String content;

  @override
  String toString() {
    return 'WishField.title(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TitleWishField &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  $TitleWishFieldCopyWith<TitleWishField> get copyWith =>
      _$TitleWishFieldCopyWithImpl<TitleWishField>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) topic,
    required TResult Function(String content) title,
    required TResult Function(String content) note,
    required TResult Function(String content) price,
    required TResult Function(String content) link,
  }) {
    return title(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? topic,
    TResult Function(String content)? title,
    TResult Function(String content)? note,
    TResult Function(String content)? price,
    TResult Function(String content)? link,
  }) {
    return title?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? topic,
    TResult Function(String content)? title,
    TResult Function(String content)? note,
    TResult Function(String content)? price,
    TResult Function(String content)? link,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopicWishField value) topic,
    required TResult Function(TitleWishField value) title,
    required TResult Function(NoteWishField value) note,
    required TResult Function(PriceWishField value) price,
    required TResult Function(LinkWishField value) link,
  }) {
    return title(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TopicWishField value)? topic,
    TResult Function(TitleWishField value)? title,
    TResult Function(NoteWishField value)? note,
    TResult Function(PriceWishField value)? price,
    TResult Function(LinkWishField value)? link,
  }) {
    return title?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopicWishField value)? topic,
    TResult Function(TitleWishField value)? title,
    TResult Function(NoteWishField value)? note,
    TResult Function(PriceWishField value)? price,
    TResult Function(LinkWishField value)? link,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(this);
    }
    return orElse();
  }
}

abstract class TitleWishField implements WishField {
  const factory TitleWishField({String content}) = _$TitleWishField;

  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  $TitleWishFieldCopyWith<TitleWishField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteWishFieldCopyWith<$Res>
    implements $WishFieldCopyWith<$Res> {
  factory $NoteWishFieldCopyWith(
          NoteWishField value, $Res Function(NoteWishField) then) =
      _$NoteWishFieldCopyWithImpl<$Res>;
  @override
  $Res call({String content});
}

/// @nodoc
class _$NoteWishFieldCopyWithImpl<$Res> extends _$WishFieldCopyWithImpl<$Res>
    implements $NoteWishFieldCopyWith<$Res> {
  _$NoteWishFieldCopyWithImpl(
      NoteWishField _value, $Res Function(NoteWishField) _then)
      : super(_value, (v) => _then(v as NoteWishField));

  @override
  NoteWishField get _value => super._value as NoteWishField;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(NoteWishField(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoteWishField implements NoteWishField {
  const _$NoteWishField({this.content = ''});

  @JsonKey()
  @override
  final String content;

  @override
  String toString() {
    return 'WishField.note(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NoteWishField &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  $NoteWishFieldCopyWith<NoteWishField> get copyWith =>
      _$NoteWishFieldCopyWithImpl<NoteWishField>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) topic,
    required TResult Function(String content) title,
    required TResult Function(String content) note,
    required TResult Function(String content) price,
    required TResult Function(String content) link,
  }) {
    return note(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? topic,
    TResult Function(String content)? title,
    TResult Function(String content)? note,
    TResult Function(String content)? price,
    TResult Function(String content)? link,
  }) {
    return note?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? topic,
    TResult Function(String content)? title,
    TResult Function(String content)? note,
    TResult Function(String content)? price,
    TResult Function(String content)? link,
    required TResult orElse(),
  }) {
    if (note != null) {
      return note(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopicWishField value) topic,
    required TResult Function(TitleWishField value) title,
    required TResult Function(NoteWishField value) note,
    required TResult Function(PriceWishField value) price,
    required TResult Function(LinkWishField value) link,
  }) {
    return note(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TopicWishField value)? topic,
    TResult Function(TitleWishField value)? title,
    TResult Function(NoteWishField value)? note,
    TResult Function(PriceWishField value)? price,
    TResult Function(LinkWishField value)? link,
  }) {
    return note?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopicWishField value)? topic,
    TResult Function(TitleWishField value)? title,
    TResult Function(NoteWishField value)? note,
    TResult Function(PriceWishField value)? price,
    TResult Function(LinkWishField value)? link,
    required TResult orElse(),
  }) {
    if (note != null) {
      return note(this);
    }
    return orElse();
  }
}

abstract class NoteWishField implements WishField {
  const factory NoteWishField({String content}) = _$NoteWishField;

  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  $NoteWishFieldCopyWith<NoteWishField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceWishFieldCopyWith<$Res>
    implements $WishFieldCopyWith<$Res> {
  factory $PriceWishFieldCopyWith(
          PriceWishField value, $Res Function(PriceWishField) then) =
      _$PriceWishFieldCopyWithImpl<$Res>;
  @override
  $Res call({String content});
}

/// @nodoc
class _$PriceWishFieldCopyWithImpl<$Res> extends _$WishFieldCopyWithImpl<$Res>
    implements $PriceWishFieldCopyWith<$Res> {
  _$PriceWishFieldCopyWithImpl(
      PriceWishField _value, $Res Function(PriceWishField) _then)
      : super(_value, (v) => _then(v as PriceWishField));

  @override
  PriceWishField get _value => super._value as PriceWishField;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(PriceWishField(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PriceWishField implements PriceWishField {
  const _$PriceWishField({this.content = ''});

  @JsonKey()
  @override
  final String content;

  @override
  String toString() {
    return 'WishField.price(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceWishField &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  $PriceWishFieldCopyWith<PriceWishField> get copyWith =>
      _$PriceWishFieldCopyWithImpl<PriceWishField>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) topic,
    required TResult Function(String content) title,
    required TResult Function(String content) note,
    required TResult Function(String content) price,
    required TResult Function(String content) link,
  }) {
    return price(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? topic,
    TResult Function(String content)? title,
    TResult Function(String content)? note,
    TResult Function(String content)? price,
    TResult Function(String content)? link,
  }) {
    return price?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? topic,
    TResult Function(String content)? title,
    TResult Function(String content)? note,
    TResult Function(String content)? price,
    TResult Function(String content)? link,
    required TResult orElse(),
  }) {
    if (price != null) {
      return price(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopicWishField value) topic,
    required TResult Function(TitleWishField value) title,
    required TResult Function(NoteWishField value) note,
    required TResult Function(PriceWishField value) price,
    required TResult Function(LinkWishField value) link,
  }) {
    return price(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TopicWishField value)? topic,
    TResult Function(TitleWishField value)? title,
    TResult Function(NoteWishField value)? note,
    TResult Function(PriceWishField value)? price,
    TResult Function(LinkWishField value)? link,
  }) {
    return price?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopicWishField value)? topic,
    TResult Function(TitleWishField value)? title,
    TResult Function(NoteWishField value)? note,
    TResult Function(PriceWishField value)? price,
    TResult Function(LinkWishField value)? link,
    required TResult orElse(),
  }) {
    if (price != null) {
      return price(this);
    }
    return orElse();
  }
}

abstract class PriceWishField implements WishField {
  const factory PriceWishField({String content}) = _$PriceWishField;

  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  $PriceWishFieldCopyWith<PriceWishField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkWishFieldCopyWith<$Res>
    implements $WishFieldCopyWith<$Res> {
  factory $LinkWishFieldCopyWith(
          LinkWishField value, $Res Function(LinkWishField) then) =
      _$LinkWishFieldCopyWithImpl<$Res>;
  @override
  $Res call({String content});
}

/// @nodoc
class _$LinkWishFieldCopyWithImpl<$Res> extends _$WishFieldCopyWithImpl<$Res>
    implements $LinkWishFieldCopyWith<$Res> {
  _$LinkWishFieldCopyWithImpl(
      LinkWishField _value, $Res Function(LinkWishField) _then)
      : super(_value, (v) => _then(v as LinkWishField));

  @override
  LinkWishField get _value => super._value as LinkWishField;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(LinkWishField(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LinkWishField implements LinkWishField {
  const _$LinkWishField({this.content = ''});

  @JsonKey()
  @override
  final String content;

  @override
  String toString() {
    return 'WishField.link(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LinkWishField &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  $LinkWishFieldCopyWith<LinkWishField> get copyWith =>
      _$LinkWishFieldCopyWithImpl<LinkWishField>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content) topic,
    required TResult Function(String content) title,
    required TResult Function(String content) note,
    required TResult Function(String content) price,
    required TResult Function(String content) link,
  }) {
    return link(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content)? topic,
    TResult Function(String content)? title,
    TResult Function(String content)? note,
    TResult Function(String content)? price,
    TResult Function(String content)? link,
  }) {
    return link?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content)? topic,
    TResult Function(String content)? title,
    TResult Function(String content)? note,
    TResult Function(String content)? price,
    TResult Function(String content)? link,
    required TResult orElse(),
  }) {
    if (link != null) {
      return link(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopicWishField value) topic,
    required TResult Function(TitleWishField value) title,
    required TResult Function(NoteWishField value) note,
    required TResult Function(PriceWishField value) price,
    required TResult Function(LinkWishField value) link,
  }) {
    return link(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TopicWishField value)? topic,
    TResult Function(TitleWishField value)? title,
    TResult Function(NoteWishField value)? note,
    TResult Function(PriceWishField value)? price,
    TResult Function(LinkWishField value)? link,
  }) {
    return link?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopicWishField value)? topic,
    TResult Function(TitleWishField value)? title,
    TResult Function(NoteWishField value)? note,
    TResult Function(PriceWishField value)? price,
    TResult Function(LinkWishField value)? link,
    required TResult orElse(),
  }) {
    if (link != null) {
      return link(this);
    }
    return orElse();
  }
}

abstract class LinkWishField implements WishField {
  const factory LinkWishField({String content}) = _$LinkWishField;

  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  $LinkWishFieldCopyWith<LinkWishField> get copyWith =>
      throw _privateConstructorUsedError;
}
