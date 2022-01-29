import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/core/router/auto_route.dart';
import 'package:wishey/core/util/state_mixin.dart';
import 'package:wishey/features/create_wish/cubit/create_wish_state.dart';
import 'package:wishey/features/create_wish/use_cases/get_view_model.dart';
import 'package:wishey/features/create_wish/use_cases/get_wish_topic.dart';
import 'package:wishey/features/create_wish/use_cases/init_forms_storage.dart';
import 'package:wishey/features/create_wish/use_cases/is_wish_valid.dart';
import 'package:wishey/features/create_wish/use_cases/save_wish.dart';
import 'package:wishey/features/create_wish/use_cases/should_show_save_button.dart';
import 'package:wishey/features/create_wish/use_cases/update_field.dart';
import 'package:wishey/features/create_wish/view_models/loaded_state_view_model.dart';

@injectable
class CreateWishCubit extends Cubit<CreateWishState>
    with StateMixin<CreateWishState> {
  final GetViewModelUseCase _getViewModelUseCase;
  final UpdateFieldUseCase _updateFieldUseCase;
  final ShouldShowSaveButtonUseCase _shouldShowSaveButtonUseCase;
  final IsWishValidUseCase _isWishValidUseCase;
  final SaveWishUseCase _saveWishUseCase;
  final InitFormsStorageUseCase _initFormsStorageUseCase;
  final GetWishTopicUseCase _getWishTopicUseCase;
  final AppRouter _router;

  CreateWishCubit(
    this._getViewModelUseCase,
    this._updateFieldUseCase,
    this._shouldShowSaveButtonUseCase,
    this._isWishValidUseCase,
    this._saveWishUseCase,
    this._initFormsStorageUseCase,
    this._router,
    this._getWishTopicUseCase,
  ) : super(const InitialWishState());

  void init({
    required Wish wish,
    bool shouldReplaceExisting = false,
  }) =>
      onlyWhen<InitialWishState>(() {
        emit(const CreateWishState.loading());

        _initFormsStorageUseCase(wish: wish);

        emit(
          CreateWishState.loaded(
            shouldReplaceExisting: shouldReplaceExisting,
            viewModel: _getViewModelUseCase(wish),
          ),
        );
      });

  void onFieldUpdated({
    required WishField field,
    required String text,
  }) =>
      onlyWhen<LoadedWishState>(
        () {
          _updateFieldUseCase(field: field, text: text);
          state.maybeMap(
            loaded: (loadedState) => emit(
              loadedState.copyWith(
                shouldShowSaveButton: _shouldShowSaveButtonUseCase(),
              ),
            ),
            orElse: () {},
          );
        },
      );

  void save() => onlyWhen<LoadedWishState>(
        () {
          final isWishValid = _isWishValidUseCase();

          if (isWishValid) {
            _saveWishUseCase(
              shouldReplaceExisting: state.maybeMap(
                loaded: (loaded) => loaded.shouldReplaceExisting,
                orElse: () => false,
              ),
            );
            _router.popUntilRoot();
            _router.push(
              WishesBoardRoute(
                topic: _getWishTopicUseCase(),
              ),
            );
          } else {
            emit(const CreateWishState.saveError());
          }
        },
      );
}
