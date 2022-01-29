import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wishey/core/models/error_prone.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/core/router/auto_route.dart';
import 'package:wishey/features/create_wish/cubit/create_wish_cubit.dart';
import 'package:wishey/features/create_wish/cubit/create_wish_state.dart';
import 'package:wishey/features/create_wish/use_cases/get_view_model.dart';
import 'package:wishey/features/create_wish/use_cases/get_wish_topic.dart';
import 'package:wishey/features/create_wish/use_cases/init_forms_storage.dart';
import 'package:wishey/features/create_wish/use_cases/is_wish_valid.dart';
import 'package:wishey/features/create_wish/use_cases/save_wish.dart';
import 'package:wishey/features/create_wish/use_cases/should_show_save_button.dart';
import 'package:wishey/features/create_wish/use_cases/update_field.dart';
import 'package:wishey/features/create_wish/view_models/loaded_state_view_model.dart';

import 'create_wish_cubit_test.mocks.dart';

const _emptyTopic = '';
const _emptyWish = Wish(topic: '', title: '');
const _emptyViewModel = LoadedStateViewModel();

const _loadingState = CreateWishState.loading();
const _loadedStateWithEmptyTopic = CreateWishState.loaded(
  viewModel: _emptyViewModel,
  shouldShowSaveButton: false,
);
const _saveErrorState = CreateWishState.saveError();

const _loadedStateWithShowSaveButton = CreateWishState.loaded(
  viewModel: _emptyViewModel,
  shouldShowSaveButton: true,
);

const _editedWishField = TopicWishField();
const _editedText = 't';

final _emittedRoute = WishesBoardRoute(
  topic: _emptyTopic,
);

@GenerateMocks([
  GetViewModelUseCase,
  UpdateFieldUseCase,
  ShouldShowSaveButtonUseCase,
  IsWishValidUseCase,
  SaveWishUseCase,
  InitFormsStorageUseCase,
  GetWishTopicUseCase,
  AppRouter,
])
void main() {
  late GetViewModelUseCase _getViewModelUseCase;
  late UpdateFieldUseCase _updateFieldUseCase;
  late ShouldShowSaveButtonUseCase _shouldShowSaveButtonUseCase;
  late IsWishValidUseCase _isWishValidUseCase;
  late SaveWishUseCase _saveWishUseCase;
  late InitFormsStorageUseCase _initFormsStorageUseCase;
  late GetWishTopicUseCase _getWishTopicUseCase;
  late AppRouter _router;

  setUp(
    () {
      _getViewModelUseCase = MockGetViewModelUseCase();
      _updateFieldUseCase = MockUpdateFieldUseCase();
      _shouldShowSaveButtonUseCase = MockShouldShowSaveButtonUseCase();
      _isWishValidUseCase = MockIsWishValidUseCase();
      _saveWishUseCase = MockSaveWishUseCase();
      _initFormsStorageUseCase = MockInitFormsStorageUseCase();
      _router = MockAppRouter();
      _getWishTopicUseCase = MockGetWishTopicUseCase();

      when(_getViewModelUseCase.call(_emptyWish)).thenAnswer(
        (_) => _emptyViewModel,
      );
    },
  );

  blocTest<CreateWishCubit, CreateWishState>(
    'GIVEN initial state\n'
    'WHEN added init event\n'
    'THEN should go through right states',
    build: () => CreateWishCubit(
      _getViewModelUseCase,
      _updateFieldUseCase,
      _shouldShowSaveButtonUseCase,
      _isWishValidUseCase,
      _saveWishUseCase,
      _initFormsStorageUseCase,
      _router,
      _getWishTopicUseCase,
    ),
    act: (bloc) => bloc.init(wish: _emptyWish),
    expect: () => const [
      _loadingState,
      _loadedStateWithEmptyTopic,
    ],
    verify: (_) {
      verify(_initFormsStorageUseCase(wish: _emptyWish)).called(1);
      verify(_getViewModelUseCase(_emptyWish)).called(1);
      verifyNoMoreInteractions(_initFormsStorageUseCase);
      verifyNoMoreInteractions(_getViewModelUseCase);
    },
  );

  blocTest<CreateWishCubit, CreateWishState>(
    'GIVEN loading state\n'
    'WHEN added init event\n'
    'THEN should do nothing',
    build: () => CreateWishCubit(
      _getViewModelUseCase,
      _updateFieldUseCase,
      _shouldShowSaveButtonUseCase,
      _isWishValidUseCase,
      _saveWishUseCase,
      _initFormsStorageUseCase,
      _router,
      _getWishTopicUseCase,
    ),
    seed: () => _loadingState,
    act: (bloc) => bloc.init(wish: _emptyWish),
    expect: () => const [],
    verify: (_) {
      verifyNever(_initFormsStorageUseCase(wish: _emptyWish));
      verifyNever(_getViewModelUseCase(_emptyWish));
      verifyZeroInteractions(_initFormsStorageUseCase);
      verifyZeroInteractions(_getViewModelUseCase);
    },
  );

  blocTest<CreateWishCubit, CreateWishState>(
    'GIVEN loaded state\n'
    'WHEN added onFieldUpdated event while not having both fields filled\n'
    'THEN should go through right states and not show save button',
    build: () => CreateWishCubit(
      _getViewModelUseCase,
      _updateFieldUseCase,
      _shouldShowSaveButtonUseCase,
      _isWishValidUseCase,
      _saveWishUseCase,
      _initFormsStorageUseCase,
      _router,
      _getWishTopicUseCase,
    ),
    seed: () => _loadedStateWithEmptyTopic,
    setUp: () {
      when(_shouldShowSaveButtonUseCase()).thenReturn(false);
    },
    act: (bloc) =>
        bloc.onFieldUpdated(field: _editedWishField, text: _editedText),
    expect: () => const [],
    verify: (_) {
      verify(
        _updateFieldUseCase(
          field: _editedWishField,
          text: _editedText,
        ),
      ).called(1);
      verify(_shouldShowSaveButtonUseCase()).called(1);
      verifyNoMoreInteractions(_updateFieldUseCase);
      verifyNoMoreInteractions(_shouldShowSaveButtonUseCase);
    },
  );

  blocTest<CreateWishCubit, CreateWishState>(
    'GIVEN loaded state\n'
    'WHEN added onFieldUpdated event while having both fields filled\n'
    'THEN should go through right states and show save button',
    build: () => CreateWishCubit(
      _getViewModelUseCase,
      _updateFieldUseCase,
      _shouldShowSaveButtonUseCase,
      _isWishValidUseCase,
      _saveWishUseCase,
      _initFormsStorageUseCase,
      _router,
      _getWishTopicUseCase,
    ),
    seed: () => _loadedStateWithEmptyTopic,
    setUp: () {
      when(_shouldShowSaveButtonUseCase()).thenReturn(true);
    },
    act: (bloc) =>
        bloc.onFieldUpdated(field: _editedWishField, text: _editedText),
    expect: () => [_loadedStateWithShowSaveButton],
    verify: (_) {
      verify(
        _updateFieldUseCase(
          field: _editedWishField,
          text: _editedText,
        ),
      ).called(1);
      verify(_shouldShowSaveButtonUseCase()).called(1);
      verifyNoMoreInteractions(_updateFieldUseCase);
      verifyNoMoreInteractions(_shouldShowSaveButtonUseCase);
    },
  );

  blocTest<CreateWishCubit, CreateWishState>(
    'GIVEN loaded state\n'
    'WHEN added save event while having both fields filled and wish valid stabbed\n'
    'THEN should go through right states',
    build: () => CreateWishCubit(
      _getViewModelUseCase,
      _updateFieldUseCase,
      _shouldShowSaveButtonUseCase,
      _isWishValidUseCase,
      _saveWishUseCase,
      _initFormsStorageUseCase,
      _router,
      _getWishTopicUseCase,
    ),
    seed: () => _loadedStateWithEmptyTopic,
    setUp: () {
      when(_isWishValidUseCase()).thenReturn(true);
      when(_getWishTopicUseCase()).thenReturn(_emptyTopic);
      when(_saveWishUseCase()).thenAnswer(
        (_) async => ErrorProne.success(
          // ignore: void_checks
          const Object(),
        ),
      );
      when(_router.push(_emittedRoute)).thenAnswer((_) => Future.value());
    },
    act: (bloc) => bloc.save(),
    expect: () => [],
    verify: (_) {
      verify(_isWishValidUseCase()).called(1);
      verify(_saveWishUseCase()).called(1);
      verify(_getWishTopicUseCase()).called(1);
      verify(_router.popUntilRoot()).called(1);
      verify(_router.push(_emittedRoute)).called(1);
      verifyNoMoreInteractions(_isWishValidUseCase);
      verifyNoMoreInteractions(_saveWishUseCase);
      verifyNoMoreInteractions(_getWishTopicUseCase);
      verifyNoMoreInteractions(_router);
    },
  );

  blocTest<CreateWishCubit, CreateWishState>(
    'GIVEN loaded state\n'
    'WHEN added save event while not having both fields filled\n'
    'THEN should go through right states',
    build: () => CreateWishCubit(
      _getViewModelUseCase,
      _updateFieldUseCase,
      _shouldShowSaveButtonUseCase,
      _isWishValidUseCase,
      _saveWishUseCase,
      _initFormsStorageUseCase,
      _router,
      _getWishTopicUseCase,
    ),
    seed: () => _loadedStateWithEmptyTopic,
    setUp: () {
      when(_isWishValidUseCase()).thenReturn(false);
    },
    act: (bloc) => bloc.save(),
    expect: () => [_saveErrorState],
    verify: (_) {
      verify(_isWishValidUseCase()).called(1);
      verifyNever(_saveWishUseCase());
      verifyNever(_getWishTopicUseCase());
      verifyNever(_router.popUntilRoot());
      verifyNever(_router.push(_emittedRoute));
      verifyNoMoreInteractions(_isWishValidUseCase);
    },
  );
}
