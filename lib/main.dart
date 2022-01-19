import 'package:flutter/material.dart';

import 'ui/routing/router.gr.dart';
import 'injection.dart';
import 'ui/routing/router.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(Dependo());
}

class Dependo extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      color: Colors.redAccent,
    );
  }
}
