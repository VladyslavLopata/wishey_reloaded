// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/create_wish/cubit/create_wish_cubit.dart' as _i20;
import '../../features/create_wish/repositories/forms_state_repository.dart'
    as _i5;
import '../../features/create_wish/repositories/forms_state_repository_impl.dart'
    as _i6;
import '../../features/create_wish/use_cases/get_view_model.dart' as _i7;
import '../../features/create_wish/use_cases/get_wish_topic.dart' as _i8;
import '../../features/create_wish/use_cases/init_forms_storage.dart' as _i9;
import '../../features/create_wish/use_cases/is_wish_valid.dart' as _i10;
import '../../features/create_wish/use_cases/save_wish.dart' as _i17;
import '../../features/create_wish/use_cases/should_show_save_button.dart'
    as _i11;
import '../../features/create_wish/use_cases/update_field.dart' as _i12;
import '../../features/topics_board/cubit/topics_board_cubit.dart' as _i18;
import '../../features/topics_board/use_cases/get_topics.dart' as _i15;
import '../../features/wishes_board/cubit/wishes_board_cubit.dart' as _i19;
import '../../features/wishes_board/use_cases/get_wishes_use_case.dart' as _i16;
import '../repositories/wishes_repository.dart' as _i13;
import '../repositories/wishes_repository_impl.dart' as _i14;
import '../router/auto_route.dart' as _i4;
import '../util/app_config.dart' as _i3;
import 'service_locator.dart' as _i21; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final routerInjector = _$RouterInjector();
  gh.lazySingleton<_i3.AppConfig>(() => _i3.AppConfig());
  gh.lazySingleton<_i4.AppRouter>(() => routerInjector.appRouter);
  gh.factory<_i5.FormsStateRepository>(
      () => _i6.FormsStateRepositoryImpl(get<_i3.AppConfig>()));
  gh.factory<_i7.GetViewModelUseCase>(() => _i7.GetViewModelUseCase());
  gh.factory<_i8.GetWishTopicUseCase>(
      () => _i8.GetWishTopicUseCase(get<_i5.FormsStateRepository>()));
  gh.factory<_i9.InitFormsStorageUseCase>(
      () => _i9.InitFormsStorageUseCase(get<_i5.FormsStateRepository>()));
  gh.factory<_i10.IsWishValidUseCase>(
      () => _i10.IsWishValidUseCase(get<_i5.FormsStateRepository>()));
  gh.factory<_i11.ShouldShowSaveButtonUseCase>(
      () => _i11.ShouldShowSaveButtonUseCase(get<_i5.FormsStateRepository>()));
  gh.factory<_i12.UpdateFieldUseCase>(
      () => _i12.UpdateFieldUseCase(get<_i5.FormsStateRepository>()));
  gh.lazySingleton<_i13.WishesRepository>(() => _i14.WishesRepositoryImpl());
  gh.factory<_i15.GetTopicsUseCase>(
      () => _i15.GetTopicsUseCase(get<_i13.WishesRepository>()));
  gh.factory<_i16.GetWishesUseCase>(
      () => _i16.GetWishesUseCase(get<_i13.WishesRepository>()));
  gh.factory<_i17.SaveWishUseCase>(() => _i17.SaveWishUseCase(
      get<_i13.WishesRepository>(), get<_i5.FormsStateRepository>()));
  gh.factory<_i18.TopicsBoardCubit>(() => _i18.TopicsBoardCubit(
      get<_i15.GetTopicsUseCase>(), get<_i4.AppRouter>()));
  gh.factory<_i19.WishesBoardCubit>(() => _i19.WishesBoardCubit(
      get<_i16.GetWishesUseCase>(), get<_i4.AppRouter>()));
  gh.factory<_i20.CreateWishCubit>(() => _i20.CreateWishCubit(
      get<_i7.GetViewModelUseCase>(),
      get<_i12.UpdateFieldUseCase>(),
      get<_i11.ShouldShowSaveButtonUseCase>(),
      get<_i10.IsWishValidUseCase>(),
      get<_i17.SaveWishUseCase>(),
      get<_i9.InitFormsStorageUseCase>(),
      get<_i4.AppRouter>(),
      get<_i8.GetWishTopicUseCase>()));
  return get;
}

class _$RouterInjector extends _i21.RouterInjector {}
