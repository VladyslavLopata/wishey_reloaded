import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/features/create_wish/repositories/forms_state_repository.dart';
import 'package:wishey/features/create_wish/use_cases/update_field.dart';
import 'package:wishey/features/create_wish/view_models/loaded_state_view_model.dart';

import 'get_wish_topic_test.mocks.dart';

const _text = 'text';
const _wish = Wish(topic: 'topic', title: 'title');

void main() {
  late UpdateFieldUseCase _updateFieldUseCase;
  late FormsStateRepository _formsStateRepository;

  setUp(
    () {
      _formsStateRepository = MockFormsStateRepository();
      _updateFieldUseCase = UpdateFieldUseCase(_formsStateRepository);
      when(_formsStateRepository.currentWish).thenReturn(_wish);
    },
  );

  group(
    'Update Field Use Case tests',
    () {
      test(
        'WHEN changed topic\n'
        'THEN should save changed topic',
        () {
          const _selectedField = TopicWishField();
          _updateFieldUseCase(text: _text, field: _selectedField);
          verify(_formsStateRepository.currentWish).called(1);
          final changedWish = _wish.copyWith(topic: _text);
          verify(_formsStateRepository.currentWish = changedWish);
          verifyNoMoreInteractions(_formsStateRepository);
        },
      );
      test(
        'WHEN changed title\n'
        'THEN should save changed title',
        () {
          const _selectedField = TitleWishField();
          _updateFieldUseCase(text: _text, field: _selectedField);
          verify(_formsStateRepository.currentWish).called(1);
          final changedWish = _wish.copyWith(title: _text);
          verify(_formsStateRepository.currentWish = changedWish);
          verifyNoMoreInteractions(_formsStateRepository);
        },
      );
      test(
        'WHEN changed title\n'
        'THEN should save changed title',
        () {
          const _selectedField = WishField.price();
          _updateFieldUseCase(text: _text, field: _selectedField);
          verify(_formsStateRepository.currentWish).called(1);
          final changedWish = _wish.copyWith(price: _text);
          verify(_formsStateRepository.currentWish = changedWish);
          verifyNoMoreInteractions(_formsStateRepository);
        },
      );

      test(
        'WHEN changed title\n'
        'THEN should save changed title',
        () {
          const _selectedField = WishField.link();
          _updateFieldUseCase(text: _text, field: _selectedField);
          verify(_formsStateRepository.currentWish).called(1);
          final changedWish = _wish.copyWith(link: _text);
          verify(_formsStateRepository.currentWish = changedWish);
          verifyNoMoreInteractions(_formsStateRepository);
        },
      );

      test(
        'WHEN changed title\n'
        'THEN should save changed title',
        () {
          const _selectedField = WishField.note();
          _updateFieldUseCase(text: _text, field: _selectedField);
          verify(_formsStateRepository.currentWish).called(1);
          final changedWish = _wish.copyWith(note: _text);
          verify(_formsStateRepository.currentWish = changedWish);
          verifyNoMoreInteractions(_formsStateRepository);
        },
      );
    },
  );
}
