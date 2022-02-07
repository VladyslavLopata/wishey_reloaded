import 'package:flutter_test/flutter_test.dart';
import 'package:wishey/core/models/error_prone.dart';
import 'package:mocktail/mocktail.dart';

import '../../features/topics_board/cubit/topics_board_cubit_test.dart';

abstract class CallableClassWithParams {
  void call<T>(T value);
}

abstract class CallableClassWithoutParams {
  T call<T>();
}

abstract class CallableClassWithoutParamsAsync {
  Future<T> call<T>();
}

class MockCallableParam1 extends Mock implements CallableClassWithParams {}

class MockCallableParam2 extends Mock implements CallableClassWithParams {}

class MockCallableNoParam1 extends Mock implements CallableClassWithoutParams {}

class MockCallableNoParam2 extends Mock implements CallableClassWithoutParams {}

class MockCallableNoParamAsync1 extends Mock
    implements CallableClassWithoutParamsAsync {}

class MockCallableNoParamAsync2 extends Mock
    implements CallableClassWithoutParamsAsync {}

class SuccessClass {}

class HasErrorProneMixin with ErrorProneMixin {}

void main() {
  late CallableClassWithParams _cbParam1;
  late CallableClassWithParams _cbParam2;
  late CallableClassWithoutParams _cbNoParam1;
  late CallableClassWithoutParams _cbNoParam2;
  late CallableClassWithoutParamsAsync _cbNoParamAsync1;
  late CallableClassWithoutParamsAsync _cbNoParamAsync2;
  late SuccessClass _fakeSuccess;
  late FakeFailure _fakeFailure;
  late HasErrorProneMixin _hasErrorProneMixin;

  setUp(() {
    _cbParam1 = MockCallableParam1();
    _cbParam2 = MockCallableParam2();
    _fakeSuccess = SuccessClass();
    _fakeFailure = const FakeFailure();
    _hasErrorProneMixin = HasErrorProneMixin();
    _cbNoParam1 = MockCallableNoParam1();
    _cbNoParam2 = MockCallableNoParam2();
    _cbNoParamAsync1 = MockCallableNoParamAsync1();
    _cbNoParamAsync2 = MockCallableNoParamAsync2();
    when(() => _cbNoParam1.call()).thenReturn(_fakeSuccess);
    when(() => _cbNoParam2.call()).thenThrow(_fakeFailure);
    when(() => _cbNoParamAsync1.call()).thenAnswer((_) async => _fakeSuccess);
    when(() => _cbNoParamAsync2.call()).thenThrow(_fakeFailure);
  });

  group(
    'ErrorProne tests',
    () {
      test(
        'WHEN mapIfSuccess called, and it is success\n'
        'THEN it should return new successfull type',
        () {
          final successful = ErrorProne.success(_fakeSuccess);

          successful.mapIfSuccess(_cbParam1.call);

          verify(() => _cbParam1.call(_fakeSuccess)).called(1);

          verifyNoMoreInteractions(_cbParam1);
        },
      );

      test(
        'WHEN mapIfSuccess called, and it is failure\n'
        'THEN it should return new successfull type',
        () {
          final successful = ErrorProne.failure(_fakeFailure);

          successful.mapIfSuccess(_cbParam1.call);

          verifyNever(() => _cbParam1.call(_fakeSuccess));

          verifyZeroInteractions(_cbParam1);
        },
      );

      test(
        'WHEN `when` is called, and it is success\n'
        'THEN it should return new successfull type',
        () {
          final successful = ErrorProne.success(_fakeSuccess);

          successful.when(
            success: _cbParam1.call,
            failure: _cbParam2.call,
          );

          verify(() => _cbParam1.call(_fakeSuccess)).called(1);
          verifyNever(() => _cbParam2.call(any));

          verifyNoMoreInteractions(_cbParam1);
          verifyZeroInteractions(_cbParam2);
        },
      );

      test(
        'WHEN `when` is called, and it is failure\n'
        'THEN it should return new successfull type',
        () {
          final successful = ErrorProne.failure(_fakeFailure);

          successful.when(
            success: _cbParam1.call,
            failure: _cbParam2.call,
          );

          verify(() => _cbParam2.call(_fakeFailure)).called(1);
          verifyNever(() => _cbParam1.call(any));

          verifyZeroInteractions(_cbParam1);
          verifyNoMoreInteractions(_cbParam2);
        },
      );

      test(
        'WHEN forceUnfold is called, and it is failure\n'
        'THEN it should return null',
        () {
          final successful = ErrorProne.failure(_fakeFailure);

          final value = successful.forceUnfold();

          expect(value, null);
        },
      );

      test(
        'WHEN forceUnfold is called, and it is success\n'
        'THEN it should return success',
        () {
          final successful = ErrorProne.success(_fakeSuccess);

          final value = successful.forceUnfold();

          expect(value, _fakeSuccess);
        },
      );

      test(
        'WHEN executeErrorProne is called, it does not throw\n'
        'THEN it should return success',
        () {
          final val = _hasErrorProneMixin.executeErrorProne(_cbNoParam1);
          verify(() => _cbNoParam1.call()).called(1);
          verifyNoMoreInteractions(_cbNoParam1);

          val.when(success: _cbParam1.call, failure: _cbParam2.call);
          verify(() => _cbParam1.call(_fakeSuccess)).called(1);
          verifyNever(() => _cbParam2.call(_fakeFailure));
        },
      );

      test(
        'WHEN executeErrorProne is called, it throws\n'
        'THEN it should return success',
        () {
          final val = _hasErrorProneMixin.executeErrorProne(_cbNoParam2);
          verify(() => _cbNoParam2.call()).called(1);
          verifyNoMoreInteractions(_cbNoParam2);

          val.when(success: _cbParam1.call, failure: _cbParam2.call);
          verify(() => _cbParam2.call(_fakeFailure)).called(1);
          verifyNever(() => _cbParam1.call(_fakeSuccess));
        },
      );

      test(
        'WHEN executeErrorProneAsync is called, it does not throw\n'
        'THEN it should return success',
        () async {
          final val = await _hasErrorProneMixin
              .executeErrorProneAsync(_cbNoParamAsync1);

          verify(() => _cbNoParamAsync1.call()).called(1);
          verifyNoMoreInteractions(_cbNoParamAsync1);

          val.when(success: _cbParam1.call, failure: _cbParam2.call);
          verify(() => _cbParam1.call(_fakeSuccess)).called(1);
          verifyNever(() => _cbParam2.call(_fakeFailure));
        },
      );

      test(
        'WHEN executeErrorProneAsync is called, it throws\n'
        'THEN it should return success',
        () {
          final val = _hasErrorProneMixin.executeErrorProne(_cbNoParamAsync2);
          verify(() => _cbNoParamAsync2.call()).called(1);
          verifyNoMoreInteractions(_cbNoParamAsync2);

          val.when(success: _cbParam1.call, failure: _cbParam2.call);
          verify(() => _cbParam2.call(_fakeFailure)).called(1);
          verifyNever(() => _cbParam1.call(_fakeSuccess));
        },
      );
    },
  );
}
