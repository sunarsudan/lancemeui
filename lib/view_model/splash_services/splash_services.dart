import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lancemeup/view/onboarding_screen/home_onboarding_screen.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.to(const OnbordingHomeScreen());
    });
  }
}
