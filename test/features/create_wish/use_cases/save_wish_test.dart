import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wishey/core/models/error_prone.dart';
import 'package:wishey/core/models/sucess.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/core/repositories/wishes_repository.dart';
import 'package:wishey/features/create_wish/repositories/forms_state_repository.dart';
import 'package:wishey/features/create_wish/use_cases/save_wish.dart';

import '../../wishes_board/use_cases/get_wishes_use_case_test.mocks.dart';
import 'init_forms_storage_test.mocks.dart';

const _emptyWish = Wish(title: '', topic: '');

void main() {
  late SaveWishUseCase _saveWishUseCase;
  late WishesRepository _wishesRepository;
  late FormsStateRepository _formsStateRepository;

  setUp(() {
    _formsStateRepository = MockFormsStateRepository();
    _wishesRepository = MockWishesRepository();
    _saveWishUseCase =
        SaveWishUseCase(_wishesRepository, _formsStateRepository);

    when(_formsStateRepository.currentWish).thenReturn(_emptyWish);
    when(_formsStateRepository.initialWish).thenReturn(_emptyWish);
    when(_wishesRepository.saveWish(_emptyWish)).thenAnswer(
      // ignore: void_checks
      (_) async => ErrorProne.success(const Success()),
    );
    when(
      _wishesRepository.replaceWish(
        toReplace: _emptyWish,
        toBeReplacedWith: _emptyWish,
      ),
    ).thenAnswer(
      // ignore: void_checks
      (_) async => ErrorProne.success(const Success()),
    );
  });

  group(
    'Save Wish Use Case tests',
    () {
      test(
        'WHEN called without replacing\n'
        'THEN should interact with right methods',
        () {
          _saveWishUseCase();
          verify(_formsStateRepository.currentWish).called(1);
          verifyNever(_formsStateRepository.currentWish);
          verifyNoMoreInteractions(_formsStateRepository);
          verify(_wishesRepository.saveWish(_emptyWish)).called(1);
          verifyNoMoreInteractions(_wishesRepository);
        },
      );

      test(
        'WHEN called with replacing\n'
        'THEN should interact with right methods',
        () {
          _saveWishUseCase(shouldReplaceExisting: true);
          verify(_formsStateRepository.initialWish).called(1);
          verify(_formsStateRepository.currentWish).called(1);
          verifyNoMoreInteractions(_formsStateRepository);
          verify(
            _wishesRepository.replaceWish(
              toReplace: _emptyWish,
              toBeReplacedWith: _emptyWish,
            ),
          ).called(1);
          verifyNoMoreInteractions(_wishesRepository);
        },
      );
    },
  );
}
