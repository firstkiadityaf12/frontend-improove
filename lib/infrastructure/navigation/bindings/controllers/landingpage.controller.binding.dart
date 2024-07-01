import 'package:get/get.dart';

import '../../../../presentation/landingpage/controllers/landingpage.controller.dart';

class LandingpageControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LandingpageController>(
      () => LandingpageController(),
    );
  }
}
