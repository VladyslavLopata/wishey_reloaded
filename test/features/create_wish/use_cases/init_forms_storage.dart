import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/features/create_wish/repositories/forms_state_repository.dart';
import 'package:wishey/features/create_wish/use_cases/init_forms_storage.dart';

import 'get_wish_topic_test.mocks.dart';

const _emptyWish = Wish(topic: '', title: '');

@GenerateMocks([FormsStateRepository])
void main() {
  late InitFormsStorageUseCase _initFormsStorageUseCase;
  late FormsStateRepository _formsStateRepository;

  setUp(() {
    _formsStateRepository = MockFormsStateRepository();
    _initFormsStorageUseCase = InitFormsStorageUseCase(_formsStateRepository);
  });

  group('Init Forms Storage tests', () {
    test(
      'WHEN called init\n'
      'THEN should call correct methods',
      () {
        _initFormsStorageUseCase();
        verify(_formsStateRepository.initWish(_emptyWish)).called(1);
        verifyNoMoreInteractions(_formsStateRepository);
      },
    );
  });
}
