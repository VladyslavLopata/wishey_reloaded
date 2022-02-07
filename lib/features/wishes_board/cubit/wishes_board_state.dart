part of 'wishes_board_cubit.dart';

@freezed
class WishesBoardState with _$WishesBoardState {
  const factory WishesBoardState.initial() = InitialWishesBoardState;
  const factory WishesBoardState.loading() = LoadingWishesBoardState;
  const factory WishesBoardState.loaded({
    required List<Wish> wishes,
  }) = LoadedWishesBoardState;
  const factory WishesBoardState.error(Failure error) = ErrorWishesBoardState;
}
