import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:wishey/core/models/error_prone.dart';
import 'package:wishey/core/models/failure.dart';
import 'package:wishey/core/models/sucess.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:http/http.dart' as http;
import 'package:wishey/core/repositories/wishes_repository.dart';
import 'package:wishey/core/util/app_config.dart';

@LazySingleton(as: WishesRepository)
class WishesRepositoryImpl with ErrorProneMixin implements WishesRepository {
  final http.Client _httpClient;
  final AppConfig _config;

  WishesRepositoryImpl(this._httpClient, this._config);

  @override
  Future<ErrorProne<WishList>> getWishlist() async {
    final response = await _httpClient.get(
      Uri.http(_config.apiServerAddress, _config.getWishesRoute),
      headers: _config.httpHeaders,
    );

    switch (response.statusCode) {
      case 200:
        return ErrorProne.success(
          WishList.fromJson(
            jsonDecode(response.body),
          ),
        );
      default:
        return ErrorProne.failure(const Failure.server());
    }
  }

  @override
  Future<ErrorProne<Success>> saveWish(Wish wish) async {
    final response = await _httpClient.post(
      Uri.http(_config.apiServerAddress, _config.postWishRoute),
      headers: _config.httpHeaders,
      body: jsonEncode(wish.toJson()),
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

  @override
  Future<ErrorProne<Success>> replaceWish({
    required Wish toReplace,
    required Wish toBeReplacedWith,
  }) async {
    final response = await _httpClient.post(
      Uri.http(
        _config.apiServerAddress,
        _config.updateWishRoute(
          toReplace.id.toString(),
        ),
      ),
      headers: _config.httpHeaders,
      body: jsonEncode(toBeReplacedWith.toJson()),
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
