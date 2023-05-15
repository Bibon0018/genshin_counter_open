import 'package:genshin_counter/app/modules/boss_material_page/controllers/boss_material_page_controller.dart';
import 'package:genshin_counter/app/modules/boss_material_page/views/boss_material_page_view.dart';
import 'package:genshin_counter/app/modules/home_page/controllers/home_page_controller.dart';
import 'package:get/get.dart';

class FragmentPageController extends GetxController {
  //TODO: Implement FragmentPageController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  void goGo() {
    print(1423412412);
    HomePageController.to.currentPage.add(GetBuilder(
        builder: (_) => BossMaterialPageView(),
        init: BossMaterialPageController()));
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
