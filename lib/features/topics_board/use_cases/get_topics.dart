import 'package:injectable/injectable.dart';
import 'package:wishey/core/models/error_prone.dart';
import 'package:wishey/core/repositories/wishes_repository.dart';

@injectable
class GetTopicsUseCase with ErrorProneMixin {
  final WishesRepository _wishesRepository;

  const GetTopicsUseCase(this._wishesRepository);

  Future<ErrorProne<List<String>>> call() =>
      _wishesRepository.getWishlist().then(
            (errorProne) => errorProne.mapIfSuccess(
              (wishlist) => wishlist.wishes
                  .map(
                    (wish) => wish.topic,
                  )
                  .toSet()
                  .toList(),
            ),
          );
}
