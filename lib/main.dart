import 'package:f_test_demo/app/routes/app_pages.dart';
import 'package:f_test_demo/pages/Service/service.dart';
import 'package:f_test_demo/pages/bindinng/all_controller_binding.dart';
import 'package:f_test_demo/pages/home_page.dart';
import 'package:f_test_demo/pages/other/asynchronous.dart';
import 'package:f_test_demo/pages/other/isolates.dart';
import 'package:f_test_demo/pages/other/message.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future<void> initServices() async {
  await Get.putAsync(() async => await Service());
}

void main() {
  ///--------------->异步
  //print('开始执行---->');
  //_future();
  //asynchronous();
  //print('结束执行——-->');

  ///---------------->多线程
  // runIsolateDemo();
  initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'NO',
      initialBinding: AllControllerBinding(),
      translations: Message(),
      locale: const Locale('zh', 'CN'),
      home: const HomePage(),
      getPages: AppPages.routes,
    );
  }
}
