import 'package:get/get.dart';

class UniqueidController extends GetxController {
  RxInt count = 0.obs;
  void incream() {
    count++;
    update(['uniqueid1','uniqueid2']);
  }
}
