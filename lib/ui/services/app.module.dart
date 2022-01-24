

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dependo/ui/routing/router.gr.dart';
import 'package:dependo/ui/services/firebase.service.dart';
import 'package:dependo/ui/services/notification.service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {

  @preResolve
  Future<FirebaseService> get fireService => FirebaseService.init();

  @injectable
  FirebaseFirestore get store => FirebaseFirestore.instance;

  @injectable
  FirebaseAuth get auth => FirebaseAuth.instance;

  @injectable
  AppRouter get appRouter => AppRouter();

  @preResolve
  Future<NotificationService> get notificationService async => await NotificationService.init();
}