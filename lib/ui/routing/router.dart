import 'package:auto_route/auto_route.dart';
import 'package:dependo/ui/pages/login_page.dart';
import 'package:dependo/ui/pages/registration_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: RegistrationPage,
      initial: true,
    ),
    AutoRoute(
      page: LoginPage
    ),
  ],
)
class $AppRouter {}