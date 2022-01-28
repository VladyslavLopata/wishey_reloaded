import 'package:injectable/injectable.dart';
import 'package:wishey/core/models/error_prone.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/core/repositories/wishes_repository.dart';

@Injectable(as: WishesRepository)
class WishesRepositoryImpl implements WishesRepository {
  @override
  Future<ErrorProne<WishList>> getWishlist() async {
    const wishList = WishList(
      wishes: [
        Wish(topic: 'Topic A', title: 'Title A'),
        Wish(topic: 'Topic A', title: 'Title B'),
        Wish(topic: 'Topic A', title: 'Title C'),
        Wish(topic: 'Topic B', title: 'Title A'),
        Wish(topic: 'Topic B', title: 'Title B'),
        Wish(topic: 'Topic B', title: 'Title C'),
        Wish(
            topic: 'THIS TOPIC IS REALLY BIG',
            title: 'THE TITLE IS REAAAAALLY BIG TOO'),
      ],
    );

    return ErrorProne.success(wishList);
  }
}
