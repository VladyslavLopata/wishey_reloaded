// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/create_wish/cubit/create_wish_cubit.dart' as _i18;
import '../../features/create_wish/repositories/forms_state_repository.dart'
    as _i5;
import '../../features/create_wish/use_cases/get_view_model.dart' as _i6;
import '../../features/create_wish/use_cases/get_wish_topic.dart' as _i7;
import '../../features/create_wish/use_cases/init_forms_storage.dart' as _i8;
import '../../features/create_wish/use_cases/is_wish_valid.dart' as _i9;
import '../../features/create_wish/use_cases/save_wish.dart' as _i15;
import '../../features/create_wish/use_cases/should_show_save_button.dart'
    as _i10;
import '../../features/create_wish/use_cases/update_field.dart' as _i11;
import '../../features/topics_board/cubit/topics_board_cubit.dart' as _i16;
import '../../features/topics_board/use_cases/get_topics.dart' as _i13;
import '../../features/wishes_board/cubit/wishes_board_cubit.dart' as _i17;
import '../../features/wishes_board/use_cases/get_wishes_use_case.dart' as _i14;
import '../repositories/wishes_repository.dart' as _i12;
import '../router/auto_route.dart' as _i3;
import 'service_locator.dart' as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final modularInjector = _$ModularInjector();
  gh.lazySingleton<_i3.AppRouter>(() => modularInjector.appRouter);
  gh.lazySingleton<_i4.Dio>(() => modularInjector.client);
  gh.lazySingleton<_i5.FormsStateRepository>(() => _i5.FormsStateRepository());
  gh.factory<_i6.GetViewModelUseCase>(() => _i6.GetViewModelUseCase());
  gh.factory<_i7.GetWishTopicUseCase>(
      () => _i7.GetWishTopicUseCase(get<_i5.FormsStateRepository>()));
  gh.factory<_i8.InitFormsStorageUseCase>(
      () => _i8.InitFormsStorageUseCase(get<_i5.FormsStateRepository>()));
  gh.factory<_i9.IsWishValidUseCase>(
      () => _i9.IsWishValidUseCase(get<_i5.FormsStateRepository>()));
  gh.factory<_i10.ShouldShowSaveButtonUseCase>(
      () => _i10.ShouldShowSaveButtonUseCase(get<_i5.FormsStateRepository>()));
  gh.factory<_i11.UpdateFieldUseCase>(
      () => _i11.UpdateFieldUseCase(get<_i5.FormsStateRepository>()));
  gh.factory<_i12.WishesRepository>(
      () => _i12.WishesRepository(get<_i4.Dio>()));
  gh.factory<_i13.GetTopicsUseCase>(
      () => _i13.GetTopicsUseCase(get<_i12.WishesRepository>()));
  gh.factory<_i14.GetWishesUseCase>(
      () => _i14.GetWishesUseCase(get<_i12.WishesRepository>()));
  gh.factory<_i15.SaveWishUseCase>(() => _i15.SaveWishUseCase(
      get<_i12.WishesRepository>(), get<_i5.FormsStateRepository>()));
  gh.factory<_i16.TopicsBoardCubit>(() => _i16.TopicsBoardCubit(
      get<_i13.GetTopicsUseCase>(), get<_i3.AppRouter>()));
  gh.factory<_i17.WishesBoardCubit>(() => _i17.WishesBoardCubit(
      get<_i14.GetWishesUseCase>(), get<_i3.AppRouter>()));
  gh.factory<_i18.CreateWishCubit>(() => _i18.CreateWishCubit(
      get<_i6.GetViewModelUseCase>(),
      get<_i11.UpdateFieldUseCase>(),
      get<_i10.ShouldShowSaveButtonUseCase>(),
      get<_i9.IsWishValidUseCase>(),
      get<_i15.SaveWishUseCase>(),
      get<_i8.InitFormsStorageUseCase>(),
      get<_i3.AppRouter>(),
      get<_i7.GetWishTopicUseCase>()));
  return get;
}

class _$ModularInjector extends _i19.ModularInjector {}
