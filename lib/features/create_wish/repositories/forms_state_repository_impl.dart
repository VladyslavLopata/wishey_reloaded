import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:wishey/core/models/error_prone.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/features/create_wish/repositories/forms_state_repository.dart';

const _emptyWish = Wish(topic: '', title: '');
const _initialKey = '_initialFormKey';
const _currentKey = '_currentFormKey';

@Injectable(as: FormsStateRepository)
class FormsStateRepositoryImpl
    with ErrorProneMixin
    implements FormsStateRepository {
  final Box<Wish> _hiveBox;
  FormsStateRepositoryImpl() : _hiveBox = Hive.box('wishes_forms');

  @override
  Future<ErrorProne<Wish>> get currentWish async => executeErrorProne(
        () => _current,
      );

  @override
  Future<ErrorProne<Wish>> get initialWish async => executeErrorProne(
        () => _initial,
      );

  @override
  Future<ErrorProne<void>> discardWish() async {
    return executeErrorProne(() {
      _current = _initial;
    });
  }

  @override
  Future<ErrorProne<void>> initWish(Wish initialWish) async {
    return executeErrorProne(() {
      _initial = initialWish;
      _current = initialWish;
    });
  }
}

extension _HiveHelpersExtension on FormsStateRepositoryImpl {
  Wish get _current => _hiveBox.get(_currentKey) ?? _emptyWish;
  Wish get _initial => _hiveBox.get(_initialKey) ?? _emptyWish;
  set _current(Wish wish) => _hiveBox.put(_currentKey, wish);
  set _initial(Wish wish) => _hiveBox.put(_initialKey, wish);
}
