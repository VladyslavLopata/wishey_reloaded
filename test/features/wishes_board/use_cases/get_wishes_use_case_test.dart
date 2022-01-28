import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wishey/core/models/error_prone.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/core/repositories/wishes_repository.dart';
import 'package:wishey/features/wishes_board/use_cases/get_wishes_use_case.dart';

import 'get_wishes_use_case_test.mocks.dart';

const _topic = 'topic';

const _correctWishes = [
  Wish(topic: _topic, title: _topic + '1'),
  Wish(topic: _topic, title: _topic + '2'),
];

const _wishes = [
  ..._correctWishes,
  Wish(topic: _topic + '1', title: _topic + '3'),
];

const _wishList = WishList(wishes: _wishes);

@GenerateMocks([WishesRepository])
void main() {
  late final GetWishesUseCase _getWishesUseCase;
  late final WishesRepository _wishesRepository;

  setUp(() {
    _wishesRepository = MockWishesRepository();
    _getWishesUseCase = GetWishesUseCase(_wishesRepository);

    when(_wishesRepository.getWishlist())
        .thenAnswer((_) async => ErrorProne.success(_wishList));
  });

  group(
    'Get Wishes Use Case tests',
    () {
      test(
        'WHEN supplying differing topics\n'
        'THEN should filter only correct ones',
        () async {
          final answer = await _getWishesUseCase.call(_topic);
          final unfolded = answer.forceUnfold();
          expect(
            unfolded,
            _correctWishes,
          );
          expect(unfolded, isNotNull);
        },
      );
    },
  );
}
