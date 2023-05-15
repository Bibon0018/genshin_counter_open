import 'package:get/get.dart';

import '../controllers/talent_fragments_page_controller.dart';

class TalentFragmentsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TalentFragmentsPageController>(
      () => TalentFragmentsPageController(),
    );
  }
}
