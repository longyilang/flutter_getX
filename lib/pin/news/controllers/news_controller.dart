import '../../../app/Base/controller/base_refresh_controller.dart';
import '../../../app/net/api/api_news_service.dart';
import '../../../utils/log_utils.dart';

class NewsController extends BaseRefreshController<ApiNewsService> {
  @override
  void loadNet() {
    requestPageData();
  }

  @override
  void onReady() {
    super.onReady();
    LogD("Home初始化onResume");
    loadNet();
  }
}
