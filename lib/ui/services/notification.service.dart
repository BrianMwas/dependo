
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:dependo/ui/routing/router.gr.dart';

import '../../injection.dart';

class NotificationService {
  static Future<NotificationService> init() async {
    final router = locator<AppRouter>();

    await AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
            channelKey: "dependo_notification_channel",
            channelName: "DependoNotification",
            channelDescription: "Dependo notification channel",
            importance: NotificationImportance.Max,
            enableVibration: true,
            playSound: true,
            defaultRingtoneType: DefaultRingtoneType.Ringtone,
        ),
        NotificationChannel(
          channelKey: "dependo_basic_notification",
          channelName: "BasicNotification",
          channelDescription: "Handles basic notifications",
          importance: NotificationImportance.Default,
          defaultRingtoneType: DefaultRingtoneType.Notification
        ),
      ],
    );

    final isAllowed = await AwesomeNotifications().isNotificationAllowed();

    if (!isAllowed) {
      AwesomeNotifications().requestPermissionToSendNotifications(
          permissions: [NotificationPermission.Sound, NotificationPermission.Alert, NotificationPermission.FullScreenIntent],
      );
    }

    AwesomeNotifications().actionStream.listen((event) {
      if(event.id == 2) {
        print("We printed you here");
        router.pushNamed(LoginRoute.name);
      } else {
        print("We printed you here again");
        router.push(LoginRoute());
      }
    });

    return NotificationService();
  }
}