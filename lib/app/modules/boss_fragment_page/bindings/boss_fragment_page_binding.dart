import 'package:get/get.dart';

import '../controllers/boss_fragment_page_controller.dart';

class BossFragmentPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BossFragmentPageController>(
      () => BossFragmentPageController(),
    );
  }
}
