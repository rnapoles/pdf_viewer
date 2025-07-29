import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer_platform_interface.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterPluginPdfViewerPlatform
    with MockPlatformInterfaceMixin
    implements FlutterPluginPdfViewerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterPluginPdfViewerPlatform initialPlatform = FlutterPluginPdfViewerPlatform.instance;

  test('$MethodChannelFlutterPluginPdfViewer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterPluginPdfViewer>());
  });

  test('getPlatformVersion', () async {
    FlutterPluginPdfViewer flutterPluginPdfViewerPlugin = FlutterPluginPdfViewer();
    MockFlutterPluginPdfViewerPlatform fakePlatform = MockFlutterPluginPdfViewerPlatform();
    FlutterPluginPdfViewerPlatform.instance = fakePlatform;

    expect(await flutterPluginPdfViewerPlugin.getPlatformVersion(), '42');
  });
}
