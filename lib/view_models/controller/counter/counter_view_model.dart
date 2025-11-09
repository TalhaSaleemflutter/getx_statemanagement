import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;

  increamentCounter() {
    counter.value++;
  }


  RxDouble opacity = .4.obs;
  setOpacity(double value) {
    opacity.value = value;
  }
}
