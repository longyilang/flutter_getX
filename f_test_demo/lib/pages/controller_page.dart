import 'package:f_test_demo/pages/controller/works_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerPage extends StatefulWidget {
  const ControllerPage({Key? key}) : super(key: key);

  @override
  State<ControllerPage> createState() => _ControllerPageState();
}

class _ControllerPageState extends State<ControllerPage> {
  var workController = Get.put(WorksController());
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
              Obx(() {
                return Text(
                  '${workController.count.value}',
                  style:
                      const TextStyle(fontSize: 20, color: Colors.blueAccent),
                );
              }),
              ElevatedButton(
                  onPressed: () {
                    workController.incream();
                  },
                  child: const Text('count++')),
              TextField(
                onChanged: (value) {},
                onSubmitted: (value) {
                  workController.count.value = int.parse(value);
                },
              )
            ]),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    workController.dispose();
  }
}
