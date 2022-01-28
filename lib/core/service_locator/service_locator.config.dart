// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/create_wish/cubit/create_wish_cubit.dart' as _i10;
import '../../features/create_wish/repositories/forms_state_repository.dart'
    as _i4;
import '../../features/create_wish/repositories/forms_state_repository_impl.dart'
    as _i5;
import '../../features/create_wish/use_cases/get_view_model.dart' as _i6;
import '../../features/create_wish/use_cases/should_show_save_button.dart'
    as _i7;
import '../../features/topics_board/cubit/topics_board_cubit.dart' as _i13;
import '../../features/topics_board/use_cases/get_topics.dart' as _i11;
import '../../features/wishes_board/cubit/wishes_board_cubit.dart' as _i14;
import '../../features/wishes_board/use_cases/get_wishes_use_case.dart' as _i12;
import '../repositories/wishes_repository.dart' as _i8;
import '../repositories/wishes_repository_impl.dart' as _i9;
import '../router/auto_route.gr.dart' as _i3;
import 'service_locator.dart' as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final routerInjector = _$RouterInjector();
  gh.lazySingleton<_i3.AppRouter>(() => routerInjector.appRouter);
  gh.factory<_i4.FormsStateRepository>(() => _i5.FormsStateRepositoryImpl());
  gh.factory<_i6.GetViewModelUseCase>(() => _i6.GetViewModelUseCase());
  gh.factory<_i7.ShouldShowSaveButtonUseCase>(
      () => _i7.ShouldShowSaveButtonUseCase(get<_i4.FormsStateRepository>()));
  gh.factory<_i8.WishesRepository>(() => _i9.WishesRepositoryImpl());
  gh.factory<_i10.CreateWishCubit>(
      () => _i10.CreateWishCubit(get<_i6.GetViewModelUseCase>()));
  gh.factory<_i11.GetTopicsUseCase>(
      () => _i11.GetTopicsUseCase(get<_i8.WishesRepository>()));
  gh.factory<_i12.GetWishesUseCase>(
      () => _i12.GetWishesUseCase(get<_i8.WishesRepository>()));
  gh.factory<_i13.TopicsBoardCubit>(() => _i13.TopicsBoardCubit(
      get<_i11.GetTopicsUseCase>(), get<_i3.AppRouter>()));
  gh.factory<_i14.WishesBoardCubit>(() => _i14.WishesBoardCubit(
      get<_i12.GetWishesUseCase>(), get<_i3.AppRouter>()));
  return get;
}

class _$RouterInjector extends _i15.RouterInjector {}
