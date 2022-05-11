import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../other.dart';
import 'logic.dart';

class CountPage extends StatelessWidget {
  CountPage({Key? key, required this.title}) : super(key: key);

  final String title;
  final logic = Get.put(CountLogic());
  final state = Get.find<CountLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(() => Text(
              '${state.count}',
            )),
            ElevatedButton(
              child: Text("Go to Other"),
              onPressed: () {
                Get.to(Other());
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => logic.increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
