import 'package:get/get.dart';

import '../news_model.dart';

class NewsProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return News.fromJson(map);
      if (map is List) return map.map((item) => News.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<News?> getNews(int id) async {
    final response = await get('news/$id');
    return response.body;
  }

  Future<Response<News>> postNews(News news) async => await post('news', news);
  Future<Response> deleteNews(int id) async => await delete('news/$id');
}
