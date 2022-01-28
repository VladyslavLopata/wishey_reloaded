import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'wish_list.freezed.dart';
part 'wish_list.g.dart';

@freezed
class WishList with _$WishList {
  const factory WishList({
    required List<Wish> wishes,
  }) = _WishList;

  factory WishList.fromJson(Map<String, dynamic> json) =>
      _$WishListFromJson(json);
}

@freezed
class Wish with _$Wish {
  @HiveType(typeId: 0)
  const factory Wish({
    @HiveField(0) required String topic,
    @HiveField(1) required String title,
    @HiveField(2) String? note,
    @HiveField(3) String? price,
    @HiveField(4) String? link,
  }) = _Wish;

  factory Wish.fromJson(Map<String, dynamic> json) => _$WishFromJson(json);
}
