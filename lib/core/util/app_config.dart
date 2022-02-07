import 'package:injectable/injectable.dart';

@lazySingleton
class AppConfig {
  String get formsBoxKey => 'wishes_forms';
  String get apiServerAddress => 'localhost:8080';
  String get getWishesRoute => '/';
  String get postWishRoute => '/wish/';
  String updateWishRoute(String wishId) => '/wish/$wishId';
  Map<String, String> get httpHeaders => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
}
