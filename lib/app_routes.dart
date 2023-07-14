import 'package:flutterwan/main.dart';
import 'package:flutterwan/page/webview_page.dart';
import 'package:get/get.dart';

List<GetPage> appRoutes = [
  GetPage(name: "/", page: () => MyHomePage()),
  GetPage(name: "/page/webview", page:() => WebViewPage())
];