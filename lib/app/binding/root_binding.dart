import 'package:appshop/app/controller/home_controller.dart';
import 'package:get/get.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
