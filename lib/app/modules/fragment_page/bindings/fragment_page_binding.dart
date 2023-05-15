import 'package:get/get.dart';

import '../controllers/fragment_page_controller.dart';

class FragmentPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FragmentPageController>(
      () => FragmentPageController(),
    );
  }
}
