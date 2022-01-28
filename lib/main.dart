import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/core/service_locator/service_locator.dart';
import 'package:wishey/core/util/custom_bloc_observer.dart';
import 'package:wishey/core/wishey.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(WishAdapter());
  await Hive.openBox<Wish>('wishes_forms');
  configureDependencies();
  BlocOverrides.runZoned(
    () {
      runApp(const WisheyApp());
    },
    blocObserver: CustomBlocObserver(),
  );
}
