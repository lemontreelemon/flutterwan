
import 'package:flutter/material.dart';
import 'package:flutterwan/app_routes.dart';
import 'package:flutterwan/tabs/catergroy_page.dart';
import 'package:flutterwan/tabs/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      getPages: appRoutes,
      defaultTransition: Transition.rightToLeft,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0;
  List<Widget> listTabs = [] ;
  List<Widget> listTitles = [Text("首页"),Text("分类")];

  @override
  void initState() {
    listTabs.add(HomePage());
    listTabs.add(CatergroyPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: listTitles[_index],
        ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        currentIndex: _index,
        onTap: (index){
          setState(() {
            _index = index;
          });
        }, items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: "分类"),
      ],
      ),
      body: listTabs[_index],
     );
  }
}
