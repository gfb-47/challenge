import 'dart:async';

import 'package:get/get.dart';

import '../../../../app/app_routes.dart';

class SplashPageController extends GetxController {
  SplashPageController();

  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 1), () => print('aaaaaa'));
  }
}
