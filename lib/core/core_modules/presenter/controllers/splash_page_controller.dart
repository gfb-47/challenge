import 'dart:async';

import 'package:get/get.dart';

class SplashPageController extends GetxController {
  SplashPageController();

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 1), () => null);
  }
}
