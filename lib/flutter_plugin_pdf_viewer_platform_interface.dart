import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_plugin_pdf_viewer_method_channel.dart';

abstract class FlutterPluginPdfViewerPlatform extends PlatformInterface {
  /// Constructs a FlutterPluginPdfViewerPlatform.
  FlutterPluginPdfViewerPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterPluginPdfViewerPlatform _instance = MethodChannelFlutterPluginPdfViewer();

  /// The default instance of [FlutterPluginPdfViewerPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterPluginPdfViewer].
  static FlutterPluginPdfViewerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterPluginPdfViewerPlatform] when
  /// they register themselves.
  static set instance(FlutterPluginPdfViewerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
