import 'package:injectable/injectable.dart';
import '../../../core/models/error_prone.dart';
import '../repositories/forms_state_repository.dart';
import '../view_models/loaded_state_view_model.dart';

@injectable
class UpdateFieldUseCase with ErrorProneMixin {
  final FormsStateRepository _formsStateRepository;

  UpdateFieldUseCase(this._formsStateRepository);

  void call({
    required WishField field,
    required String text,
  }) {
    final wishField = _formsStateRepository.currentWish;
    _formsStateRepository.currentWish = field.when(
      topic: (_) => wishField.copyWith(topic: text),
      title: (_) => wishField.copyWith(title: text),
      note: (_) => wishField.copyWith(note: text),
      price: (_) => wishField.copyWith(price: text),
      link: (_) => wishField.copyWith(link: text),
    );
  }
}
