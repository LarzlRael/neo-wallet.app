part of 'services.dart';

class PushNotificationServices with ChangeNotifier {
  FirebaseMessaging _firebaseMessagin = FirebaseMessaging.instance;

  initNotification() {
    _firebaseMessagin.requestPermission();

    _firebaseMessagin.getToken().then((token) {
      print(token);
    });
  }
}
