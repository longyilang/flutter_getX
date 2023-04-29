import 'dart:async';

import 'package:dio/dio.dart';
import 'package:event_bus/event_bus.dart';
import 'package:f_test_demo/app/ext/get_extension.dart';
import 'package:get/get.dart';

import '../../../utils/log_utils.dart';
import '../../common/toast_mixin.dart';
import '../../net/app_except.dart';
import '../../net/result/base_result.dart';
import '../../net/result/base_wan_result.dart';


abstract class BaseController<M> extends SuperController with ToastMixin {
  late M api;
  late EventBus eventBus;
  List<StreamSubscription>? _stremSubList;
  RxString barTitleString = "标题".obs;

  /// 发起网络请求，同时处理异常，loading
  httpRequest<T>(Future<T> future, FutureOr<dynamic> Function(T value) onValue,
      {Function(Exception e)? error,
      bool showLoading = false,
      bool handleError = true,
      bool handleSuccess = true}) {
    if (showLoading) {
      Get.showLoading();
    }
    future.then((t) {
      ///添加结果码判断（同时考虑加入List的判断逻辑）
      if (t is BaseWanResult) {
        baseWanResultHandler(t, handleSuccess, onValue, handleError);
      } else if (t is BaseResult) {
        baseResultHandler(t, handleSuccess, onValue, handleError);
      } else {
        if (handleSuccess) {
          showSuccess();
        }
        onValue(t);
      }
    }).catchError((e) {
      LogE("网络请求异常====>error:$e");
      if (handleError) {
        showError(e: e);
      }
      if (error != null) {
        error(e);
      }
      showToast(e.toString());
    }).whenComplete(() {
      if (showLoading) {
        Get.dismiss();
      }
    });
  }

  /// WanAndroid接口处理
  void baseWanResultHandler<T>(t, bool handleSuccess,
      FutureOr<dynamic> Function(T value) onValue, bool handleError) {
    if (t.errorCode == 0) {
      if (handleSuccess) {
        showSuccess();
      }
      onValue(t);
    } else {
      if (handleError) {
        showToast(t.errorMsg);
        showError(errorMessage: t.errorMsg);
      } else {
        onValue(t);
        if (handleSuccess) {
          showSuccess();
        }
      }
    }
  }

    ///接口处理
  void baseResultHandler<T>(t, bool handleSuccess,
      FutureOr<dynamic> Function(T value) onValue, bool handleError) {
    if ("1" == t.resCode) {
      if (handleSuccess) {
        showSuccess();
      }
      onValue(t);
    } else {
      if (handleError) {
        showToast(t.resMessage);
        showError(errorMessage: t.resMessage);
      } else {
        onValue(t);
        if (handleSuccess) {
          showSuccess();
        }
      }
    }
  }

  void loadNet();


  void showLoading() {
    change(null, status: RxStatus.loading());
  }

  void showSuccess() {
    change(null, status: RxStatus.success());
  }

  void showEmpty() {
    change(null, status: RxStatus.empty());
  }

  void showError({String? errorMessage, Exception? e}) {
    if (e != null) {
      if (e is DioError && e.error is AppException) {
        var error = e.error as AppException;
        change(null, status: RxStatus.error(error.message));
      } else {
        change(null, status: RxStatus.error(errorMessage));
      }
    } else {
      change(null, status: RxStatus.error(errorMessage));
    }
  }

  @override
  void onClose() {
    super.onClose();
    //解订阅EventBus
    disposeEventBus();
    LogD('>>>>>>>onClose');
  }

  ///解订阅StreamSubscription--关联EventBus
  void disposeEventBus() {
    _stremSubList?.forEach((element) {
      element.cancel();
    });
  }

  ///是否使用GetX查找EventBus
  bool useEventBus() => false;

  ///管理Eventbus解订阅
  void addStremSub(StreamSubscription? streamSubscription) {
    _stremSubList ??= [];
    if (streamSubscription != null) {
      _stremSubList?.add(streamSubscription);
    }
  }
}
