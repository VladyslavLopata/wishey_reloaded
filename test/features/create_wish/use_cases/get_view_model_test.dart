import 'package:flutter_test/flutter_test.dart';
import 'package:wishey/features/create_wish/use_cases/get_view_model.dart';
import 'package:wishey/features/create_wish/view_models/loaded_state_view_model.dart';

const _defaultViewModel = LoadedStateViewModel();
const _emptyTopic = '';
const _nonEmptyTopic = 'topic';
const _nonEmptyField = TopicWishField(content: _nonEmptyTopic);

void main() {
  final _getViewModelUseCase = GetViewModelUseCase();

  group(
    'Get View Model Use Case tests',
    () {
      test(
        'WHEN called with empty string\n'
        'THEN should return default view model.',
        () {
          final result = _getViewModelUseCase(_emptyTopic);
          expect(result, _defaultViewModel);
        },
      );

      test(
        'WHEN called with non-empty string\n'
        'THEN should return view model with topic.',
        () {
          final result = _getViewModelUseCase(_nonEmptyTopic);
          expect(result.fields, contains(_nonEmptyField));
        },
      );
    },
  );
}
