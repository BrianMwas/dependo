// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/repository/i_auth_facade.dart' as _i7;
import 'data/repository/impl/auth_facade.dart' as _i8;
import 'ui/routing/router.gr.dart' as _i3;
import 'ui/services/app.module.dart' as _i10;
import 'ui/services/firebase.service.dart' as _i6;
import 'ui/services/notification.service.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.factory<_i3.AppRouter>(() => appModule.appRouter);
  gh.factory<_i4.FirebaseAuth>(() => appModule.auth);
  gh.factory<_i5.FirebaseFirestore>(() => appModule.store);
  await gh.factoryAsync<_i6.FirebaseService>(() => appModule.fireService,
      preResolve: true);
  gh.factory<_i7.IAuthFacade>(() =>
      _i8.AuthFacade(get<_i4.FirebaseAuth>(), get<_i5.FirebaseFirestore>()));
  await gh.factoryAsync<_i9.NotificationService>(
      () => appModule.notificationService,
      preResolve: true);
  return get;
}

class _$AppModule extends _i10.AppModule {}
