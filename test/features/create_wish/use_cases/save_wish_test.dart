import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wishey/core/models/error_prone.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/core/repositories/wishes_repository.dart';
import 'package:wishey/features/create_wish/repositories/forms_state_repository.dart';
import 'package:wishey/features/create_wish/use_cases/save_wish.dart';

import '../../wishes_board/use_cases/get_wishes_use_case_test.mocks.dart';
import 'init_forms_storage.mocks.dart';

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
    when(_wishesRepository.saveWish(_emptyWish)).thenAnswer(
      // ignore: void_checks
      (_) async => ErrorProne.success(const Object()),
    );
  });

  group(
    'Save Wish Use Case tests',
    () {
      test(
        'WHEN called\n'
        'THEN should interact with right methods',
        () {
          _saveWishUseCase();
          verify(_formsStateRepository.currentWish).called(1);
          verifyNoMoreInteractions(_formsStateRepository);
          verify(_wishesRepository.saveWish(_emptyWish)).called(1);
          verifyNoMoreInteractions(_wishesRepository);
        },
      );
    },
  );
}
