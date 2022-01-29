import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

mixin StateMixin<V> implements Cubit<V> {
  void onlyWhen<T>(VoidCallback callback) {
    if (state is T) {
      callback.call();
    }
  }
}
