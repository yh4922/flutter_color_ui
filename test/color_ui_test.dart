import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:color_ui/color_ui.dart';

void main() {
  const MethodChannel channel = MethodChannel('color_ui');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await ColorUi.platformVersion, '42');
  });
}
