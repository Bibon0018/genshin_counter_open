import 'package:get/get.dart';

import '../controllers/elementary_page_controller.dart';

class ElementaryPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ElementaryPageController>(
      () => ElementaryPageController(),
    );
  }
}
