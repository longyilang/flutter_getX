import 'package:get/get.dart';

import '../modules/news/bindings/news_binding.dart';
import '../modules/news/views/news_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const News = Routes.NEWS;

  static final routes = [
    GetPage(
      name: _Paths.NEWS,
      page: () => const NewsView(),
      binding: NewsBinding(),
    ),
  ];
}
