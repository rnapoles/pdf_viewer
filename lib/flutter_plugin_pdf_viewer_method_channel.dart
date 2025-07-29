import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_plugin_pdf_viewer_platform_interface.dart';

/// An implementation of [FlutterPluginPdfViewerPlatform] that uses method channels.
class MethodChannelFlutterPluginPdfViewer extends FlutterPluginPdfViewerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_plugin_pdf_viewer');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
