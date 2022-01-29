import 'package:wishey/core/models/wish_list.dart';

abstract class FormsStateRepository {
  Wish get initialWish;
  Wish get currentWish;
  set currentWish(Wish wish);

  void initWish(Wish initialWish);
  void discardWish();
}
