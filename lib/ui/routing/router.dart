import 'package:auto_route/auto_route.dart';
import 'package:dependo/ui/pages/home.dart';
import 'package:dependo/ui/pages/pets_details.dart';
import 'package:dependo/ui/pages/pets_list.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: HomePage,
      initial: true,
    ),
    AutoRoute(
      page: PetDetailsPage,
    ),
    AutoRoute(
      page: PetsListPage
    ),
  ],
)
class $AppRouter {}