import 'package:flutter/material.dart';
import 'package:genshin_counter/app/controllers/storage.dart';
import 'package:genshin_counter/app/modules/test_hero_settings/controllers/test_hero_settings_controller.dart';
import 'package:genshin_counter/app/modules/test_hero_settings/views/test_hero_settings_view.dart';
import 'package:genshin_counter/data/filters.dart';
import 'package:genshin_counter/data/user_data.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:genshin_counter/resourses/images/hero_image.dart';
import 'package:genshin_counter/resourses/images/rarity_image.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../models/hero.dart' as HM;

class HeroWidget extends StatelessWidget {
  final HM.Hero hero;

  const HeroWidget({Key? key, required this.hero}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.deActiveColor,
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              hero.name,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.6)),
            ),
            Row(
              children: [
                Image.asset(
                  allFilters
                      .where((element) => element.name == hero.elementary.name)
                      .toList()
                      .first
                      .imagePath,
                  width: 24,
                ),
                const SizedBox(
                  width: 6,
                ),
                Image.asset(
                  allFilters
                      .where((element) => element.name == hero.weapon.name)
                      .toList()
                      .first
                      .imagePath,
                  width: 24,
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Expanded(
              child: Opacity(
            opacity: hero.isHave ? 1 : 0.5,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(
                      image: AssetImage(hero.isLegend
                          ? RarityImage.orange.rarityImagePath()
                          : RarityImage.purple.rarityImagePath()))),
              child: Image.asset(
                hero.imagePath.heroImagePath(),
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
              ),
            ),
          )),
          const SizedBox(
            width: 16,
          ),
          Expanded(
              child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (hero.targetLevel > 1 && hero.isHave)
                      tab("Lvl", hero.currentLevel, hero.targetLevel),
                    if (hero.targetLevel > 1 && hero.isHave)
                      tab("Star", hero.currentStars, hero.targetStars),
                    if (hero.targetTalent1Level > 1 && hero.isHave)
                      tab("ОА", hero.talent1Level, hero.targetTalent1Level),
                    if (hero.targetTalent2Level > 1 && hero.isHave)
                      tab("ЭН", hero.talent2Level, hero.targetTalent2Level),
                    if (hero.targetTalent3Level > 1 && hero.isHave)
                      tab("ВС", hero.talent3Level, hero.targetTalent3Level),
                  ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                InkWell(
                    onTap: () async {
                      final controller = TestHeroSettingsController(hero);

                      final result = await showDialog<HM.Hero>(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) => Builder(
                                builder: (_) => TestHeroSettingsView(
                                    controller: controller),
                              ));
                      if (result != null) {
                        saveHero(
                          result,
                        );
                      }
                    },
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          color: AppColors.darkBackGroundColor),
                      child: Text(
                        hero.isHave ? "Изменить" : "Активировать",
                        style: TextStyle(color: AppColors.activeColor),
                      ).paddingAll(8),
                    )),
                if (hero.isHave)
                  InkWell(
                      onTap: () async {
                        deactiveHero();
                      },
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            color: AppColors.darkBackGroundColor),
                        child: Icon(
                          Iconsax.close_circle,
                          color: Colors.white,
                        ).paddingAll(4),
                      ))
              ]),
            ],
          ))
        ])
      ]).paddingOnly(bottom: 16, left: 16, right: 16),
    );
  }

  saveHero(
    HM.Hero _hero,
  ) {
    final data = userData.value.toMap();
    final keys = data['heroes'].keys.toList();
    for (var key in keys) {
      if (data['heroes'][key]['name'] == hero.name) {
        print(data['heroes'][key]);
        data['heroes'][key] = _hero.toMap();

        userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
        storageUserData.setUserData();
      }
    }
  }

  deactiveHero() {
    final data = userData.value.toMap();
    final keys = data['heroes'].keys.toList();
    for (var key in keys) {
      if (data['heroes'][key]['name'] == hero.name) {
        data['heroes'][key]['isHave'] = false;

        userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
        storageUserData.setUserData();
      }
    }
  }

  Widget tab(String title, int current, int target) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.darkBackGroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white),
            maxLines: 2,
          ),
          Text(
            current == target ? "" : "$current",
            style: const TextStyle(color: Colors.white),
          ),
          Icon(
            current == target
                ? Icons.check_rounded
                : Iconsax.arrow_circle_right,
            color: current == target ? AppColors.activeColor : Colors.white,
            size: 20,
          ),
          Text(
            "$target",
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    ).paddingOnly(bottom: 12);
  }
}
