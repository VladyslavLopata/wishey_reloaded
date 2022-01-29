import 'package:injectable/injectable.dart';
import 'package:wishey/core/models/error_prone.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/core/repositories/wishes_repository.dart';

@LazySingleton(as: WishesRepository)
class WishesRepositoryImpl with ErrorProneMixin implements WishesRepository {
  var wishList = const WishList(
    wishes: [
      Wish(topic: 'Topic A', title: 'Title A'),
      Wish(topic: 'Topic A', title: 'Title B'),
      Wish(topic: 'Topic A', title: 'Title C'),
      Wish(topic: 'Topic B', title: 'Title A'),
      Wish(topic: 'Topic B', title: 'Title B'),
      Wish(topic: 'Topic B', title: 'Title C'),
      Wish(
          topic: 'THIS TOPIC IS REALLY BIG',
          title: 'THE TITLE IS REAAAAALLY BIG TOO'),
    ],
  );

  @override
  Future<ErrorProne<WishList>> getWishlist() async {
    return ErrorProne.success(wishList);
  }

  @override
  Future<ErrorProne<void>> saveWish(Wish wish) async => executeErrorProne(
        () => wishList = wishList.copyWith(
          wishes: wishList.wishes.followedBy([wish]).toList(),
        ),
      );

  @override
  Future<ErrorProne<void>> replaceWish({
    required Wish toReplace,
    required Wish toBeReplacedWith,
  }) async {
    return executeErrorProne(
      () => wishList = wishList.copyWith(
        wishes: wishList.wishes
            .map((wish) => wish == toReplace ? toBeReplacedWith : wish)
            .toList(),
      ),
    );
  }
}
