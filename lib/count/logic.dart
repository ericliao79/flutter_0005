import 'package:get/get.dart';

import 'state.dart';

class CountLogic extends GetxController {
  final CountState state = CountState();

  increment() => state.count++;
}
