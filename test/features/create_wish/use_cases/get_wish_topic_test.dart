import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/features/create_wish/repositories/forms_state_repository.dart';
import 'package:wishey/features/create_wish/use_cases/get_wish_topic.dart';

import 'get_wish_topic_test.mocks.dart';

const _wish = Wish(topic: '', title: '');

@GenerateMocks([FormsStateRepository])
void main() {
  late final GetWishTopicUseCase _getWishTopicUseCase;
  late final FormsStateRepository _formsStateRepository;

  setUp(() {
    _formsStateRepository = MockFormsStateRepository();
    _getWishTopicUseCase = GetWishTopicUseCase(_formsStateRepository);

    when(_formsStateRepository.currentWish).thenReturn(_wish);
  });

  group('Get Wish Topic Use Case tests', () {
    test(
      'WHEN called\n'
      'THEN should return correct wish',
      () {
        final result = _getWishTopicUseCase();
        expect(result, _wish.topic);
      },
    );
  });
}
