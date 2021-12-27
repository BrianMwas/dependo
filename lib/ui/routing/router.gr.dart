// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../pages/home.dart' as _i1;
import '../pages/pets_details.dart' as _i2;
import '../pages/pets_list.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    PetDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<PetDetailsRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.PetDetailsPage(key: args.key, petsId: args.petsId));
    },
    PetsListRoute.name: (routeData) {
      final args = routeData.argsAs<PetsListRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.PetsListPage(key: args.key, userId: args.userId));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomeRoute.name, path: '/'),
        _i4.RouteConfig(PetDetailsRoute.name, path: '/pet-details-page'),
        _i4.RouteConfig(PetsListRoute.name, path: '/pets-list-page')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.PetDetailsPage]
class PetDetailsRoute extends _i4.PageRouteInfo<PetDetailsRouteArgs> {
  PetDetailsRoute({_i5.Key? key, required String petsId})
      : super(PetDetailsRoute.name,
            path: '/pet-details-page',
            args: PetDetailsRouteArgs(key: key, petsId: petsId));

  static const String name = 'PetDetailsRoute';
}

class PetDetailsRouteArgs {
  const PetDetailsRouteArgs({this.key, required this.petsId});

  final _i5.Key? key;

  final String petsId;

  @override
  String toString() {
    return 'PetDetailsRouteArgs{key: $key, petsId: $petsId}';
  }
}

/// generated route for
/// [_i3.PetsListPage]
class PetsListRoute extends _i4.PageRouteInfo<PetsListRouteArgs> {
  PetsListRoute({_i5.Key? key, required String userId})
      : super(PetsListRoute.name,
            path: '/pets-list-page',
            args: PetsListRouteArgs(key: key, userId: userId));

  static const String name = 'PetsListRoute';
}

class PetsListRouteArgs {
  const PetsListRouteArgs({this.key, required this.userId});

  final _i5.Key? key;

  final String userId;

  @override
  String toString() {
    return 'PetsListRouteArgs{key: $key, userId: $userId}';
  }
}
