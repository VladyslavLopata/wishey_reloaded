// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WishList _$$_WishListFromJson(Map<String, dynamic> json) => _$_WishList(
      wishes: (json['wishes'] as List<dynamic>)
          .map((e) => Wish.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WishListToJson(_$_WishList instance) =>
    <String, dynamic>{
      'wishes': instance.wishes.map((e) => e.toJson()).toList(),
    };

_$_Wish _$$_WishFromJson(Map<String, dynamic> json) => _$_Wish(
      id: json['id'] as int?,
      topic: json['topic'] as String,
      title: json['title'] as String,
      note: json['note'] as String?,
      price: json['price'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$_WishToJson(_$_Wish instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['topic'] = instance.topic;
  val['title'] = instance.title;
  writeNotNull('note', instance.note);
  writeNotNull('price', instance.price);
  writeNotNull('link', instance.link);
  return val;
}
