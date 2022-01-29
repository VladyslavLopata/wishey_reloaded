import 'package:injectable/injectable.dart';
import 'package:wishey/core/models/error_prone.dart';
import 'package:wishey/core/repositories/wishes_repository.dart';
import 'package:wishey/features/create_wish/repositories/forms_state_repository.dart';

@injectable
class SaveWishUseCase {
  final WishesRepository _wishesRepository;
  final FormsStateRepository _formsStateRepository;

  SaveWishUseCase(this._wishesRepository, this._formsStateRepository);

  Future<ErrorProne<void>> call({bool shouldReplaceExisting = false}) {
    if (shouldReplaceExisting) {
      return _wishesRepository.replaceWish(
        toReplace: _formsStateRepository.initialWish,
        toBeReplacedWith: _formsStateRepository.currentWish,
      );
    }
    return _wishesRepository.saveWish(
      _formsStateRepository.currentWish,
    );
  }
}
