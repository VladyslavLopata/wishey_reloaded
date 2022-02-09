import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../models/error_prone.dart';
import '../models/failure.dart';
import '../models/sucess.dart';
import '../models/wish_list.dart';
import '../util/app_config.dart';

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
            response.data!,
          ),
        );
      default:
        return const ErrorProne.failure(Failure.server());
    }
  }

  Future<ErrorProne<Success>> saveWish(Wish wish) async {
    final response = await _httpClient.post(
      postWishRoute,
      data: wish.toJson(),
    );

    switch (response.statusCode) {
      case 200:
        return const ErrorProne.success(Success());
      case 409:
        return const ErrorProne.failure(Failure.duplicate());
      default:
        return const ErrorProne.failure(Failure.server());
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
        return const ErrorProne.success(Success());
      case 409:
        return const ErrorProne.failure(Failure.duplicate());
      default:
        return const ErrorProne.failure(Failure.server());
    }
  }
}
