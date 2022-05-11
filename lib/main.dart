import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'count/view.dart';


void main() {
  // 確保 flutter 完成載入
  WidgetsFlutterBinding.ensureInitialized();

  // 鎖住 螢幕轉向
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
      GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: CountPage(title: 'GetX',)
      )
  );
}