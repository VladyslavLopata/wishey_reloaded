import 'package:flutter_test/flutter_test.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/features/create_wish/use_cases/get_view_model.dart';
import 'package:wishey/features/create_wish/view_models/loaded_state_view_model.dart';

const _defaultViewModel = LoadedStateViewModel();
const _nonEmptyTopic = 'topic';
const _nonEmptyField = TopicWishField(content: _nonEmptyTopic);
const _emptyWish = Wish(topic: '', title: '');
const _nonEmptyWish = Wish(topic: 'topic', title: '');

void main() {
  final _getViewModelUseCase = GetViewModelUseCase();

  group(
    'Get View Model Use Case tests',
    () {
      test(
        'WHEN called with empty string\n'
        'THEN should return default view model.',
        () {
          final result = _getViewModelUseCase(_emptyWish);
          expect(result, _defaultViewModel);
        },
      );

      test(
        'WHEN called with non-empty string\n'
        'THEN should return view model with topic.',
        () {
          final result = _getViewModelUseCase(_nonEmptyWish);
          expect(result.fields, contains(_nonEmptyField));
        },
      );
    },
  );
}
