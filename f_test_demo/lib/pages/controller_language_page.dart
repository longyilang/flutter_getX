import 'package:f_test_demo/pages/controller/message_controoler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageControllerPage extends StatefulWidget {
  const MessageControllerPage({Key? key}) : super(key: key);

  @override
  State<MessageControllerPage> createState() => _MessageControllerPageState();
}

class _MessageControllerPageState extends State<MessageControllerPage> {
  var messageController = Get.put(MessageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controller'),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'hello'.tr,
                style: const TextStyle(fontSize: 20, color: Colors.blueAccent),
              ),
              ElevatedButton(
                  onPressed: () {
                    messageController.changeLanguage('zh', 'CN');
                  },
                  child: const Text('切换到中文')),
              ElevatedButton(
                  onPressed: () {
                    messageController.changeLanguage('en', 'US');
                  },
                  child: const Text('切换到英文')),
            ]),
      ),
    );
  }
}
