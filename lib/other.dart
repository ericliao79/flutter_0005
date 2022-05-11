import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'count/logic.dart';

class Other extends StatelessWidget {
  Other({Key? key}) : super(key: key);

  // 你可以让Get找到一个正在被其他页面使用的Controller，并将它返回给你。
  final state = Get.find<CountLogic>().state;

  @override
  Widget build(context){
    // 访问更新后的计数变量
    return Scaffold(body: Center(child: Text("${state.count}"),));
  }
}