
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterAutostarter {
  static const MethodChannel _channel = MethodChannel('flutter_autostarter');

  ///get isAutoStartPermissionAvailable
  static Future<bool> get isAutoStartPermissionAvailable async {
    final bool isAutoStartAvailable = await _channel.invokeMethod('isAutoStartPermissionAvailable');
    return isAutoStartAvailable;
  }

  ///to auto start manager page
  static void getAutoStartPermission() {
    _channel.invokeMethod('getAutoStartPermission');
  }
}
