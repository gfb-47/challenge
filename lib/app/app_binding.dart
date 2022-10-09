import 'package:get/instance_manager.dart';

import 'app_boxes.dart';

///All the first bindings of the application
class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AppBoxes());
  }
}
