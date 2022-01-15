import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'ui/routing/router.gr.dart';
import 'injection.dart';

Future<void> _onBackgroundMessage(RemoteMessage message) async {
  await Firebase.initializeApp();
  print("Remote message");
}

Future<void> _onTerminatedMessage(RemoteMessage message) async {
  await Firebase.initializeApp();
  print("terminated message");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureDependencies();
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );
  print('User was granted permission: ${settings.authorizationStatus}');

  String? token = await messaging.getToken();
  print("Token ====> $token");

  FirebaseMessaging.onBackgroundMessage(_onBackgroundMessage);
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }
  });
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
