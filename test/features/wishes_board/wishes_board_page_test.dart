import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/features/wishes_board/cubit/wishes_board_cubit.dart';
import 'package:wishey/features/wishes_board/wishes_board_page.dart';

import '../../test_utils/expect_utils.dart';

const _topic = 'topic';
const _wishes = [
  Wish(topic: _topic, title: 'title'),
  Wish(topic: 'topic2', title: 'title2'),
];
const _initialState = const WishesBoardState.initial();
const _loadingState = const WishesBoardState.loading();
const _loadedState = const WishesBoardState.loaded(wishes: _wishes);

class MockWishesBoardCubit extends Mock implements WishesBoardCubit {}

void main() {
  final WishesBoardCubit _wishesBoardCubit = MockWishesBoardCubit();

  setUp(
    () {
      when(
        () => _wishesBoardCubit.init(any()),
      ).thenAnswer((_) => Future.value());
      when(
        () => _wishesBoardCubit.close(),
      ).thenAnswer((_) => Future.value());
    },
  );

  setUpAll(
    () {
      GetIt.I.registerFactory<WishesBoardCubit>(() => _wishesBoardCubit);
    },
  );

  group(
    'WishesBoardPage tests',
    () {
      testWidgets(
        'GIVEN app in initial state\n'
        'WHEN built\n'
        'THEN correct widgets should be lay out',
        (tester) async {
          whenListen(
            _wishesBoardCubit,
            Stream<WishesBoardState>.empty(),
            initialState: _initialState,
          );

          await tester.pumpWidget(_getWidget(_topic));
          await tester.pump();

          expectKey('_wisheyEmptyState');
          expectNoWidgets(FloatingActionButton);
        },
      );

      testWidgets(
        'GIVEN app in loading state\n'
        'WHEN built\n'
        'THEN correct widgets should be lay out',
        (tester) async {
          whenListen(
            _wishesBoardCubit,
            Stream.fromIterable(
              [_loadingState],
            ),
            initialState: _initialState,
          );

          await tester.pumpWidget(_getWidget(_topic));
          await tester.pump();

          expectKey('_wisheyLoader');
          expectNoWidgets(FloatingActionButton);
        },
      );

      testWidgets(
        'GIVEN app in loaded state\n'
        'WHEN built\n'
        'THEN correct widgets should be lay out',
        (tester) async {
          whenListen(
            _wishesBoardCubit,
            Stream.fromIterable(
              [_loadedState],
            ),
            initialState: _initialState,
          );

          await tester.pumpWidget(_getWidget(_topic));
          await tester.pump();

          expectWidget(FloatingActionButton);
          expectTextWidget(_topic);

          for (final wish in _wishes) {
            expectTextWidget(wish.title);
          }
        },
      );

      testWidgets(
        'GIVEN app in loaded state\n'
        'WHEN tap on wish card\n'
        'THEN cubit method should be called',
        (tester) async {
          whenListen(
            _wishesBoardCubit,
            Stream.fromIterable(
              [_loadedState],
            ),
            initialState: _initialState,
          );

          await tester.pumpWidget(_getWidget(_topic));
          await tester.pump();

          final card = find.text(
            _wishes[0].title,
          );

          await tester.tap(card);

          verify(() => _wishesBoardCubit.editWish(_wishes[0]));
        },
      );
    },
  );
}

Widget _getWidget(String topic) {
  return MaterialApp(
    home: WishesBoardPage(
      topic: topic,
    ),
  );
}
