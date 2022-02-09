import 'package:injectable/injectable.dart';
import '../repositories/forms_state_repository.dart';

@injectable
class IsWishValidUseCase {
  final FormsStateRepository _formsStateRepository;

  IsWishValidUseCase(this._formsStateRepository);

  bool call() {
    final wish = _formsStateRepository.currentWish;

    return wish.topic.isNotEmpty && wish.title.isNotEmpty;
  }
}
