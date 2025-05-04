import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'sms_controller_platform_interface.dart';

/// An implementation of [SmsControllerPlatform] that uses method channels.
class MethodChannelSmsController extends SmsControllerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('sms_controller');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
