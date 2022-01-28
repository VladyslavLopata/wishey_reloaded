// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wish_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WishList _$WishListFromJson(Map<String, dynamic> json) {
  return _WishList.fromJson(json);
}

/// @nodoc
class _$WishListTearOff {
  const _$WishListTearOff();

  _WishList call({required List<Wish> wishes}) {
    return _WishList(
      wishes: wishes,
    );
  }

  WishList fromJson(Map<String, Object?> json) {
    return WishList.fromJson(json);
  }
}

/// @nodoc
const $WishList = _$WishListTearOff();

/// @nodoc
mixin _$WishList {
  List<Wish> get wishes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishListCopyWith<WishList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListCopyWith<$Res> {
  factory $WishListCopyWith(WishList value, $Res Function(WishList) then) =
      _$WishListCopyWithImpl<$Res>;
  $Res call({List<Wish> wishes});
}

/// @nodoc
class _$WishListCopyWithImpl<$Res> implements $WishListCopyWith<$Res> {
  _$WishListCopyWithImpl(this._value, this._then);

  final WishList _value;
  // ignore: unused_field
  final $Res Function(WishList) _then;

  @override
  $Res call({
    Object? wishes = freezed,
  }) {
    return _then(_value.copyWith(
      wishes: wishes == freezed
          ? _value.wishes
          : wishes // ignore: cast_nullable_to_non_nullable
              as List<Wish>,
    ));
  }
}

/// @nodoc
abstract class _$WishListCopyWith<$Res> implements $WishListCopyWith<$Res> {
  factory _$WishListCopyWith(_WishList value, $Res Function(_WishList) then) =
      __$WishListCopyWithImpl<$Res>;
  @override
  $Res call({List<Wish> wishes});
}

/// @nodoc
class __$WishListCopyWithImpl<$Res> extends _$WishListCopyWithImpl<$Res>
    implements _$WishListCopyWith<$Res> {
  __$WishListCopyWithImpl(_WishList _value, $Res Function(_WishList) _then)
      : super(_value, (v) => _then(v as _WishList));

  @override
  _WishList get _value => super._value as _WishList;

  @override
  $Res call({
    Object? wishes = freezed,
  }) {
    return _then(_WishList(
      wishes: wishes == freezed
          ? _value.wishes
          : wishes // ignore: cast_nullable_to_non_nullable
              as List<Wish>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WishList implements _WishList {
  const _$_WishList({required this.wishes});

  factory _$_WishList.fromJson(Map<String, dynamic> json) =>
      _$$_WishListFromJson(json);

  @override
  final List<Wish> wishes;

  @override
  String toString() {
    return 'WishList(wishes: $wishes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WishList &&
            const DeepCollectionEquality().equals(other.wishes, wishes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(wishes));

  @JsonKey(ignore: true)
  @override
  _$WishListCopyWith<_WishList> get copyWith =>
      __$WishListCopyWithImpl<_WishList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WishListToJson(this);
  }
}

abstract class _WishList implements WishList {
  const factory _WishList({required List<Wish> wishes}) = _$_WishList;

  factory _WishList.fromJson(Map<String, dynamic> json) = _$_WishList.fromJson;

  @override
  List<Wish> get wishes;
  @override
  @JsonKey(ignore: true)
  _$WishListCopyWith<_WishList> get copyWith =>
      throw _privateConstructorUsedError;
}

Wish _$WishFromJson(Map<String, dynamic> json) {
  return _Wish.fromJson(json);
}

/// @nodoc
class _$WishTearOff {
  const _$WishTearOff();

  _Wish call(
      {@HiveField(0) required String topic,
      @HiveField(1) required String title,
      @HiveField(2) String? note,
      @HiveField(3) String? price,
      @HiveField(4) String? link}) {
    return _Wish(
      topic: topic,
      title: title,
      note: note,
      price: price,
      link: link,
    );
  }

  Wish fromJson(Map<String, Object?> json) {
    return Wish.fromJson(json);
  }
}

/// @nodoc
const $Wish = _$WishTearOff();

/// @nodoc
mixin _$Wish {
  @HiveField(0)
  String get topic => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get note => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get price => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishCopyWith<Wish> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishCopyWith<$Res> {
  factory $WishCopyWith(Wish value, $Res Function(Wish) then) =
      _$WishCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String topic,
      @HiveField(1) String title,
      @HiveField(2) String? note,
      @HiveField(3) String? price,
      @HiveField(4) String? link});
}

/// @nodoc
class _$WishCopyWithImpl<$Res> implements $WishCopyWith<$Res> {
  _$WishCopyWithImpl(this._value, this._then);

  final Wish _value;
  // ignore: unused_field
  final $Res Function(Wish) _then;

  @override
  $Res call({
    Object? topic = freezed,
    Object? title = freezed,
    Object? note = freezed,
    Object? price = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$WishCopyWith<$Res> implements $WishCopyWith<$Res> {
  factory _$WishCopyWith(_Wish value, $Res Function(_Wish) then) =
      __$WishCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String topic,
      @HiveField(1) String title,
      @HiveField(2) String? note,
      @HiveField(3) String? price,
      @HiveField(4) String? link});
}

/// @nodoc
class __$WishCopyWithImpl<$Res> extends _$WishCopyWithImpl<$Res>
    implements _$WishCopyWith<$Res> {
  __$WishCopyWithImpl(_Wish _value, $Res Function(_Wish) _then)
      : super(_value, (v) => _then(v as _Wish));

  @override
  _Wish get _value => super._value as _Wish;

  @override
  $Res call({
    Object? topic = freezed,
    Object? title = freezed,
    Object? note = freezed,
    Object? price = freezed,
    Object? link = freezed,
  }) {
    return _then(_Wish(
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0, adapterName: 'WishAdapter')
class _$_Wish implements _Wish {
  const _$_Wish(
      {@HiveField(0) required this.topic,
      @HiveField(1) required this.title,
      @HiveField(2) this.note,
      @HiveField(3) this.price,
      @HiveField(4) this.link});

  factory _$_Wish.fromJson(Map<String, dynamic> json) => _$$_WishFromJson(json);

  @override
  @HiveField(0)
  final String topic;
  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  final String? note;
  @override
  @HiveField(3)
  final String? price;
  @override
  @HiveField(4)
  final String? link;

  @override
  String toString() {
    return 'Wish(topic: $topic, title: $title, note: $note, price: $price, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Wish &&
            const DeepCollectionEquality().equals(other.topic, topic) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(topic),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$WishCopyWith<_Wish> get copyWith =>
      __$WishCopyWithImpl<_Wish>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WishToJson(this);
  }
}

abstract class _Wish implements Wish {
  const factory _Wish(
      {@HiveField(0) required String topic,
      @HiveField(1) required String title,
      @HiveField(2) String? note,
      @HiveField(3) String? price,
      @HiveField(4) String? link}) = _$_Wish;

  factory _Wish.fromJson(Map<String, dynamic> json) = _$_Wish.fromJson;

  @override
  @HiveField(0)
  String get topic;
  @override
  @HiveField(1)
  String get title;
  @override
  @HiveField(2)
  String? get note;
  @override
  @HiveField(3)
  String? get price;
  @override
  @HiveField(4)
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$WishCopyWith<_Wish> get copyWith => throw _privateConstructorUsedError;
}
