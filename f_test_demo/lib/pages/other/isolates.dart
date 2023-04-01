import 'dart:isolate';

import 'package:flutter/material.dart';

class CrossIsolateMessage<T> extends Object {
  final SendPort sender;
  final T content;
  CrossIsolateMessage({required this.sender, required this.content});
}

String? stringMainIsolate;

void runIsolateDemo() {
  stringMainIsolate = 'helloFlutter!';

  ReceivePort receivePort = ReceivePort();

  receivePort.listen((message) {
    SendPort sendPort = message.sender;
    int questionId = message.content['questionId'];
    String content = message.content['question'];

    print('${Isolate.current.debugName} receive sub isolate message: $content');

    if (questionId == 1) {
      sendPort.send(CrossIsolateMessage(
          sender: receivePort.sendPort, content: 'Yes Lets go to swiming'));
    } else if (questionId == 2) {
      sendPort.send(CrossIsolateMessage(
          sender: receivePort.sendPort, content: 'No I will stay home'));
    }
  });
  Isolate.spawn(entryPoint, receivePort.sendPort, debugName: 'new Isolate');
}

void entryPoint(SendPort sendPort) {
  print("stringInMainIsolate--->:$stringMainIsolate");
  ReceivePort receivePort = ReceivePort();
  sendPort.send(CrossIsolateMessage(
      sender: receivePort.sendPort,
      content: {'questionId': 1, 'question': 'Go to swiming?'}));
  sendPort.send(CrossIsolateMessage(
      sender: receivePort.sendPort,
      content: {'questionId': 2, 'question': 'Go to play basketball?'}));

  receivePort.listen((message) {
    String content = message.content;
    print('${Isolate.current.debugName}');
  });
}
