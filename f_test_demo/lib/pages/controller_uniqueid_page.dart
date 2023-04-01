import 'package:f_test_demo/pages/controller/uniqueid_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UniqueidControllerPage extends StatefulWidget {
  const UniqueidControllerPage({Key? key}) : super(key: key);

  @override
  State<UniqueidControllerPage> createState() => _UniqueidControllerPageState();
}

class _UniqueidControllerPageState extends State<UniqueidControllerPage> {
  var uniqueidController = Get.put(UniqueidController());
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
             GetBuilder<UniqueidController>(
              id: 'uniqueid1',
              builder: (controller){
                return Text(
                  '${uniqueidController.count.value}',
                  style:
                      const TextStyle(fontSize: 20, color: Colors.blueAccent),
                );
             }),
             GetBuilder<UniqueidController>(
              id: 'uniqueid2',
              builder: (controller){
                return Text(
                  '${uniqueidController.count.value}',
                  style:
                      const TextStyle(fontSize: 20, color: Colors.greenAccent),
                );
             }),
              ElevatedButton(
                  onPressed: () {
                    uniqueidController.incream();
                  },
                  child: const Text('count++')),
             
            ]),
      ),
    );
  }
}