import 'package:f_test_demo/app/Base/pageWidget/base_stateful_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/news_controller.dart';

class NewsView extends BaseStatefulWidget<NewsController> {
  const NewsView(this.arguments, {Key? key}) : super(key: key);
  final Map<String, dynamic> arguments;
  
  @override
  Widget buildContent(BuildContext context) {
    throw UnimplementedError();
  }
}
