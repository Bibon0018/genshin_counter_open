import 'package:collection/collection.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:genshin_counter/resourses/images/filters_image.dart';
import 'package:genshin_counter/resourses/images/hero_image.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/hero_settings_controller.dart';

class HeroSettingsView extends StatelessWidget {
  final HeroSettingsController controller;
  const HeroSettingsView({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(22.0))),
      backgroundColor: AppColors.backGroundColor,
      actions: [
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () async {
                  controller.isTalent.value = true;
                  await controller.pageController.animateToPage(2,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInCirc);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.darkBackGroundColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(12))),
                  alignment: Alignment.center,
                  child: Text("Таланты",
                          style: const TextStyle(color: Colors.white))
                      .paddingSymmetric(vertical: 8),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Obx(
              () => Expanded(
                child: InkWell(
                  onTap: () async {
                    if (controller.isHeroComplete.value) {
                      Get.back();
                    } else if (!controller.isHeroComplete.value &&
                        !controller.isTalent.value) {
                      if (!(controller.currentLevel.value >
                              controller.targetLevel.value ||
                          controller.currentLevel.value == 0)) {
                        print("object");
                        await controller.pageController.animateToPage(1,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInCirc);
                        controller.isHeroComplete.value = true;
                      }
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColors.darkBackGroundColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12))),
                    child: Text(
                      controller.isHeroComplete.value
                          ? "Сохранить"
                          : "Продолжить",
                      style: TextStyle(
                          color: controller.currentLevel.value >
                                  controller.targetLevel.value
                              ? Colors.red
                              : AppColors.activeColor),
                    ).paddingSymmetric(vertical: 8),
                  ),
                ),
              ),
            ),
          ],
        ).paddingOnly(bottom: 12, left: 6, right: 6)
      ],
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            InkWell(
                onTap: () => Get.back(),
                child: const Icon(
                  Iconsax.close_circle,
                  size: 30,
                  color: Colors.white,
                ))
          ]),
          Container(
            alignment: Alignment.center,
            height: 80,
            child: Image.asset(controller.hero.imagePath.heroImagePath()),
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            height: 240,
            width: 220,
            child: PageView(
              controller: controller.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Уровень героя",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    parameters(
                      context,
                      controller.currentLevelRight,
                      controller.currentLevelLeft,
                      controller.scrollControllerCurrentLevelLeft,
                      controller.scrollControllerCurrentLevelRight,
                      true,
                      false,
                    ),
                    Obx(() => Expanded(
                            child: Icon(
                          controller.currentLevel.value >
                                  controller.targetLevel.value
                              ? Iconsax.close_circle
                              : Iconsax.arrow_circle_down,
                          color: controller.currentLevel.value >
                                  controller.targetLevel.value
                              ? Colors.red
                              : Colors.white,
                        ))),
                    parameters(
                      context,
                      controller.targetRightLevel,
                      controller.targetLeftLevel,
                      controller.scrollControllerTargetLeftLevel,
                      controller.scrollControllerTargetRightLevel,
                      false,
                      false,
                    ),
                  ],
                ).paddingSymmetric(horizontal: 16),
                Obx(
                  () => Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Текущий уровень ${controller.currentLevel.value}",
                          style: const TextStyle(color: Colors.white),
                        ).paddingOnly(bottom: 12),
                        starsParameters(
                          controller.currentStars,
                          true,
                          activeStars: controller.activeCurrentStars.value,
                          changedStars: controller.changedCurrentStars.value,
                          unActiveStars: controller.unActiveCurrentStars.value,
                        ),
                        const Expanded(
                            child: Icon(
                          Iconsax.arrow_circle_down,
                          color: Colors.white,
                        )),
                        Text(
                          "Целевой уровень ${controller.targetLevel.value}",
                          style: const TextStyle(color: Colors.white),
                        ).paddingOnly(bottom: 12),
                        starsParameters(
                          controller.targetStars,
                          false,
                          activeStars: controller.activeTargetStars.value,
                          changedStars: controller.changedTargetStars.value,
                          unActiveStars: controller.unActiveTargetStars.value,
                        ),
                      ]).paddingSymmetric(horizontal: 16),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Обычная атака",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    parameters(
                      context,
                      controller.talent1RightLevel,
                      controller.talent1LeftLevel,
                      controller.scrollControllerTalent1LeftLevel,
                      controller.scrollControllerTalent1RightLevel,
                      true,
                      true,
                    ),
                    Obx(() => Expanded(
                            child: Icon(
                          controller.currentTalent1Level.value >
                                  controller.targetTalent1Level.value
                              ? Iconsax.close_circle
                              : Iconsax.arrow_circle_down,
                          color: controller.currentTalent1Level.value >
                                  controller.targetTalent1Level.value
                              ? Colors.red
                              : Colors.white,
                        ))),
                    parameters(
                      context,
                      controller.targetRightTalent1Level,
                      controller.targetLeftTalent1Level,
                      controller.scrollControllerTalent1LeftLevel,
                      controller.scrollControllerTalent1RightLevel,
                      false,
                      true,
                    ),
                  ],
                ).paddingSymmetric(horizontal: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Элементарный навык",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    parameters(
                      context,
                      controller.talent2RightLevel,
                      controller.talent2LeftLevel,
                      controller.scrollControllerTalent2LeftLevel,
                      controller.scrollControllerTalent2RightLevel,
                      true,
                      true,
                    ),
                    Obx(() => Expanded(
                            child: Icon(
                          controller.currentTalent2Level.value >
                                  controller.targetTalent2Level.value
                              ? Iconsax.close_circle
                              : Iconsax.arrow_circle_down,
                          color: controller.currentTalent2Level.value >
                                  controller.targetTalent2Level.value
                              ? Colors.red
                              : Colors.white,
                        ))),
                    parameters(
                      context,
                      controller.targetRightTalent2Level,
                      controller.targetLeftTalent2Level,
                      controller.scrollControllerTalent2LeftLevel,
                      controller.scrollControllerTalent2RightLevel,
                      false,
                      true,
                    ),
                  ],
                ).paddingSymmetric(horizontal: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Взрыв стихий",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    parameters(
                      context,
                      controller.talent3RightLevel,
                      controller.talent3LeftLevel,
                      controller.scrollControllerTalent3LeftLevel,
                      controller.scrollControllerTalent3RightLevel,
                      true,
                      true,
                    ),
                    Obx(() => Expanded(
                            child: Icon(
                          controller.currentTalent3Level.value >
                                  controller.targetTalent3Level.value
                              ? Iconsax.close_circle
                              : Iconsax.arrow_circle_down,
                          color: controller.currentTalent3Level.value >
                                  controller.targetTalent3Level.value
                              ? Colors.red
                              : Colors.white,
                        ))),
                    parameters(
                      context,
                      controller.targetRightTalent3Level,
                      controller.targetLeftTalent3Level,
                      controller.scrollControllerTalent3LeftLevel,
                      controller.scrollControllerTalent3RightLevel,
                      false,
                      true,
                    ),
                  ],
                ).paddingSymmetric(horizontal: 16)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget starsParameters(RxInt stars, bool isCurrentStars,
      {required int activeStars,
      required int changedStars,
      required int unActiveStars}) {
    return Container(
        decoration: BoxDecoration(
            color: AppColors.darkBackGroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ...List<int>.generate(activeStars, (i) => i + 1)
              .mapIndexed((i, e) => InkWell(
                    child: ImageIcon(
                      AssetImage(
                        FiltersImage.wish,
                      ),
                      color: Colors.white,
                    ),
                  )),
          ...List<int>.generate(changedStars, (i) => i + 1)
              .mapIndexed((i, e) => InkWell(
                    onTap: () async => await controller.starChange(
                        stars, i + 1, isCurrentStars),
                    child: ImageIcon(
                      AssetImage(
                        FiltersImage.wish,
                      ),
                      color: ((i + 1) <= stars.value)
                          ? Colors.white
                          : AppColors.deActiveColor,
                    ),
                  )),
          ...List<int>.generate(unActiveStars, (i) => i + 1)
              .mapIndexed((i, e) => InkWell(
                    child: ImageIcon(
                      AssetImage(
                        FiltersImage.wish,
                      ),
                      color: AppColors.deActiveColor,
                    ),
                  )),
        ]).paddingAll(6));
  }

  Widget parameters(
    BuildContext context,
    RxInt rightCount,
    RxInt leftCount,
    FixedExtentScrollController leftScrollController,
    FixedExtentScrollController rightScrollController,
    bool isCurrent,
    bool isTalent,
  ) {
    return Obx(
      () => Container(
        // width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: AppColors.darkBackGroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${leftCount.value}${rightCount.value}".toInt().toString(),
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.6)),
            ).paddingOnly(left: 16, top: 16, bottom: 16),
            Row(children: [
              Container(
                alignment: Alignment.center,
                width: 40,
                height: 60,
                child: CupertinoPicker(
                    itemExtent: 24,
                    scrollController: leftScrollController,
                    onSelectedItemChanged: (i) async =>
                        await controller.levelChange(
                          leftCount,
                          rightCount,
                          leftScrollController,
                          rightScrollController,
                          true,
                          i,
                          isCurrent,
                          isTalent,
                        ),
                    children: [
                      ...List<int>.generate(isTalent ? 2 : 10, (index) => index)
                          .map(
                        (e) => Text(
                          "$e",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      )
                    ]),
              ),
              Container(
                alignment: Alignment.center,
                width: 40,
                height: 60,
                child: CupertinoPicker(
                    itemExtent: 24,
                    scrollController: rightScrollController,
                    onSelectedItemChanged: (i) async =>
                        await controller.levelChange(
                            rightCount,
                            leftCount,
                            rightScrollController,
                            leftScrollController,
                            false,
                            i,
                            isCurrent,
                            isTalent),
                    children: [
                      ...List<int>.generate(
                          !isTalent && leftCount.value == 9 ||
                                  isTalent && leftCount.value == 1
                              ? 1
                              : 10,
                          (index) => index).map(
                        (e) => Text(
                          "$e",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      )
                    ]),
              )
            ]).paddingSymmetric(horizontal: 8),
          ],
        ),
      ),
    );
  }
}
