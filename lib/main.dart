import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:wishey/core/service_locator/service_locator.dart';
import 'package:wishey/core/util/custom_bloc_observer.dart';
import 'package:wishey/core/util/dio_config.dart';
import 'package:wishey/core/wishey.dart';

Future<void> main() async {
  await dotenv.load();
  configureDependencies();
  configureDio();

  BlocOverrides.runZoned(
    () => runApp(const WisheyApp()),
    blocObserver: WisheyBlocObserver(),
  );
}
