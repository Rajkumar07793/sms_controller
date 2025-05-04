import 'package:flutter_test/flutter_test.dart';
import 'package:sms_controller/sms_controller.dart';
import 'package:sms_controller/sms_controller_platform_interface.dart';
import 'package:sms_controller/sms_controller_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSmsControllerPlatform
    with MockPlatformInterfaceMixin
    implements SmsControllerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SmsControllerPlatform initialPlatform = SmsControllerPlatform.instance;

  test('$MethodChannelSmsController is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSmsController>());
  });

  test('getPlatformVersion', () async {
    SmsController smsControllerPlugin = SmsController();
    MockSmsControllerPlatform fakePlatform = MockSmsControllerPlatform();
    SmsControllerPlatform.instance = fakePlatform;

    expect(await smsControllerPlugin.getPlatformVersion(), '42');
  });
}
