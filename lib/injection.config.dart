// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/repository/i_auth_facade.dart' as _i6;
import 'data/repository/impl/auth_facade.dart' as _i7;
import 'ui/services/app.module.dart' as _i8;
import 'ui/services/firebase.service.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.factory<_i3.FirebaseAuth>(() => appModule.auth);
  gh.factory<_i4.FirebaseFirestore>(() => appModule.store);
  await gh.factoryAsync<_i5.FirebaseService>(() => appModule.fireService,
      preResolve: true);
  gh.factory<_i6.IAuthFacade>(() =>
      _i7.AuthFacade(get<_i3.FirebaseAuth>(), get<_i4.FirebaseFirestore>()));
  return get;
}

class _$AppModule extends _i8.AppModule {}
