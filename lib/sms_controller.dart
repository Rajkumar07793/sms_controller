// You have generated a new plugin project without specifying the `--platforms`
// flag. A plugin project with no platform support was generated. To add a
// platform, run `flutter create -t plugin --platforms <platforms> .` under the
// same directory. You can also find a detailed instruction on how to add
// platforms in the `pubspec.yaml` at
// https://flutter.dev/to/pubspec-plugin-platforms.

import 'dart:async';

import 'package:flutter/services.dart';

import 'sms_controller_platform_interface.dart';

class SmsController {
  static const MethodChannel _channel = MethodChannel('sms_controller');

  Future<String?> getPlatformVersion() {
    return SmsControllerPlatform.instance.getPlatformVersion();
  }

  static Future<List<Map<String, dynamic>>> getInboxSms() async {
    final List<dynamic> messages = await _channel.invokeMethod('getInboxSms');
    return messages.cast<Map<String, dynamic>>();
  }

  static Future<void> sendSms(String address, String body) async {
    await _channel.invokeMethod('sendSms', {'address': address, 'body': body});
  }
}
