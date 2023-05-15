import 'package:flutter/material.dart';
import 'package:genshin_counter/app/modules/fragment_page/controllers/fragment_page_controller.dart';
import 'package:genshin_counter/app/modules/fragment_page/views/fragment_page_view.dart';
import 'package:genshin_counter/app/modules/hero_page/controllers/hero_page_controller.dart';
import 'package:genshin_counter/app/modules/hero_page/views/hero_page_view.dart';
import 'package:genshin_counter/app/modules/home_page/controllers/home_page_controller.dart';
import 'package:genshin_counter/app/modules/settings/controllers/settings_controller.dart';
import 'package:genshin_counter/app/modules/settings/views/settings_view.dart';
import 'package:genshin_counter/app/modules/wish_list_page/controllers/wish_list_page_controller.dart';
import 'package:genshin_counter/app/modules/wish_list_page/views/wish_list_page_view.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:genshin_counter/resourses/images/filters_image.dart';
import 'package:genshin_counter/resourses/images/hero_image.dart';
import 'package:genshin_counter/resourses/images/mob_fragments_image.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomePageView extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: controller.onWillPop,
      child: Obx(
        () => Scaffold(
          extendBody: true,
          body: body(),
          bottomNavigationBar: BottomNavigationBar(
            onTap: controller.onTap,
            currentIndex: controller.currentIndex.value,
            backgroundColor: AppColors.darkBackGroundColor,
            selectedItemColor: AppColors.activeColor,
            unselectedItemColor: AppColors.deActiveColor,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 8,
            unselectedFontSize: 8,
            iconSize: 26,
            items: [
              BottomNavigationBarItem(
                activeIcon: ImageIcon(
                  AssetImage(
                    HeroImage
                        .allHeroImage[controller.flexImageActiveCount.value]
                        .heroImagePath(),
                  ),
                ),
                icon: ImageIcon(
                  AssetImage(
                    HeroImage.allHeroImage[controller.flexImageCount.value]
                        .heroImagePath(),
                  ),
                ),
                label: 'Герои',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    MobFragmentsImage.spectralNucleus.mobFragmentsImagePath(),
                  ),
                ),
                label: 'Материалы',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    FiltersImage.redactor,
                  ),
                ),
                label: 'Цели',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Iconsax.setting_2,
                ),
                label: 'Настройки',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget body() {
    return Obx(
      () => AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: controller.currentIndex.value == 0
              ? GetBuilder(
                  builder: (_) => HeroPageView(),
                  init: HeroPageController(),
                )
              : controller.currentIndex.value == 1
                  ? controller.fragmentsArguments.value.isEmpty
                      ? GetBuilder(
                          builder: (_) => FragmentPageView(),
                          init: FragmentPageController())
                      : controller.fragmentsArguments.last
                  : controller.currentIndex.value == 2
                      ? GetBuilder(
                          builder: (_) => WishListPageView(),
                          init: WishListPageController())
                      : GetBuilder(
                          builder: (_) => SettingsView(),
                          init: SettingsController())),
    );
  }
}
