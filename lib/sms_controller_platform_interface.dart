import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'sms_controller_method_channel.dart';

abstract class SmsControllerPlatform extends PlatformInterface {
  /// Constructs a SmsControllerPlatform.
  SmsControllerPlatform() : super(token: _token);

  static final Object _token = Object();

  static SmsControllerPlatform _instance = MethodChannelSmsController();

  /// The default instance of [SmsControllerPlatform] to use.
  ///
  /// Defaults to [MethodChannelSmsController].
  static SmsControllerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SmsControllerPlatform] when
  /// they register themselves.
  static set instance(SmsControllerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
