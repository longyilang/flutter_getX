import 'package:get/get.dart';

class Message extends Translations {
  @override
  
  Map<String, Map<String, String>> get keys => {
        'zh_CN': {'hello': '你好'},
        'en_US': {'hello':'hello'}
      };
}
