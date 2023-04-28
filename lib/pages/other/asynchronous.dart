import 'dart:io';

class FutureDemo {}

Future<void> future() {
  return Future(() {
    sleep(const Duration(seconds: 2));
    print('执行异步');
  });
}

void asynchronous() async {
  String name = await Future.delayed(const Duration(seconds: 2), () {
    return 'long';
  }).then((value) {
    print('success');
    return '';
  });
  print(name);
}
