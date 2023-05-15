import 'package:get/get.dart';

import '../controllers/currency_fragment_controller.dart';

class CurrencyFragmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CurrencyFragmentController>(
      () => CurrencyFragmentController(),
    );
  }
}
