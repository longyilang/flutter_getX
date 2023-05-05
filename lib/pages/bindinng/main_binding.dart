import 'package:f_test_demo/pages/controller/binding_my_controller.dart';
import 'package:get/get.dart';

import '../../pin/news/controllers/news_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BindingMyController>(fenix: true, () => BindingMyController());
    Get.lazyPut(() => NewsController());
  }
}
