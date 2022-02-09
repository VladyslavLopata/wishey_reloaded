import 'package:injectable/injectable.dart';
import '../repositories/forms_state_repository.dart';

@injectable
class GetWishTopicUseCase {
  final FormsStateRepository _formsStateRepository;

  GetWishTopicUseCase(this._formsStateRepository);

  String call() => _formsStateRepository.currentWish.topic;
}
