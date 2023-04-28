import 'dart:ffi';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Service extends GetxService {
  int count = 0;
  Future<void> getCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    count = (prefs.getInt("count") ?? 0) + 1;
    print('count--->$count');
    await prefs.setInt('count', count);
  }
}
