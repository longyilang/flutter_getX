import '../../../app/Base/controller/base_refresh_controller.dart';
import '../../../app/net/api/api_news_service.dart';

class NewsController extends BaseRefreshController<ApiNewsService> {
  @override
  void onInit() {
    print('NewsController初始化——--->');
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void requestNews() {}

  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }
}
