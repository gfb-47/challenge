import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../app/app_routes.dart';
import '../../../utils/consts.dart';
import '../controllers/splash_page_controller.dart';
import '../widgets/company_name.dart';

///Splash Screen of the application
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 6),
        () => Get.toNamed(AppRoutes.instance.listDepartments));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CompanyNameWidget(),
            const SizedBox(height: 20),
            Container(
              child: Lottie.asset(
                splashAnimation,
                height: 100,
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
