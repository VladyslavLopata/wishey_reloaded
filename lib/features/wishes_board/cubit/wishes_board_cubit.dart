import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/core/router/auto_route.dart';
import 'package:wishey/core/util/state_mixin.dart';
import 'package:wishey/features/wishes_board/use_cases/get_wishes_use_case.dart';

part 'wishes_board_state.dart';
part 'wishes_board_cubit.freezed.dart';

@injectable
class WishesBoardCubit extends Cubit<WishesBoardState>
    with StateMixin<WishesBoardState> {
  final GetWishesUseCase _getWishesUseCase;
  final AppRouter _router;

  WishesBoardCubit(this._getWishesUseCase, this._router)
      : super(const WishesBoardState.initial());

  Future<void> init(String topic) async => onlyWhen<InitialWishesBoardState>(
        () async {
          emit(const WishesBoardState.loading());

          final errorProneWishes = await _getWishesUseCase(topic);

          errorProneWishes.when(
            failure: (error) {
              emit(WishesBoardState.error(error));
            },
            success: (wishes) {
              emit(
                WishesBoardState.loaded(
                  wishes: wishes,
                ),
              );
            },
          );
        },
      );

  void addWish(String topic) {
    onlyWhen<LoadedWishesBoardState>(
      () => _router.push(
        CreateWishRoute(
          wish: Wish(topic: topic, title: ''),
        ),
      ),
    );
  }

  void editWish(Wish wish) {
    onlyWhen<LoadedWishesBoardState>(
      () => _router.push(
        CreateWishRoute(
          wish: wish,
          shouldReplaceExisting: true,
        ),
      ),
    );
  }
}
