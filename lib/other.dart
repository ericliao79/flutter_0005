import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'count/logic.dart';

class Other extends StatelessWidget {
  Other({Key? key}) : super(key: key);

  final logic = Get.put(CountLogic());
  final state = Get.find<CountLogic>().state;

  @override
  Widget build(context) {
    // 访问更新后的计数变量
    return Scaffold(
        appBar: AppBar(
          title: const Text('Other'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${state.count}'),
              ElevatedButton(
                child: Text("Increment"),
                onPressed: () {
                  logic.increment();
                },
              ),
            ],
          ),
        ));
  }
}
