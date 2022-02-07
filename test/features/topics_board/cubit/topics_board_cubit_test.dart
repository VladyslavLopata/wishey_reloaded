import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wishey/core/models/error_prone.dart';
import 'package:wishey/core/models/failure.dart';
import 'package:wishey/core/router/auto_route.dart';
import 'package:wishey/features/topics_board/cubit/topics_board_cubit.dart';
import 'package:wishey/features/topics_board/use_cases/get_topics.dart';

import '../../create_wish/cubit/create_wish_cubit_test.mocks.dart';
import 'topics_board_cubit_test.mocks.dart';

const _topic = 'topic';
const _topics = ['topic', 'topic2'];

const _fakedFailure = FakeFailure();

const _loadingState = TopicsBoardState.loading();
const _loadedState = TopicsBoardState.loaded(topics: _topics);
const _errorState = TopicsBoardState.error(_fakedFailure);

final _fakeRoute = WishesBoardRoute(topic: _topic);

class FakeFailure implements Failure {
  const FakeFailure();
  @override
  TResult map<TResult extends Object?>(
      {required TResult Function(ServerFailure value) server,
      required TResult Function(DuplicateFailure value) duplicate,
      required TResult Function(SevereFailure value) severe}) {
    // TODO: implement map
    throw UnimplementedError();
  }

  @override
  TResult? mapOrNull<TResult extends Object?>(
      {TResult Function(ServerFailure value)? server,
      TResult Function(DuplicateFailure value)? duplicate,
      TResult Function(SevereFailure value)? severe}) {
    // TODO: implement mapOrNull
    throw UnimplementedError();
  }

  @override
  TResult maybeMap<TResult extends Object?>(
      {TResult Function(ServerFailure value)? server,
      TResult Function(DuplicateFailure value)? duplicate,
      TResult Function(SevereFailure value)? severe,
      required TResult Function() orElse}) {
    // TODO: implement maybeMap
    throw UnimplementedError();
  }

  @override
  TResult maybeWhen<TResult extends Object?>(
      {TResult Function()? server,
      TResult Function()? duplicate,
      TResult Function()? severe,
      required TResult Function() orElse}) {
    // TODO: implement maybeWhen
    throw UnimplementedError();
  }

  @override
  TResult when<TResult extends Object?>(
      {required TResult Function() server,
      required TResult Function() duplicate,
      required TResult Function() severe}) {
    // TODO: implement when
    throw UnimplementedError();
  }

  @override
  TResult? whenOrNull<TResult extends Object?>(
      {TResult Function()? server,
      TResult Function()? duplicate,
      TResult Function()? severe}) {
    // TODO: implement whenOrNull
    throw UnimplementedError();
  }
}

@GenerateMocks([GetTopicsUseCase])
void main() {
  late GetTopicsUseCase _getTopicsUseCase;
  late MockAppRouter _router;

  setUp(() {
    _getTopicsUseCase = MockGetTopicsUseCase();
    _router = MockAppRouter();
  });

  group(
    'Topics Board cubit tests',
    () {
      blocTest<TopicsBoardCubit, TopicsBoardState>(
        'GIVEN initial state\n'
        'WHEN init is called and returned no error\n'
        'THEN should emit right states.',
        build: () => TopicsBoardCubit(_getTopicsUseCase, _router),
        act: (bloc) => bloc.init(),
        setUp: () {
          when(_getTopicsUseCase()).thenAnswer(
            (_) async => ErrorProne.success(_topics),
          );
        },
        expect: () => const [_loadingState, _loadedState],
        verify: (_) {
          verify(_getTopicsUseCase()).called(1);
          verifyNoMoreInteractions(_getTopicsUseCase);
        },
      );

      blocTest<TopicsBoardCubit, TopicsBoardState>(
        'GIVEN error state\n'
        'WHEN retry is called and returned no error\n'
        'THEN should emit right states.',
        build: () => TopicsBoardCubit(_getTopicsUseCase, _router),
        act: (bloc) => bloc.retry(),
        setUp: () {
          when(_getTopicsUseCase()).thenAnswer(
            (_) async => ErrorProne.success(_topics),
          );
        },
        seed: () => const TopicsBoardState.error(FakeFailure()),
        expect: () => const [_loadingState, _loadedState],
        verify: (_) {
          verify(_getTopicsUseCase()).called(1);
          verifyNoMoreInteractions(_getTopicsUseCase);
        },
      );

      blocTest<TopicsBoardCubit, TopicsBoardState>(
        'GIVEN error state\n'
        'WHEN retry is called and returned an error\n'
        'THEN should emit right states.',
        build: () => TopicsBoardCubit(_getTopicsUseCase, _router),
        act: (bloc) => bloc.retry(),
        setUp: () {
          when(_getTopicsUseCase()).thenAnswer(
            (_) async => ErrorProne.failure(_fakedFailure),
          );
        },
        seed: () => const TopicsBoardState.error(FakeFailure()),
        expect: () => const [_loadingState, _errorState],
        verify: (_) {
          verify(_getTopicsUseCase()).called(1);
          verifyNoMoreInteractions(_getTopicsUseCase);
        },
      );

      blocTest<TopicsBoardCubit, TopicsBoardState>(
        'GIVEN initial state\n'
        'WHEN retry is called\n'
        'THEN should do nothing.',
        build: () => TopicsBoardCubit(_getTopicsUseCase, _router),
        act: (bloc) => bloc.retry(),
        setUp: () {
          when(_getTopicsUseCase()).thenAnswer(
            (_) async => ErrorProne.failure(_fakedFailure),
          );
        },
        seed: () => _loadingState,
        expect: () => const [],
        verify: (_) {
          verifyNever(_getTopicsUseCase());
          verifyZeroInteractions(_getTopicsUseCase);
        },
      );

      blocTest<TopicsBoardCubit, TopicsBoardState>(
        'GIVEN initial state\n'
        'WHEN init is called and returned error\n'
        'THEN should emit right states.',
        build: () => TopicsBoardCubit(_getTopicsUseCase, _router),
        act: (bloc) => bloc.init(),
        setUp: () {
          when(_getTopicsUseCase()).thenAnswer(
            (_) async => ErrorProne.failure(_fakedFailure),
          );
        },
        expect: () => const [_loadingState, _errorState],
        verify: (_) {
          verify(_getTopicsUseCase()).called(1);
          verifyNoMoreInteractions(_getTopicsUseCase);
        },
      );

      blocTest<TopicsBoardCubit, TopicsBoardState>(
        'GIVEN loading state\n'
        'WHEN init is called\n'
        'THEN should do nothing.',
        build: () => TopicsBoardCubit(_getTopicsUseCase, _router),
        seed: () => _loadingState,
        act: (bloc) => bloc.init(),
        expect: () => const [],
        verify: (_) {
          verifyZeroInteractions(_getTopicsUseCase);
        },
      );

      blocTest<TopicsBoardCubit, TopicsBoardState>(
        'GIVEN loaded state\n'
        'WHEN openTopic is called\n'
        'THEN should call navigation methods.',
        build: () => TopicsBoardCubit(_getTopicsUseCase, _router),
        seed: () => _loadedState,
        setUp: () {
          when(_router.push(_fakeRoute)).thenAnswer((_) => Future.value());
        },
        act: (bloc) => bloc.openTopic(_topic),
        expect: () => const [],
        verify: (_) {
          verifyZeroInteractions(_getTopicsUseCase);
          verify(_router.push(_fakeRoute)).called(1);
          verifyNoMoreInteractions(_router);
        },
      );

      blocTest<TopicsBoardCubit, TopicsBoardState>(
        'GIVEN initial state\n'
        'WHEN openTopic is called\n'
        'THEN should call navigation methods.',
        build: () => TopicsBoardCubit(_getTopicsUseCase, _router),
        act: (bloc) => bloc.openTopic(_topic),
        expect: () => const [],
        verify: (_) {
          verifyZeroInteractions(_getTopicsUseCase);
          verifyZeroInteractions(_router);
        },
      );

      blocTest<TopicsBoardCubit, TopicsBoardState>(
        'GIVEN loaded state\n'
        'WHEN addWish is called\n'
        'THEN should call navigation methods.',
        build: () => TopicsBoardCubit(_getTopicsUseCase, _router),
        seed: () => _loadedState,
        act: (bloc) => bloc.addWish(),
        expect: () => const [],
        setUp: () {
          when(_router.push(any)).thenAnswer((_) => Future.value());
        },
        verify: (_) {
          verify(_router.push(any)).called(1);
          verifyNoMoreInteractions(_router);
        },
      );

      blocTest<TopicsBoardCubit, TopicsBoardState>(
        'GIVEN initial state\n'
        'WHEN addWish is called\n'
        'THEN should call navigation methods.',
        build: () => TopicsBoardCubit(_getTopicsUseCase, _router),
        act: (bloc) => bloc.addWish(),
        expect: () => const [],
        verify: (_) {
          verifyZeroInteractions(_router);
        },
      );
    },
  );
}
