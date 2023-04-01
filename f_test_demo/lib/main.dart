
import 'package:f_test_demo/pages/home_page.dart';
import 'package:f_test_demo/pages/other/asynchronous.dart';
import 'package:f_test_demo/pages/other/isolates.dart';
import 'package:f_test_demo/pages/other/message.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main() {
  ///--------------->异步
  //print('开始执行---->');
  //_future();
  //asynchronous();
  //print('结束执行——-->');

  ///---------------->多线程
  // runIsolateDemo();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'NO',
      translations: Message(),
      locale: const Locale('zh','CN'),
      home: const HomePage(),
    );
  }
}