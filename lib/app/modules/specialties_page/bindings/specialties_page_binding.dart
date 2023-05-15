import 'package:get/get.dart';

import '../controllers/specialties_page_controller.dart';

class SpecialtiesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpecialtiesPageController>(
      () => SpecialtiesPageController(),
    );
  }
}
