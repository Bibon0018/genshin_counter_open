import 'package:get/get.dart';

import '../controllers/wish_list_page_controller.dart';

class WishListPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WishListPageController>(
      () => WishListPageController(),
    );
  }
}
