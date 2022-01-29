import 'package:bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wishey/core/util/state_mixin.dart';

class MockCubit<T> extends Mock implements Cubit<T> {}

class StateMixinUser<T> extends MockCubit<T> with StateMixin<T> {}

abstract class SomeState {}

class NotUsableState implements SomeState {}

class UsableState implements SomeState {}

abstract class CallbackWrapper {
  void call();
}

class MockCallbackWrapper extends Mock implements CallbackWrapper {}

void main() {
  final _mockCallbackWrapper = MockCallbackWrapper();
  final _stateMixinUser = StateMixinUser();

  group(
    'StateMixin tests',
    () {
      test(
        'WHEN the state is Usable\n'
        'THEN should call the callback',
        () {
          when(() => _stateMixinUser.state).thenReturn(UsableState());

          _stateMixinUser.onlyWhen<UsableState>(_mockCallbackWrapper.call);

          verify(() => _stateMixinUser.state).called(1);
          verifyNoMoreInteractions(_stateMixinUser);
          verify(() => _mockCallbackWrapper.call()).called(1);
          verifyNoMoreInteractions(_mockCallbackWrapper);
        },
      );

      test(
        'WHEN the state is NotUsable\n'
        'THEN should not call the callback',
        () {
          when(() => _stateMixinUser.state).thenReturn(NotUsableState());

          _stateMixinUser.onlyWhen<UsableState>(_mockCallbackWrapper.call);

          verify(() => _stateMixinUser.state).called(1);
          verifyNoMoreInteractions(_stateMixinUser);
          verifyNever(() => _mockCallbackWrapper.call());
        },
      );
    },
  );
}
