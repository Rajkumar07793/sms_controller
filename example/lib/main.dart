import 'package:flutter/material.dart';
import 'package:sms_controller/sms_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SmsPage());
  }
}

class SmsPage extends StatelessWidget {
  const SmsPage({super.key});

  Future<void> _getMessages() async {
    final messages = await SmsController.getInboxSms();
    print(messages);
  }

  Future<void> _sendSms() async {
    await SmsController.sendSms("1234567890", "Hello from plugin!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SMS Controller")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: _getMessages, child: Text("Read SMS")),
            ElevatedButton(onPressed: _sendSms, child: Text("Send SMS")),
          ],
        ),
      ),
    );
  }
}
