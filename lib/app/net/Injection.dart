import 'package:f_test_demo/app/net/api/api_news_service.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

///初始化注入对象
class Injection extends GetxService {
  Future<void> init() async {
    print('初始化二---->');
    await Get.putAsync(() => SharedPreferences.getInstance());
    print('初始化三---->');
    Get.lazyPut(() => ApiNewsService(), fenix: true);
  }
}
