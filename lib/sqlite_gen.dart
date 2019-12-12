import 'dart:async';

import 'package:flutter/services.dart';

class SqliteGen {
  static const MethodChannel _channel =
      const MethodChannel('sqlite_gen');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
