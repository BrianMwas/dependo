// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/repository/i_pets_repository.dart' as _i3;
import 'data/repository/i_user_repository.dart' as _i5;
import 'data/repository/impl/pets_repository.dart' as _i4;
import 'data/repository/impl/users_repository.dart' as _i6;
import 'ui/application/pets/pets_details/pets_details_bloc.dart' as _i7;
import 'ui/application/user_detail/user_detail_bloc.dart' as _i8;
import 'ui/application/users/user_list_bloc.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IPetsFacade>(() => _i4.PetFacade());
  gh.lazySingleton<_i5.IUsersFacade>(() => _i6.UserFacade());
  gh.factory<_i7.PetsDetailsBloc>(
      () => _i7.PetsDetailsBloc(get<_i3.IPetsFacade>()));
  gh.factory<_i8.UserDetailBloc>(
      () => _i8.UserDetailBloc(get<_i5.IUsersFacade>()));
  gh.factory<_i9.UserListBloc>(() => _i9.UserListBloc(get<_i5.IUsersFacade>()));
  return get;
}
