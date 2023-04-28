import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/news_controller.dart';

class NewsView extends GetWidget<NewsController> {
  const NewsView(this.arguments, {Key? key}) : super(key: key);
  final Map<String, dynamic> arguments;
  @override
  Widget build(BuildContext context) {
    print('--->${arguments['name'] ?? '收到传递值'}');
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NewsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
