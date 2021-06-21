import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  WebViewController _webViewController;
  bool _canGoBack = false;
  bool _canGoForward = false;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebViewScreen'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _webViewController?.reload,
          ),
        ],
      ),
      body: Center(
        child: WebView(
          initialUrl: "https://pub.dev/packages/webview_flutter",
          javascriptMode: JavascriptMode.unrestricted,
          javascriptChannels: {
            JavascriptChannel(
              name: "Print",
              onMessageReceived: (message) {
                print(message.message);
              },
            ),
          },
          onWebViewCreated: (controller) {
            _webViewController = controller;
          },
          onPageStarted: (value) {},
          onPageFinished: (value) async {
            _canGoBack = await _webViewController?.canGoBack();
            _canGoForward = await _webViewController?.canGoForward();
            setState(() {});
          },
          onWebResourceError: (error) {
            print("onWebResourceError : $error");
          },
        ),
      ),
      persistentFooterButtons: [
        IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: _canGoBack ? _webViewController?.goBack : null,
        ),
        IconButton(
          icon: Icon(Icons.arrow_forward),
          onPressed: _canGoForward ? _webViewController?.goForward : null,
        )
      ],
    );
  }
}
