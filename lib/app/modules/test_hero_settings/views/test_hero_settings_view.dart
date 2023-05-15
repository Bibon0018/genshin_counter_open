import 'package:flutter/material.dart';
import 'package:genshin_counter/models/hero_settings.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:genshin_counter/resourses/images/filters_image.dart';
import 'package:genshin_counter/models/hero.dart' as HM;
import 'package:genshin_counter/resourses/images/hero_image.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/test_hero_settings_controller.dart';

class TestHeroSettingsView extends GetView<TestHeroSettingsController> {
  final TestHeroSettingsController controller;
  const TestHeroSettingsView({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.start();
    return AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(22.0))),
        backgroundColor: AppColors.backGroundColor,
        actions: [
          Row(
            children: [
              Obx(
                () => Expanded(
                  child: InkWell(
                    onTap: () async {
                      controller.isTalent.value = !controller.isTalent.value;
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.darkBackGroundColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12))),
                      alignment: Alignment.center,
                      child: Text(
                              controller.isTalent.value ? "Уровень" : "Таланты",
                              style: const TextStyle(color: Colors.white))
                          .paddingSymmetric(vertical: 8),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: InkWell(
                  onTap: () async {
                    Get.back(
                        result: controller.hero.copyWith(
                      isHave: true,
                      currentStars:
                          controller.heroSettings.value.currentStars.value,
                      targetStars:
                          controller.heroSettings.value.targetStars.value,
                      currentLevel:
                          controller.heroSettings.value.currentLevel.value,
                      targetLevel:
                          controller.heroSettings.value.targetLevel.value,
                      talent1Level:
                          controller.heroSettings.value.talent1Level.value,
                      targetTalent1Level: controller
                          .heroSettings.value.targetTalent1Level.value,
                      talent2Level:
                          controller.heroSettings.value.talent2Level.value,
                      targetTalent2Level: controller
                          .heroSettings.value.targetTalent2Level.value,
                      talent3Level:
                          controller.heroSettings.value.talent3Level.value,
                      targetTalent3Level: controller
                          .heroSettings.value.targetTalent3Level.value,
                    ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColors.darkBackGroundColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12))),
                    child: Text(
                      "Продолжить",
                      style: TextStyle(color: AppColors.activeColor),
                    ).paddingSymmetric(vertical: 8),
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
              height: 280,
              width: 220,
              child: Obx(
                () => PageView(
                  controller: controller.pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    !controller.isTalent.value
                        ? ListView(
                            children: [
                              parameters(
                                context,
                                controller.heroSettings.value.currentLevel,
                                controller.heroSettings.value.targetLevel,
                                "Уровень героя",
                                (i) => controller.levelChanged(
                                  controller.heroSettings.value.currentLevel,
                                  controller.heroSettings.value.targetLevel,
                                  i,
                                  false,
                                  true,
                                ),
                                (i) => controller.levelChanged(
                                  controller.heroSettings.value.targetLevel,
                                  controller.heroSettings.value.currentLevel,
                                  i,
                                  false,
                                  false,
                                ),
                              ),
                              buildStars(
                                  controller.heroSettings.value.currentStars,
                                  controller.heroSettings.value.currentLevel),
                              Icon(
                                Iconsax.arrow_circle_down,
                                color: Colors.white,
                              ),
                              buildStars(
                                  controller.heroSettings.value.targetStars,
                                  controller.heroSettings.value.targetLevel)
                            ],
                          )
                        : ListView(
                            children: [
                              parameters(
                                context,
                                controller.heroSettings.value.talent1Level,
                                controller
                                    .heroSettings.value.targetTalent1Level,
                                "Обычная атака",
                                (i) => controller.levelChanged(
                                  controller.heroSettings.value.talent1Level,
                                  controller
                                      .heroSettings.value.targetTalent1Level,
                                  i,
                                  true,
                                  true,
                                ),
                                (i) => controller.levelChanged(
                                  controller
                                      .heroSettings.value.targetTalent1Level,
                                  controller.heroSettings.value.talent1Level,
                                  i,
                                  true,
                                  false,
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              parameters(
                                context,
                                controller.heroSettings.value.talent2Level,
                                controller
                                    .heroSettings.value.targetTalent2Level,
                                "Элементарный навык",
                                (i) => controller.levelChanged(
                                  controller.heroSettings.value.talent2Level,
                                  controller
                                      .heroSettings.value.targetTalent2Level,
                                  i,
                                  true,
                                  true,
                                ),
                                (i) => controller.levelChanged(
                                  controller
                                      .heroSettings.value.targetTalent2Level,
                                  controller.heroSettings.value.talent2Level,
                                  i,
                                  true,
                                  false,
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              parameters(
                                context,
                                controller.heroSettings.value.talent3Level,
                                controller
                                    .heroSettings.value.targetTalent3Level,
                                "Взрыв стихий",
                                (i) => controller.levelChanged(
                                  controller.heroSettings.value.talent3Level,
                                  controller
                                      .heroSettings.value.targetTalent3Level,
                                  i,
                                  true,
                                  true,
                                ),
                                (i) => controller.levelChanged(
                                  controller
                                      .heroSettings.value.targetTalent3Level,
                                  controller.heroSettings.value.talent3Level,
                                  i,
                                  true,
                                  false,
                                ),
                              ),
                            ],
                          )
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Widget buildStars(
    RxInt count,
    RxInt level,
  ) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AppColors.darkBackGroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        ...List.generate(6, (index) => index + 1).map((e) => InkWell(
            onTap: () {
              if ((e == 1 && level.value == 20) ||
                  (e == 2 && level.value == 40) ||
                  (e == 3 && level.value == 50) ||
                  (e == 4 && level.value == 60) ||
                  (e == 5 && level.value == 70) ||
                  (e == 6 && level.value == 80)) {
                if (e > count.value) {
                  count.value++;
                } else {
                  count.value--;
                }
              }
            },
            child: ImageIcon(AssetImage(FiltersImage.wish),
                color:
                    e <= count.value ? Colors.white : AppColors.deActiveColor)))
      ]).paddingSymmetric(horizontal: 16, vertical: 6),
    ).paddingSymmetric(vertical: 12);
  }

  Widget parameters(BuildContext context, RxInt current, RxInt target,
      String title, Function(int) currentTap, Function(int) targetTap) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            oneParameter(current.value, (i) => currentTap(i)),
            InkWell(
              onTap: () => print(
                  "${controller.heroSettings} ${controller.heroSettings}"),
              child: Icon(
                Iconsax.arrow_circle_right,
                color: Colors.white,
              ),
            ),
            oneParameter(target.value, (i) => targetTap(i)),
          ],
        ),
      ],
    );
  }

  Widget oneParameter(int parameter, Function(int) onTap) {
    return Column(
      children: [
        Row(
          children: [
            buildButton(true, () => onTap(10)),
            SizedBox(
              width: 12,
            ),
            buildButton(true, () => onTap(1)),
          ],
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: AppColors.darkBackGroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(16))),
          child: Text(
            (parameter < 10 ? "0" : "") + parameter.toString(),
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.6),
                letterSpacing: 12),
          ).paddingAll(12),
        ).paddingSymmetric(vertical: 12),
        Row(
          children: [
            buildButton(false, () => onTap(-10)),
            SizedBox(
              width: 12,
            ),
            buildButton(false, () => onTap(-1)),
          ],
        ),
      ],
    );
  }

  Widget buildButton(bool isAdd, Function onTap) {
    return InkWell(
        onTap: () => onTap(),
        child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: AppColors.darkBackGroundColor,
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Icon(
              isAdd ? Iconsax.add_circle : Iconsax.minus_cirlce,
              color: Colors.white,
            ).paddingAll(4)));
  }
}
