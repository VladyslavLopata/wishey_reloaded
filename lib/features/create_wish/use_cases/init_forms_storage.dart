import 'package:injectable/injectable.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/features/create_wish/repositories/forms_state_repository.dart';

@injectable
class InitFormsStorageUseCase {
  final FormsStateRepository _formsStateRepository;

  InitFormsStorageUseCase(this._formsStateRepository);

  void call({String? topic}) => _formsStateRepository.initWish(
        Wish(topic: topic ?? '', title: ''),
      );
}
