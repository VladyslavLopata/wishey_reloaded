import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/features/create_wish/repositories/forms_state_repository.dart';
import 'package:wishey/features/create_wish/use_cases/should_show_save_button.dart';

import 'get_wish_topic_test.mocks.dart';

const _wish1 = Wish(topic: 'topic', title: 'title');
const _wish2 = Wish(topic: 'topic1', title: 'title1');

void main() {
  late ShouldShowSaveButtonUseCase _shouldShowSaveButtonUseCase;
  late FormsStateRepository _formsStateRepository;

  setUp(() {
    _formsStateRepository = MockFormsStateRepository();
    _shouldShowSaveButtonUseCase =
        ShouldShowSaveButtonUseCase(_formsStateRepository);
  });

  group(
    'Should Show Save Button Use Case tests',
    () {
      test(
        'WHEN called with differing current and initial wishes\n'
        'THEN should return true',
        () {
          when(_formsStateRepository.initialWish).thenReturn(_wish1);
          when(_formsStateRepository.currentWish).thenReturn(_wish2);
          expect(_shouldShowSaveButtonUseCase(), true);
          verify(_formsStateRepository.initialWish).called(1);
          verify(_formsStateRepository.currentWish).called(1);
          verifyNoMoreInteractions(_formsStateRepository);
        },
      );
      test(
        'WHEN called with same current and initial wishes\n'
        'THEN should return true',
        () {
          when(_formsStateRepository.initialWish).thenReturn(_wish1);
          when(_formsStateRepository.currentWish).thenReturn(_wish1);
          expect(_shouldShowSaveButtonUseCase(), false);
          verify(_formsStateRepository.initialWish).called(1);
          verify(_formsStateRepository.currentWish).called(1);
          verifyNoMoreInteractions(_formsStateRepository);
        },
      );
      test(
        'GIVEN called with same current and initial wishes\n'
        'WHEN one field is null for A and empty for B'
        'THEN should return true',
        () {
          when(_formsStateRepository.initialWish).thenReturn(_wish1);
          when(_formsStateRepository.currentWish).thenReturn(
            _wish1.copyWith(note: ''),
          );
          expect(_shouldShowSaveButtonUseCase(), false);
          verify(_formsStateRepository.initialWish).called(1);
          verify(_formsStateRepository.currentWish).called(1);
          verifyNoMoreInteractions(_formsStateRepository);
        },
      );
    },
  );
}
