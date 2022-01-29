import 'package:injectable/injectable.dart';
import 'package:wishey/features/create_wish/repositories/forms_state_repository.dart';

@injectable
class ShouldShowSaveButtonUseCase {
  final FormsStateRepository _formsStateRepository;

  ShouldShowSaveButtonUseCase(this._formsStateRepository);

  bool call() {
    final initVal = _formsStateRepository.initialWish;
    final curVal = _formsStateRepository.currentWish;

    return initVal != curVal;
  }
}
