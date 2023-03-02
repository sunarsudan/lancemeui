import 'package:get/get.dart';

class SliderController extends GetxController {
  RxDouble sliderValue = 0.4.obs;
  sliderChange(double value) {
    sliderValue.value = value;
    print(sliderValue.value);
  }
}
