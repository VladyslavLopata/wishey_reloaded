import 'package:wishey/core/models/error_prone.dart';
import 'package:wishey/core/models/sucess.dart';
import 'package:wishey/core/models/wish_list.dart';

abstract class WishesRepository {
  Future<ErrorProne<WishList>> getWishlist();
  Future<ErrorProne<Success>> saveWish(Wish wish);
  Future<ErrorProne<Success>> replaceWish({
    required Wish toReplace,
    required Wish toBeReplacedWith,
  });
}
