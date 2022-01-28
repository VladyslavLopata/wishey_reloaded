import 'package:injectable/injectable.dart';
import 'package:wishey/features/create_wish/repositories/forms_state_repository.dart';

@injectable
class ShouldShowSaveButtonUseCase {
  final FormsStateRepository _formsStateRepository;

  ShouldShowSaveButtonUseCase(this._formsStateRepository);

  Future<bool> call() async {
    final initVal = await _formsStateRepository.initialWish;
    final curVal = await _formsStateRepository.currentWish;

    return initVal != curVal;
  }
}
