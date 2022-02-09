import 'package:injectable/injectable.dart';
import '../../../core/models/error_prone.dart';
import '../../../core/models/wish_list.dart';
import '../../../core/repositories/wishes_repository.dart';

@injectable
class GetWishesUseCase {
  final WishesRepository _wishesRepository;

  GetWishesUseCase(this._wishesRepository);

  Future<ErrorProne<List<Wish>>> call(String topic) async {
    return _wishesRepository.getWishlist().then(
          (errorProne) => errorProne.mapIfSuccess(
            (wishlist) => wishlist.wishes
                .where(
                  (element) => element.topic == topic,
                )
                .toList(),
          ),
        );
  }
}
