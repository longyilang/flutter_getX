import 'package:get/get.dart';

import '../../pin/news/bindings/news_binding.dart';
import '../../pin/news/views/news_view.dart';


abstract class AppRoutes {

  static const news = "/news_page"; 

  static final List<GetPage<dynamic>> pages = [
    GetPage(
      name: news,
      page: () => const NewsView({}),
      binding: NewsBinding(),
    ),
  ];
}
