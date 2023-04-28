
import 'dart:async';

import 'package:event_bus/event_bus.dart';
import 'package:get/get.dart';

import '../common/toast_mixin.dart';

abstract class BaseController<M> extends SuperController with ToastMixin {
  late M api;
  late EventBus eventBus;
  List<StreamSubscription>? _stremSubList;
  RxString barTitleString = "标题".obs;
  
  
}

