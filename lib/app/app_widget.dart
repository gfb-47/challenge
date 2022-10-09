import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'app_binding.dart';
import 'app_routes.dart';
import 'app_theme.dart';

///It holds the core widget of Widget tree
class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightThemeData,
      initialBinding: AppBinding(),
      getPages: AppRoutes.instance.getPagesList,
      initialRoute: AppRoutes.instance.splash,
    );
  }
}
