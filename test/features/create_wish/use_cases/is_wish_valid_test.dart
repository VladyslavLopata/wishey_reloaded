import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/features/create_wish/repositories/forms_state_repository.dart';
import 'package:wishey/features/create_wish/use_cases/is_wish_valid.dart';

import 'get_wish_topic_test.mocks.dart';

const _emptyWish = Wish(topic: '', title: '');
const _wishWithBothFieldsSetUp = Wish(topic: 'topic', title: 'title');

void main() {
  late IsWishValidUseCase _isWishValidUseCase;
  late FormsStateRepository _formsStateRepository;

  setUp(
    () {
      _formsStateRepository = MockFormsStateRepository();
      _isWishValidUseCase = IsWishValidUseCase(_formsStateRepository);
    },
  );

  group(
    'Is Wish Valid Use Case tests',
    () {
      test(
        'WHEN called with empty wish in repo'
        'THEN should return false',
        () {
          when(_formsStateRepository.currentWish).thenReturn(_emptyWish);
          expect(_isWishValidUseCase(), false);
          verify(_formsStateRepository.currentWish).called(1);
          verifyNoMoreInteractions(_formsStateRepository);
        },
      );

      test(
        'WHEN called with both fields set up wish in repo'
        'THEN should return true',
        () {
          when(_formsStateRepository.currentWish)
              .thenReturn(_wishWithBothFieldsSetUp);
          expect(_isWishValidUseCase(), true);
          verify(_formsStateRepository.currentWish).called(1);
          verifyNoMoreInteractions(_formsStateRepository);
        },
      );
    },
  );
}
