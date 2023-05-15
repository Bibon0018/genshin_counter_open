import 'package:flutter/material.dart';
import 'package:genshin_counter/app/widgets/hero_cards.dart';
import 'package:genshin_counter/data/filters.dart';
import 'package:genshin_counter/data/user_data.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/hero_page_controller.dart';

class HeroPageView extends GetView<HeroPageController> {
  const HeroPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => SafeArea(
          bottom: true,
          child: Scaffold(
            backgroundColor: AppColors.backGroundColor,
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            floatingActionButton: controller.offset > 600
                ? FloatingActionButton(
                    backgroundColor: AppColors.darkBackGroundColor,
                    onPressed: () {
                      controller.scrollController.animateTo(0,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.bounceIn);
                    },
                    child: Icon(
                      Iconsax.arrow_up_1,
                      size: 36,
                      color: AppColors.activeColor,
                    ),
                  )
                : null,
            appBar: AppBar(
              title: const Text('Герои'),
              centerTitle: true,
              backgroundColor: AppColors.darkBackGroundColor,
              bottom: PreferredSize(
                preferredSize: Size(
                  Get.width,
                  40,
                ),
                child: Expanded(
                  child: Obx(
                    () => ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...customFilters.map((e) => InkWell(
                            splashColor: const Color(0x00000000),
                            onTap: () => controller.isDuplicateCustom(e)
                                ? controller.deleteFilterCustom(e)
                                : controller.addFilterCustom(e),
                            child: AspectRatio(
                              aspectRatio: 1.3,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: controller.isDuplicateCustom(e)
                                        ? AppColors.activeColor
                                        : AppColors.backGroundColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12))),
                                child: controller.isDuplicateCustom(e)
                                    ? e.activeIcon
                                    : e.icon,
                              ).paddingOnly(left: 16),
                            ))),
                        ...allFilters.map(
                          (e) => InkWell(
                              splashColor: const Color(0x00000000),
                              onTap: () => controller.isDuplicate(e)
                                  ? controller.deleteFilter(e)
                                  : controller.addFilter(e),
                              child: AspectRatio(
                                aspectRatio: 1.3,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: controller.isDuplicate(e)
                                          ? AppColors.activeColor
                                          : AppColors.backGroundColor,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(12))),
                                  child: Image.asset(
                                    e.imagePath,
                                  ),
                                ).paddingOnly(left: 16),
                              )),
                        ),
                        const SizedBox(
                          width: 16,
                        )
                      ],
                    ),
                  ).paddingSymmetric(vertical: 4),
                ),
              ),
            ),
            body: Obx(() => SafeArea(
                    child: ListView(
                        controller: controller.scrollController,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: [
                      SizedBox(
                        height: 16,
                      ),
                      ...userData.value.heroes.allHero().map((e) {
                        return AnimatedSize(
                          duration: const Duration(milliseconds: 300),
                          child: controller.isHideHero(e).value
                              ? HeroWidget(hero: e).paddingOnly(
                                  bottom: 16,
                                )
                              : const SizedBox(),
                        );
                      })
                    ])).paddingOnly(left: 16, right: 16)),
          ),
        ));
  }
}
