import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:wishey/core/router/auto_route.dart';
import 'service_locator.config.dart';

final injector = GetIt.instance;

@InjectableInit()
void configureDependencies() => $initGetIt(injector);

@module
abstract class RouterInjector {
  @lazySingleton
  AppRouter get appRouter => AppRouter();

  @lazySingleton
  http.Client get client => http.Client();
}
