import 'package:injectable/injectable.dart';
import '../../../core/models/wish_list.dart';

const _emptyWish = Wish(
  topic: '',
  title: '',
);
const _initialKey = '_initialFormKey';
const _currentKey = '_currentFormKey';

@lazySingleton
class FormsStateRepository {
  final _wishMap = <String, Wish>{};

  FormsStateRepository();

  Wish get currentWish => _current;

  Wish get initialWish => _initial;

  set currentWish(Wish wish) => _current = wish;

  void discardWish() {
    _current = _initial;
  }

  void initWish(Wish initialWish) {
    _initial = initialWish;
    _current = initialWish;
  }
}

extension _HiveHelpersExtension on FormsStateRepository {
  Wish get _current => _wishMap[_currentKey] ?? _emptyWish;
  Wish get _initial => _wishMap[_initialKey] ?? _emptyWish;
  set _current(Wish wish) => _wishMap[_currentKey] = wish;
  set _initial(Wish wish) => _wishMap[_initialKey] = wish;
}
