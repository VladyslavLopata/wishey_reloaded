import 'package:injectable/injectable.dart';
import '../../../core/models/wish_list.dart';
import '../repositories/forms_state_repository.dart';

@injectable
class ShouldShowSaveButtonUseCase {
  final FormsStateRepository _formsStateRepository;

  ShouldShowSaveButtonUseCase(this._formsStateRepository);

  Wish _replaceNullWithEmpty(Wish wish) {
    return wish.copyWith(
      note: wish.note ?? '',
      link: wish.link ?? '',
      price: wish.price ?? '',
    );
  }

  bool call() {
    final initVal = _formsStateRepository.initialWish;
    final curVal = _formsStateRepository.currentWish;

    return _replaceNullWithEmpty(initVal) != _replaceNullWithEmpty(curVal);
  }
}
