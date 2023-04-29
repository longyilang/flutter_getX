import 'package:get/get.dart';

import '../../pin/news/bindings/news_binding.dart';
import '../../pin/news/views/news_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const News = Routes.NEWS;

  static final List<GetPage<dynamic>> pages = [
    GetPage(
      name: _Paths.NEWS,
      page: () => const NewsView({}),
      binding: NewsBinding(),
    ),
  ];
}
