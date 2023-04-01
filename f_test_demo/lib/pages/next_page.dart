import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'model/teacher_model.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  var teacher = Teacher('abcd').obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('子页'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  teacher.value.name,
                  style: const TextStyle(color: Colors.blue),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    teacher.update((val) {
                      teacher.value.name = teacher.value.name.toUpperCase();
                    });
                  },
                  child: const Text('转换为大写')),
            ],
          ),
        ));
  }
}
