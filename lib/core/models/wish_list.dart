import 'package:freezed_annotation/freezed_annotation.dart';
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
  const factory Wish({
    int? id,
    required String topic,
    required String title,
    String? note,
    String? price,
    String? link,
  }) = _Wish;

  factory Wish.fromJson(Map<String, dynamic> json) => _$WishFromJson(json);
}
