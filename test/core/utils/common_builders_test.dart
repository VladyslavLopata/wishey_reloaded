import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wishey/core/util/common_builders.dart';
import 'package:mocktail/mocktail.dart';

import '../../features/topics_board/cubit/topics_board_cubit_test.dart';

abstract class CallableClass {
  void call();
}

class MockCallableClass extends Mock implements CallableClass {}

void main() {
  late CallableClass _callableClass;
  setUp(
    () {
      _callableClass = MockCallableClass();
    },
  );
  group(
    'CommonBuilders tests',
    () {
      testWidgets(
        'WHEN buildLoadingState is called\n'
        'THEN should build correct widget',
        (tester) async {
          await tester.pumpWidget(
            _getWidget(CommonBuilders.buildLoadingState()),
          );

          await tester.pump();

          final finderLoader = find.byType(CircularProgressIndicator);
          final finderByKey = find.byKey(const Key('_wisheyLoader'));
          expect(finderLoader, findsOneWidget);
          expect(finderByKey, findsOneWidget);
        },
      );

      testWidgets(
        'WHEN buildEmptyState is called\n'
        'THEN should build correct widget',
        (tester) async {
          await tester.pumpWidget(
            _getWidget(CommonBuilders.buildEmptyState()),
          );

          await tester.pump();

          final finderEmptyBox = find.byType(SizedBox);
          final finderByKey = find.byKey(const Key('_wisheyEmptyState'));
          expect(finderEmptyBox, findsOneWidget);
          expect(finderByKey, findsOneWidget);
        },
      );

      testWidgets(
        'WHEN buildEmptyState is called\n'
        'THEN should build correct widget',
        (tester) async {
          await tester.pumpWidget(
            _getWidget(CommonBuilders.buildEmptyState()),
          );

          await tester.pump();

          final finderEmptyBox = find.byType(SizedBox);
          final finderByKey = find.byKey(const Key('_wisheyEmptyState'));
          expect(finderEmptyBox, findsOneWidget);
          expect(finderByKey, findsOneWidget);
        },
      );

      testWidgets(
        'WHEN buildErrorState is called\n'
        'THEN should build correct widget',
        (tester) async {
          const _fakeFailure = FakeFailure();
          await tester.pumpWidget(
            _getWidget(
              CommonBuilders.buildErrorState(
                error: _fakeFailure,
                onTryAgain: _callableClass,
              ),
            ),
          );

          await tester.pump();

          final finderText = find.text('An error occured');
          final finderTextButton = find.text('Try Again');

          final finderByKey = find.byKey(const ObjectKey(_fakeFailure));
          expect(finderText, findsOneWidget);
          expect(finderByKey, findsOneWidget);
          expect(finderTextButton, findsOneWidget);
        },
      );

      testWidgets(
        'GIVEN error state is built'
        'WHEN tryAgain is pushed\n'
        'THEN should call for an action',
        (tester) async {
          const _fakeFailure = FakeFailure();
          await tester.pumpWidget(
            _getWidget(
              CommonBuilders.buildErrorState(
                error: _fakeFailure,
                onTryAgain: _callableClass,
              ),
            ),
          );

          await tester.pump();

          await tester.tap(
            find.text('Try Again'),
          );

          await tester.pumpAndSettle();

          verify(() => _callableClass.call()).called(1);
        },
      );
    },
  );
}

Widget _getWidget(Widget innerWidget) {
  return MaterialApp(
    home: Scaffold(body: innerWidget),
  );
}
