# 📩 sms_controller

A Flutter plugin to read and send SMS messages on Android and send SMS using the default messaging app on iOS.

---

## ✨ Features

- 📤 Send SMS on Android (background)
- 📥 Read inbox SMS messages (Android only)
- 📤 Launch native SMS composer on iOS (via UI)

---

## 🚀 Getting Started

### 1. Add Dependency

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  sms_controller:
    git:
      url: https://github.com/Rajkumar07793/sms_controller.git
```

---

## 📱 Platform Support

| Feature        | Android | iOS             |
|----------------|---------|------------------|
| Send SMS       | ✅       | ✅ (UI only)      |
| Read SMS Inbox | ✅       | ❌ Not Supported  |

---

## 🛠️ Usage

```dart
import 'package:sms_controller/sms_controller.dart';

// Read inbox messages (Android only)
final List<Map<String, dynamic>> messages = await SmsController.getInboxSms();

// Send SMS
await SmsController.sendSms("1234567890", "Hello from Flutter!");
```

> ℹ️ On iOS, this will open the native messaging UI.

---

## 🔒 Permissions

### Android

Add the following permissions to `android/app/src/main/AndroidManifest.xml`:

```xml
<uses-permission android:name="android.permission.READ_SMS"/>
<uses-permission android:name="android.permission.SEND_SMS"/>
<uses-permission android:name="android.permission.RECEIVE_SMS"/>
```

Use [`permission_handler`](https://pub.dev/packages/permission_handler) to request runtime permissions.

### iOS

Add this to your `ios/Runner/Info.plist`:

```xml
<key>NSContactsUsageDescription</key>
<string>This app needs access to contacts for sending SMS.</string>
```

---

## 🧪 Example

Check the `example/` folder for a working demo.

---

## ❗ Notes

- iOS does not allow access to incoming SMS for security/privacy.
- Android requires runtime permission handling for SMS APIs.
- On Android 10+, your app needs to be the default SMS app to write to SMS database.

---

## 👨‍💻 Author

**[Rajkumar07793](https://github.com/Rajkumar07793)**  
Plugin developed with ❤️ using Flutter & Kotlin/Swift.

---

## 📄 License

[MIT](LICENSE)
