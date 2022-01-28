// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish_list.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WishAdapter extends TypeAdapter<_$_Wish> {
  @override
  final int typeId = 0;

  @override
  _$_Wish read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Wish(
      topic: fields[0] as String,
      title: fields[1] as String,
      note: fields[2] as String?,
      price: fields[3] as String?,
      link: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Wish obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.topic)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.note)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.link);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WishAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
