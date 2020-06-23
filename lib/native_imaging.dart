export 'native.dart' if (dart.library.js) 'js.dart';

import 'dart:async';

import 'package:flutter/services.dart';

class NativeImaging {
  static const MethodChannel _channel =
      const MethodChannel('native_imaging');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
