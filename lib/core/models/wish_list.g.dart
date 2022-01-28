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
      'wishes': instance.wishes,
    };

_$_Wish _$$_WishFromJson(Map<String, dynamic> json) => _$_Wish(
      topic: json['topic'] as String,
      title: json['title'] as String,
      note: json['note'] as String?,
      price: json['price'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$_WishToJson(_$_Wish instance) => <String, dynamic>{
      'topic': instance.topic,
      'title': instance.title,
      'note': instance.note,
      'price': instance.price,
      'link': instance.link,
    };
