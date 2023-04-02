import 'package:f_test_demo/pages/controller/uniqueid_controller.dart';
import 'package:f_test_demo/pages/controller_language_page.dart';
import 'package:f_test_demo/pages/controller_uniqueid_page.dart';
import 'package:f_test_demo/pages/model/teacher_model.dart';
import 'package:f_test_demo/pages/next_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller_binding_page.dart';
import 'controller_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List',
            style: TextStyle(fontSize: 18, color: Colors.black)),
      ),
      body: _contextWidget(),
    );
  }

  /// titleHead
  Widget _contextWidget() {
    return ListView(
      children: [
        _headerTile(title: 'GetX', children: [
          _buttonForInfo([
            _LookTileInfo.forPro('SnackBar', () {
              Get.snackbar('提示', '你有新消息了~');
            }),
            _LookTileInfo.forPro('Dialog', () {
              Get.defaultDialog(
                  title: '提示',
                  content: const Text('你爷爷的爷爷'),
                  textCancel: '取消',
                  onCancel: () {
                    Get.back();
                  },
                  textConfirm: '确定',
                  onConfirm: () {
                    Get.back();
                  });
            }),
            _LookTileInfo.forPro('BottomSheet', () {
              Get.bottomSheet(Wrap(
                children: [
                  ListTile(
                    title: const Text('白天模式'),
                    onTap: () {
                      Get.changeTheme(ThemeData.light());
                      Get.back();
                    },
                  ),
                  ListTile(
                    title: const Text('黑夜模式'),
                    onTap: () {
                      Get.changeTheme(ThemeData.dark());
                      Get.back();
                    },
                  ),
                ],
              ));
            }),
            _LookTileInfo.forPro('Navigation路由', () {
              Get.to(const NextPage())?.then((value) => () {});
            }),
            _LookTileInfo.forPro('obx状态管理', () {
              Get.to(const NextPage())?.then((value) => () {});
            }),
            _LookTileInfo.forPro('getXCtroller', () {
              Get.to(const ControllerPage());
            }),
            _LookTileInfo.forPro('uniqueidCtroller', () {
              Get.to(const UniqueidControllerPage());
            }),
            _LookTileInfo.forPro('语言国际化', () {
              Get.to(const MessageControllerPage());
            }),
            _LookTileInfo.forPro('Binding', () {
              Get.to(const BindingControllerPage());
            })
          ]),
        ])
      ],
    );
  }

  /// header
  Widget _headerTile({required String title, required List<Widget> children}) {
    return ExpansionTile(
      title: Text(title,
          style: const TextStyle(fontSize: 18, color: Colors.black)),
      children: children,
    );
  }

  /// botton
  Widget _buttonForInfo(List<_LookTileInfo> buttonInfo) {
    return Container(
      margin: const EdgeInsets.only(top: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: buttonInfo
            .map((e) => Padding(
                  padding: const EdgeInsets.only(left: 4, right: 4),
                  child: ElevatedButton(
                    onPressed: e.onPressed,
                    child: Text(e.text,
                        style: TextStyle(
                            color: e.isForDistribute
                                ? Colors.pink
                                : Colors.white)),
                  ),
                ))
            .toList(),
      ),
    );
  }
}

class _LookTileInfo {
  final String text;
  final VoidCallback onPressed;
  final bool isForDistribute;

  _LookTileInfo(this.text, this.onPressed, this.isForDistribute);
  _LookTileInfo.forPro(this.text, this.onPressed,
      {this.isForDistribute = false});
  _LookTileInfo.forDis(this.text, this.onPressed,
      {this.isForDistribute = true});
}
