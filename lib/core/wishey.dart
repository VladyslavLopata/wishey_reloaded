import 'package:flutter/material.dart';
import 'router/auto_route.dart';
import 'service_locator/service_locator.dart';

class WisheyApp extends StatefulWidget {
  const WisheyApp({Key? key}) : super(key: key);

  @override
  State<WisheyApp> createState() => _WisheyAppState();
}

class _WisheyAppState extends State<WisheyApp> {
  late final AppRouter _router;

  @override
  void initState() {
    super.initState();
    _router = injector();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.defaultRouteParser(),
      routerDelegate: _router.delegate(),
    );
  }
}
