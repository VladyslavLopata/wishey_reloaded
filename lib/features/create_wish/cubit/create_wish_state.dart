import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wishey/core/models/failure.dart';
import 'package:wishey/features/create_wish/view_models/loaded_state_view_model.dart';

part 'create_wish_state.freezed.dart';

@freezed
class CreateWishState with _$CreateWishState {
  const factory CreateWishState.initial() = InitialWishState;
  const factory CreateWishState.loading() = LoadingWishState;
  const factory CreateWishState.loaded({
    @Default(false) bool shouldShowSaveButton,
    @Default(false) bool shouldReplaceExisting,
    required LoadedStateViewModel viewModel,
  }) = LoadedWishState;
  const factory CreateWishState.saveError() = SaveErrorWishState;
  const factory CreateWishState.serverError({
    required Failure failure,
  }) = ServerErrorWishState;
}
