import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lancemeup/resources/colors/app_colors/app_colors.dart';
import 'package:lancemeup/view_model/splash_services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    splashServices.isLogin(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lacemeColor,
      body: SafeArea(
          child: Container(
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                    'splash_screen'.tr,
                    style: const TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: AppColor.whiteColor),
                  )),
                ],
              ))),
      bottomSheet: Container(
        color: AppColor.lacemeColor,
        height: 40,
        child: Center(
          child: Text('version'.tr),
        ),
      ),
    );
  }
}
