import 'package:wishey/core/models/error_prone.dart';
import 'package:wishey/core/models/wish_list.dart';

abstract class WishesRepository {
  Future<ErrorProne<WishList>> getWishlist();
  Future<ErrorProne<void>> saveWish(Wish wish);
  Future<ErrorProne<void>> replaceWish({
    required Wish toReplace,
    required Wish toBeReplacedWith,
  });
}
