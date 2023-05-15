import 'package:get/get.dart';

import '../controllers/mob_fragments_page_controller.dart';

class MobFragmentsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MobFragmentsPageController>(
      () => MobFragmentsPageController(),
    );
  }
}
