import 'package:get/get.dart';

import '../controllers/boss_material_page_controller.dart';

class BossMaterialPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BossMaterialPageController>(
      () => BossMaterialPageController(),
    );
  }
}
