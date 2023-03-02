import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lancemeup/resources/localization/languages.dart';
import 'package:lancemeup/resources/route/app_route.dart';
import 'package:lancemeup/view/home_screen/home_screen_pages/home_screen/home_screen.dart';
import 'package:lancemeup/view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LancemeUp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LancemeUp extends StatefulWidget {
  const LancemeUp({super.key});

  @override
  State<LancemeUp> createState() => _LancemeUpState();
}

class _LancemeUpState extends State<LancemeUp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      home: const SplashScreen(),
      getPages: AppRoute.appRoute(),
    );
  }
}
