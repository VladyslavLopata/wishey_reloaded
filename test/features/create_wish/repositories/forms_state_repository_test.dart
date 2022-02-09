import 'package:flutter_test/flutter_test.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/features/create_wish/repositories/forms_state_repository.dart';

const _testWish1 = Wish(topic: 'topic', title: 'title');
const _emptyWish = Wish(title: '', topic: '');

void main() {
  late FormsStateRepository _repo;

  setUp(
    () {
      _repo = FormsStateRepository();
    },
  );

  group(
    'FormsStateRepository tests',
    () {
      test(
        'WHEN initWish is called\n'
        'THEN initialWish and currentWish should be equal to init value',
        () {
          _repo.initWish(_testWish1);
          expect(_repo.initialWish, _testWish1);
          expect(_repo.currentWish, _testWish1);
        },
      );
      test(
        'WHEN initWish is not called\n'
        'THEN initialWish and currentWish should be equal to empty wish',
        () {
          expect(_repo.initialWish, _emptyWish);
          expect(_repo.currentWish, _emptyWish);
        },
      );

      test(
        'GIVEN initWish is called with non-empty wish\n'
        'WHEN updated wish\n'
        'THEN initialWish and currentWish should not be equal',
        () {
          _repo.initWish(_testWish1);
          _repo.currentWish = _emptyWish;
          expect(_repo.initialWish, _testWish1);
          expect(_repo.currentWish, _emptyWish);
        },
      );

      test(
        'GIVEN initWish is called with non-empty wish\n'
        'WHEN updated wish and discard called\n'
        'THEN initialWish and currentWish should be equal to initial value',
        () {
          _repo.initWish(_testWish1);
          _repo.currentWish = _emptyWish;
          _repo.discardWish();
          expect(_repo.initialWish, _testWish1);
          expect(_repo.currentWish, _testWish1);
        },
      );
    },
  );
}
