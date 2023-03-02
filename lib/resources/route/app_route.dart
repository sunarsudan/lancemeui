import 'package:get/get.dart';
import 'package:lancemeup/resources/route/route_name.dart';
import 'package:lancemeup/view/splash_screen/splash_screen.dart';

class AppRoute {
  static appRoute() {
    GetPage(name: RouteName.splashScreen, page: () => const SplashScreen());
  }
}
