import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:wishey/core/service_locator/service_locator.dart';
import 'package:wishey/core/util/app_config.dart';
import 'package:wishey/core/util/custom_bloc_observer.dart';
import 'package:wishey/core/wishey.dart';

Future<void> main() async {
  configureDependencies();

  await initHive();

  BlocOverrides.runZoned(
    () {
      runApp(const WisheyApp());
    },
    blocObserver: CustomBlocObserver(),
  );
}
