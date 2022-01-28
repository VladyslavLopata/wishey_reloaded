import 'package:wishey/core/models/error_prone.dart';
import 'package:wishey/core/models/wish_list.dart';

abstract class FormsStateRepository {
  Future<ErrorProne<Wish>> get initialWish;
  Future<ErrorProne<Wish>> get currentWish;

  Future<ErrorProne<void>> initWish(Wish initialWish);
  Future<ErrorProne<void>> discardWish();
}
