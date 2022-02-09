import 'package:injectable/injectable.dart';
import '../../../core/models/wish_list.dart';
import '../view_models/loaded_state_view_model.dart';

@injectable
class GetViewModelUseCase {
  LoadedStateViewModel call(Wish wish) {
    return LoadedStateViewModel(fields: [
      WishField.topic(content: wish.topic),
      WishField.title(content: wish.title),
      WishField.note(content: wish.note ?? ''),
      WishField.price(content: wish.price ?? ''),
      WishField.link(content: wish.link ?? ''),
    ]);
  }
}
