import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wishey/core/models/error_prone.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/core/router/auto_route.gr.dart';
import 'package:wishey/features/wishes_board/cubit/wishes_board_cubit.dart';
import 'package:wishey/features/wishes_board/use_cases/get_wishes_use_case.dart';

import 'wishes_board_cubit_test.mocks.dart';

const _topic = 'topic';
const _wishes = [
  Wish(topic: _topic, title: _topic + '1'),
  Wish(topic: _topic, title: _topic + '2'),
];

@GenerateMocks([GetWishesUseCase, AppRouter])
void main() {
  late final MockGetWishesUseCase _getWishesUseCase;
  late final MockAppRouter _router;
  setUp(() {
    _getWishesUseCase = MockGetWishesUseCase();
    _router = MockAppRouter();

    when(_getWishesUseCase.call(_topic))
        .thenAnswer((_) async => ErrorProne.success(_wishes));
  });
  group('Wishes Board cubit tests', () {
    blocTest<WishesBoardCubit, WishesBoardState>(
      'GIVEN initial state\n'
      'WHEN init is called\n'
      'THEN should emit correct states',
      build: () => WishesBoardCubit(_getWishesUseCase, _router),
      act: (bloc) => bloc.init(_topic),
      expect: () => const [
        WishesBoardState.loading(),
        WishesBoardState.loaded(wishes: _wishes)
      ],
    );
  });
}
