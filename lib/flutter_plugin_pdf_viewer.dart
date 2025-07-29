
import 'flutter_plugin_pdf_viewer_platform_interface.dart';

class FlutterPluginPdfViewer {
  Future<String?> getPlatformVersion() {
    return FlutterPluginPdfViewerPlatform.instance.getPlatformVersion();
  }
}
