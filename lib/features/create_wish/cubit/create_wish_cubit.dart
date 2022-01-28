import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:wishey/features/create_wish/cubit/create_wish_state.dart';
import 'package:wishey/features/create_wish/use_cases/get_view_model.dart';

@injectable
class CreateWishCubit extends Cubit<CreateWishState> {
  final GetViewModelUseCase _getViewModelUseCase;
  CreateWishCubit(this._getViewModelUseCase) : super(const InitialWishState());

  void init(String topic) async {
    emit(const LoadingWishState());

    emit(
      LoadedWishState(
        viewModel: _getViewModelUseCase(topic),
      ),
    );
  }

  void onFieldUpdated() {}

  void save() {}
}
