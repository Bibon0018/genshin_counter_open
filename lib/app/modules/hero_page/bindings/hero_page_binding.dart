import 'package:get/get.dart';

import '../controllers/hero_page_controller.dart';

class HeroPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HeroPageController>(
      () => HeroPageController(),
    );
  }
}
