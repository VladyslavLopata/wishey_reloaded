import 'package:injectable/injectable.dart';
import 'package:wishey/features/create_wish/view_models/loaded_state_view_model.dart';

@injectable
class GetViewModelUseCase {
  WishField _mapTopicField(WishField wishField, String topic) {
    return wishField.maybeMap(
      topic: (field) => field.copyWith(content: topic),
      orElse: () => wishField,
    );
  }

  LoadedStateViewModel _addTopicToViewModel({
    required LoadedStateViewModel viewModel,
    required String topic,
  }) {
    return viewModel.copyWith(
      fields: viewModel.fields
          .map(
            (wishField) => _mapTopicField(wishField, topic),
          )
          .toList(),
    );
  }

  LoadedStateViewModel call(String topic) {
    const viewModel = LoadedStateViewModel();

    return _addTopicToViewModel(
      viewModel: viewModel,
      topic: topic,
    );
  }
}
