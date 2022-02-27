
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterAutostarter {
  static const MethodChannel _channel = MethodChannel('flutter_autostarter');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
