import 'package:f_test_demo/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'asynchronous.dart';
import 'isolates.dart';

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
    return const GetMaterialApp(
      title: 'NO',
      home: HomePage(),
    );
  }
}
