import 'package:flutter_local_notifications/flutter_local_notifications.dart';
class NotificationService {
  final FlutterLocalNotificationsPlugin notificationsPlugin = FlutterLocalNotificationsPlugin();
  final AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('flutter_logo');


  void initialiseNotification() async {
    InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
    );
    await notificationsPlugin.initialize(initializationSettings);
  }

  void sendNotification(String title, String body) async{
    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails("channelId", "channelName", importance: Importance.max, priority: Priority.high);
    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
    );
    await notificationsPlugin.show(0, title, body, notificationDetails);
  }
}
