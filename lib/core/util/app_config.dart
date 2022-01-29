import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/core/service_locator/service_locator.dart';

@lazySingleton
class AppConfig {
  String get formsBoxKey => 'wishes_forms';
}

Future<void> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(WishAdapter());
  await Hive.openBox<Wish>(injector<AppConfig>().formsBoxKey);
}
