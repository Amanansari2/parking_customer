import 'dart:async';

import 'package:get/get.dart';
import 'package:parkinghawkernew/ui/auth_screen/login_screen.dart';
import 'package:parkinghawkernew/ui/dashboard_screen.dart';
import 'package:parkinghawkernew/ui/on_boarding_screen.dart';
import 'package:parkinghawkernew/utils/fire_store_utils.dart';
import 'package:parkinghawkernew/utils/preferences.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 3), () => redirectScreen());
    super.onInit();
  }

  redirectScreen() async {
    if (Preferences.getBoolean(Preferences.isFinishOnBoardingKey) == false) {
      Get.offAll(const OnBoardingScreen());
    } else {
      bool isLogin = await FireStoreUtils.isLogin();
      if (isLogin == true) {
        Get.offAll(
          const DashBoardScreen(),
        );
      } else {
        Get.offAll(const LoginScreen());
      }
    }
  }
}
