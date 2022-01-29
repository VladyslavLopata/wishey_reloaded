import 'package:injectable/injectable.dart';
import 'package:wishey/features/create_wish/repositories/forms_state_repository.dart';

@injectable
class GetWishTopicUseCase {
  final FormsStateRepository _formsStateRepository;

  GetWishTopicUseCase(this._formsStateRepository);

  String call() => _formsStateRepository.currentWish.topic;
}
