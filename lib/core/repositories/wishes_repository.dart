import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:wishey/core/models/error_prone.dart';
import 'package:wishey/core/models/failure.dart';
import 'package:wishey/core/models/sucess.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/core/util/app_config.dart';

@injectable
class WishesRepository with ErrorProneMixin {
  final Dio _httpClient;

  WishesRepository(this._httpClient);

  Future<ErrorProne<WishList>> getWishlist() async {
    final response = await _httpClient.get(
      getWishesRoute,
    );

    switch (response.statusCode) {
      case 200:
        return ErrorProne.success(
          WishList.fromJson(
            response.data,
          ),
        );
      default:
        return ErrorProne.failure(const Failure.server());
    }
  }

  Future<ErrorProne<Success>> saveWish(Wish wish) async {
    final response = await _httpClient.post(
      postWishRoute,
      data: wish.toJson(),
    );

    switch (response.statusCode) {
      case 200:
        return ErrorProne.success(const Success());
      case 409:
        return ErrorProne.failure(const Failure.duplicate());
      default:
        return ErrorProne.failure(const Failure.server());
    }
  }

  Future<ErrorProne<Success>> replaceWish({
    required Wish toReplace,
    required Wish toBeReplacedWith,
  }) async {
    final response = await _httpClient.post(
      '$updateWishRoute/${toReplace.id}',
      data: toBeReplacedWith.toJson(),
    );

    switch (response.statusCode) {
      case 200:
        return ErrorProne.success(const Success());
      case 409:
        return ErrorProne.failure(const Failure.duplicate());
      default:
        return ErrorProne.failure(const Failure.server());
    }
  }
}
