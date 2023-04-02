import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/binding_my_controller.dart';

class BindingControllerPage extends StatefulWidget {
  const BindingControllerPage({Key? key}) : super(key: key);

  @override
  State<BindingControllerPage> createState() => _BindingControllerPageState();
}

class _BindingControllerPageState extends State<BindingControllerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BindingController'),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                return Text(
                  '${Get.find<BindingMyController>().count}',
                  style:
                      const TextStyle(fontSize: 20, color: Colors.blueAccent),
                );
              }),
              ElevatedButton(
                  onPressed: () {
                    Get.find<BindingMyController>().incream();
                  },
                  child: const Text('count++')),
            ]),
      ),
    );
  }
}
