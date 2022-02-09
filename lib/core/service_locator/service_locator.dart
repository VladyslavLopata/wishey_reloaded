import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:wishey/core/router/auto_route.dart';
import 'service_locator.config.dart';

final injector = GetIt.instance;

@InjectableInit()
void configureDependencies() => $initGetIt(injector);

@module
abstract class ModularInjector {
  @lazySingleton
  AppRouter get appRouter => AppRouter();

  @lazySingleton
  Dio get client => Dio();
}
