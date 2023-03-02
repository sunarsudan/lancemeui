import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lancemeup/resources/colors/app_colors/app_colors.dart';
import 'package:lancemeup/resources/reusable_components/round_button/round_button.dart';
import 'package:lancemeup/view/login_screen/login_screen.dart';
import 'package:lancemeup/view/onboarding_screen/first_onboarding_screen.dart';
import 'package:lancemeup/view/onboarding_screen/second_onboarding_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbordingHomeScreen extends StatefulWidget {
  const OnbordingHomeScreen({super.key});

  @override
  State<OnbordingHomeScreen> createState() => _OnbordingHomeScreenState();
}

class _OnbordingHomeScreenState extends State<OnbordingHomeScreen> {
  PageController pageController = PageController();

  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              padding: const EdgeInsets.only(bottom: 150),
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    isLastPage = value == 1;
                  });
                },
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                children: const [
                  FirstOnboardingScreen(),
                  SecondOnboardingScreen(),
                ],
              ))),
      bottomSheet: isLastPage
          ? TextButton(
              onPressed: () {
                Get.to(const LoginScreen());
              },
              style: TextButton.styleFrom(
                backgroundColor: AppColor.lacemeColor,
                minimumSize: const Size.fromHeight(80),
              ),
              child: Text(
                'get_started'.tr,
                style: TextStyle(color: AppColor.whiteColor, fontSize: 23),
              ),
            )
          : Container(
              decoration: const BoxDecoration(),
              height: 150,
              width: double.infinity,
              child: Column(
                children: [
                  SmoothPageIndicator(
                      effect: const WormEffect(dotWidth: 30),
                      controller: pageController,
                      count: 2),
                  const SizedBox(
                    height: 10,
                  ),
                  RoundButton(
                      label: 'next'.tr,
                      buttonTextColor: AppColor.whiteColor,
                      onPress: () => pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn)),
                  const SizedBox(
                    height: 10,
                  ),
                  RoundButton(
                      buttonBackColor: AppColor.blueColor,
                      label: 'skip'.tr,
                      onPress: () => pageController.jumpToPage(1))
                ],
              ),
            ),
    );
  }
}
