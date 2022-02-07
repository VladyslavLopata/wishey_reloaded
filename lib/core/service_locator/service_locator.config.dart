// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/create_wish/cubit/create_wish_cubit.dart' as _i21;
import '../../features/create_wish/repositories/forms_state_repository.dart'
    as _i6;
import '../../features/create_wish/repositories/forms_state_repository_impl.dart'
    as _i7;
import '../../features/create_wish/use_cases/get_view_model.dart' as _i8;
import '../../features/create_wish/use_cases/get_wish_topic.dart' as _i9;
import '../../features/create_wish/use_cases/init_forms_storage.dart' as _i10;
import '../../features/create_wish/use_cases/is_wish_valid.dart' as _i11;
import '../../features/create_wish/use_cases/save_wish.dart' as _i18;
import '../../features/create_wish/use_cases/should_show_save_button.dart'
    as _i12;
import '../../features/create_wish/use_cases/update_field.dart' as _i13;
import '../../features/topics_board/cubit/topics_board_cubit.dart' as _i19;
import '../../features/topics_board/use_cases/get_topics.dart' as _i16;
import '../../features/wishes_board/cubit/wishes_board_cubit.dart' as _i20;
import '../../features/wishes_board/use_cases/get_wishes_use_case.dart' as _i17;
import '../repositories/wishes_repository.dart' as _i14;
import '../repositories/wishes_repository_impl.dart' as _i15;
import '../router/auto_route.dart' as _i4;
import '../util/app_config.dart' as _i3;
import 'service_locator.dart' as _i22; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final routerInjector = _$RouterInjector();
  gh.lazySingleton<_i3.AppConfig>(() => _i3.AppConfig());
  gh.lazySingleton<_i4.AppRouter>(() => routerInjector.appRouter);
  gh.lazySingleton<_i5.Client>(() => routerInjector.client);
  gh.lazySingleton<_i6.FormsStateRepository>(
      () => _i7.FormsStateRepositoryImpl());
  gh.factory<_i8.GetViewModelUseCase>(() => _i8.GetViewModelUseCase());
  gh.factory<_i9.GetWishTopicUseCase>(
      () => _i9.GetWishTopicUseCase(get<_i6.FormsStateRepository>()));
  gh.factory<_i10.InitFormsStorageUseCase>(
      () => _i10.InitFormsStorageUseCase(get<_i6.FormsStateRepository>()));
  gh.factory<_i11.IsWishValidUseCase>(
      () => _i11.IsWishValidUseCase(get<_i6.FormsStateRepository>()));
  gh.factory<_i12.ShouldShowSaveButtonUseCase>(
      () => _i12.ShouldShowSaveButtonUseCase(get<_i6.FormsStateRepository>()));
  gh.factory<_i13.UpdateFieldUseCase>(
      () => _i13.UpdateFieldUseCase(get<_i6.FormsStateRepository>()));
  gh.lazySingleton<_i14.WishesRepository>(
      () => _i15.WishesRepositoryImpl(get<_i5.Client>(), get<_i3.AppConfig>()));
  gh.factory<_i16.GetTopicsUseCase>(
      () => _i16.GetTopicsUseCase(get<_i14.WishesRepository>()));
  gh.factory<_i17.GetWishesUseCase>(
      () => _i17.GetWishesUseCase(get<_i14.WishesRepository>()));
  gh.factory<_i18.SaveWishUseCase>(() => _i18.SaveWishUseCase(
      get<_i14.WishesRepository>(), get<_i6.FormsStateRepository>()));
  gh.factory<_i19.TopicsBoardCubit>(() => _i19.TopicsBoardCubit(
      get<_i16.GetTopicsUseCase>(), get<_i4.AppRouter>()));
  gh.factory<_i20.WishesBoardCubit>(() => _i20.WishesBoardCubit(
      get<_i17.GetWishesUseCase>(), get<_i4.AppRouter>()));
  gh.factory<_i21.CreateWishCubit>(() => _i21.CreateWishCubit(
      get<_i8.GetViewModelUseCase>(),
      get<_i13.UpdateFieldUseCase>(),
      get<_i12.ShouldShowSaveButtonUseCase>(),
      get<_i11.IsWishValidUseCase>(),
      get<_i18.SaveWishUseCase>(),
      get<_i10.InitFormsStorageUseCase>(),
      get<_i4.AppRouter>(),
      get<_i9.GetWishTopicUseCase>()));
  return get;
}

class _$RouterInjector extends _i22.RouterInjector {}
