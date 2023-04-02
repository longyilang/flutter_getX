import 'package:get/get.dart';

class WorksController extends GetxController {
  RxInt count = 0.obs;

  void incream() {
    count++;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    ever(count, (callback) => print('---->$count'));

    once(count, (callback) => print('---->$count'));
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print('加载完成');
  }

  @override
  void dispose() {
    // TODO: implement dispose

    print('销毁');
  }
}
