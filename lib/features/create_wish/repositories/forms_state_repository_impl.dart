import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/features/create_wish/repositories/forms_state_repository.dart';

const _emptyWish = Wish(topic: '', title: '');
const _initialKey = '_initialFormKey';
const _currentKey = '_currentFormKey';

@Injectable(as: FormsStateRepository)
class FormsStateRepositoryImpl implements FormsStateRepository {
  final Box<Wish> _hiveBox;
  FormsStateRepositoryImpl() : _hiveBox = Hive.box('wishes_forms');

  @override
  Wish get currentWish => _current;

  @override
  Wish get initialWish => _initial;

  @override
  set currentWish(Wish wish) => _current = wish;

  @override
  void discardWish() {
    _current = _initial;
  }

  @override
  void initWish(Wish initialWish) {
    _initial = initialWish;
    _current = initialWish;
  }
}

extension _HiveHelpersExtension on FormsStateRepositoryImpl {
  Wish get _current => _hiveBox.get(_currentKey) ?? _emptyWish;
  Wish get _initial => _hiveBox.get(_initialKey) ?? _emptyWish;
  set _current(Wish wish) => _hiveBox.put(_currentKey, wish);
  set _initial(Wish wish) => _hiveBox.put(_initialKey, wish);
}
