import 'package:injectable/injectable.dart';
import 'package:wishey/core/models/error_prone.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/core/repositories/wishes_repository.dart';

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
