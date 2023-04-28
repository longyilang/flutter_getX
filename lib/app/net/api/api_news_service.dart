import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../../../pin/bean/news_bean.dart';
import '../dio_client.dart';
import '../http_url.dart';


part 'api_news_service.g.dart';

@RestApi(baseUrl: HttpUrl.BASE_NEWS_URL)
abstract class ApiNewsService{
  factory ApiNewsService({Dio? dio, String? baseUrl}) {
    dio ??= DioClient().dio;
    return _ApiNewsService(dio, baseUrl: baseUrl);
  }

  @GET("toutiao/index")
  Future<News> queryNewsData(
    @Query("type") String type,
    @Query("is_filter") int isFilter,
    {@Query("page_size") int size = 10, @Query("key") String key = "key"}
  );
}
