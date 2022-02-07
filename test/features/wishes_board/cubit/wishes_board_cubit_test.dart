import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wishey/core/models/error_prone.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/core/router/auto_route.dart';
import 'package:wishey/features/wishes_board/cubit/wishes_board_cubit.dart';
import 'package:wishey/features/wishes_board/use_cases/get_wishes_use_case.dart';

import '../../topics_board/cubit/topics_board_cubit_test.dart';
import 'wishes_board_cubit_test.mocks.dart';

const _topic = 'topic';
const _wishes = [
  Wish(topic: _topic, title: _topic + '1'),
  Wish(topic: _topic, title: _topic + '2'),
];
final _fakeRouteForCreate = CreateWishRoute(
  wish: const Wish(topic: _topic, title: ''),
);

const _fakeWishForEdit = Wish(topic: _topic, title: _topic);
final _fakeRouteForEdit = CreateWishRoute(
  wish: _fakeWishForEdit,
  shouldReplaceExisting: true,
);

const _loadedState = WishesBoardState.loaded(wishes: []);
const _fakedFailure = FakeFailure();

@GenerateMocks([GetWishesUseCase, AppRouter])
void main() {
  late GetWishesUseCase _getWishesUseCase;
  late AppRouter _router;
  setUp(() {
    _getWishesUseCase = MockGetWishesUseCase();
    _router = MockAppRouter();
  });
  group(
    'Wishes Board cubit tests',
    () {
      blocTest<WishesBoardCubit, WishesBoardState>(
        'GIVEN initial state\n'
        'WHEN init is called  and getWishes is successful\n'
        'THEN should emit correct states',
        build: () => WishesBoardCubit(_getWishesUseCase, _router),
        act: (bloc) => bloc.init(_topic),
        setUp: () {
          when(_getWishesUseCase.call(_topic))
              .thenAnswer((_) async => ErrorProne.success(_wishes));
        },
        expect: () => const [
          WishesBoardState.loading(),
          WishesBoardState.loaded(wishes: _wishes)
        ],
        verify: (_) {
          verify(_getWishesUseCase.call(_topic)).called(1);
          verifyNoMoreInteractions(_getWishesUseCase);
        },
      );
      blocTest<WishesBoardCubit, WishesBoardState>(
        'GIVEN initial state\n'
        'WHEN init is called  and getWishes is not successful\n'
        'THEN should emit correct states',
        build: () => WishesBoardCubit(_getWishesUseCase, _router),
        act: (bloc) => bloc.init(_topic),
        setUp: () {
          when(_getWishesUseCase.call(_topic))
              .thenAnswer((_) async => ErrorProne.failure(_fakedFailure));
        },
        expect: () => const [
          WishesBoardState.loading(),
          WishesBoardState.error(_fakedFailure),
        ],
        verify: (_) {
          verify(_getWishesUseCase.call(_topic)).called(1);
          verifyNoMoreInteractions(_getWishesUseCase);
        },
      );

      blocTest<WishesBoardCubit, WishesBoardState>(
        'GIVEN loaded state\n'
        'WHEN init is called  and getWishes is not successful\n'
        'THEN should do nothing',
        build: () => WishesBoardCubit(_getWishesUseCase, _router),
        act: (bloc) => bloc.init(_topic),
        seed: () => _loadedState,
        expect: () => const [],
        verify: (_) {
          verifyNever(_getWishesUseCase.call(_topic));
          verifyZeroInteractions(_getWishesUseCase);
        },
      );

      blocTest<WishesBoardCubit, WishesBoardState>(
        'GIVEN loaded state\n'
        'WHEN addWish is called\n'
        'THEN should call navigation',
        build: () => WishesBoardCubit(_getWishesUseCase, _router),
        seed: () => _loadedState,
        act: (bloc) => bloc.addWish(_topic),
        setUp: () {
          when(
            _router.push(_fakeRouteForCreate),
          ).thenAnswer((_) async => Future.value());
        },
        expect: () => const [],
        verify: (_) {
          verify(_router.push(_fakeRouteForCreate)).called(1);
          verifyNoMoreInteractions(_router);
        },
      );
      blocTest<WishesBoardCubit, WishesBoardState>(
        'GIVEN initial state\n'
        'WHEN addWish is called\n'
        'THEN should do nothing',
        build: () => WishesBoardCubit(_getWishesUseCase, _router),
        act: (bloc) => bloc.addWish(_topic),
        expect: () => const [],
        verify: (_) {
          verifyNever(_router.push(_fakeRouteForCreate));
          verifyZeroInteractions(_router);
        },
      );

      blocTest<WishesBoardCubit, WishesBoardState>(
        'GIVEN loaded state\n'
        'WHEN editWish is called\n'
        'THEN should call navigation',
        build: () => WishesBoardCubit(_getWishesUseCase, _router),
        seed: () => _loadedState,
        act: (bloc) => bloc.editWish(_fakeWishForEdit),
        setUp: () {
          when(
            _router.push(_fakeRouteForEdit),
          ).thenAnswer((_) async => Future.value());
        },
        expect: () => const [],
        verify: (_) {
          verify(
            _router.push(_fakeRouteForEdit),
          ).called(1);
          verifyNoMoreInteractions(_router);
        },
      );
      blocTest<WishesBoardCubit, WishesBoardState>(
        'GIVEN initial state\n'
        'WHEN editWish is called\n'
        'THEN should do nothing',
        build: () => WishesBoardCubit(_getWishesUseCase, _router),
        act: (bloc) => bloc.editWish(_fakeWishForEdit),
        expect: () => const [],
        verify: (_) {
          verifyNever(
            (_router as MockAppRouter).push(any),
          ).called(0);
          verifyZeroInteractions(_router);
        },
      );
    },
  );
}
