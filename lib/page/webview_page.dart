import 'package:flutter/material.dart';
import 'package:flutterwan/res/local_color.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({Key? key}) : super(key: key);


  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {

  late WebViewController controller;

  @override
  void initState() {
    String url = Get.arguments;
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(LocalColor.white)
      ..setNavigationDelegate(NavigationDelegate(
          onProgress: (progress) {
            //页面加载中
          },
          onNavigationRequest: (request) {
            if (request.url.startsWith("https://www.youtube.com/")) {
              return NavigationDecision.prevent;
            } else {
              return NavigationDecision.navigate;
            }
          }
      ))
      ..loadRequest(Uri.parse(url));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WebView"),
        centerTitle: true,
      ),
      body: Container(
        child: WebViewWidget(controller: controller,),
      ),
    );
  }
}
