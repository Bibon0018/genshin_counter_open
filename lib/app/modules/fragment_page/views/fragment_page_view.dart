import 'package:flutter/material.dart';
import 'package:genshin_counter/app/modules/boss_fragment_page/controllers/boss_fragment_page_controller.dart';
import 'package:genshin_counter/app/modules/boss_fragment_page/views/boss_fragment_page_view.dart';
import 'package:genshin_counter/app/modules/boss_material_page/controllers/boss_material_page_controller.dart';
import 'package:genshin_counter/app/modules/boss_material_page/views/boss_material_page_view.dart';
import 'package:genshin_counter/app/modules/currency_fragment/controllers/currency_fragment_controller.dart';
import 'package:genshin_counter/app/modules/currency_fragment/views/currency_fragment_view.dart';
import 'package:genshin_counter/app/modules/elementary_page/controllers/elementary_page_controller.dart';
import 'package:genshin_counter/app/modules/elementary_page/views/elementary_page_view.dart';
import 'package:genshin_counter/app/modules/home_page/controllers/home_page_controller.dart';
import 'package:genshin_counter/app/modules/mob_fragments_page/controllers/mob_fragments_page_controller.dart';
import 'package:genshin_counter/app/modules/mob_fragments_page/views/mob_fragments_page_view.dart';
import 'package:genshin_counter/app/modules/specialties_page/controllers/specialties_page_controller.dart';
import 'package:genshin_counter/app/modules/specialties_page/views/specialties_page_view.dart';
import 'package:genshin_counter/app/modules/talent_fragments_page/controllers/talent_fragments_page_controller.dart';
import 'package:genshin_counter/app/modules/talent_fragments_page/views/talent_fragments_page_view.dart';
import 'package:genshin_counter/app/widgets/fragment_cards.dart';
import 'package:genshin_counter/data/all_BossMaterial.dart';
import 'package:genshin_counter/data/all_bossFragments.dart';
import 'package:genshin_counter/data/all_elementaryFragments.dart';
import 'package:genshin_counter/data/all_talentFragments.dart';
import 'package:genshin_counter/data/user_data.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:genshin_counter/resourses/images/boss_fragment_image.dart';
import 'package:genshin_counter/resourses/images/boss_material_image.dart';
import 'package:genshin_counter/resourses/images/currency.dart';
import 'package:genshin_counter/resourses/images/elementary_fragments_image.dart';
import 'package:genshin_counter/resourses/images/mob_fragments_image.dart';
import 'package:genshin_counter/resourses/images/rarity_image.dart';
import 'package:genshin_counter/resourses/images/specialties_image.dart';
import 'package:genshin_counter/resourses/images/talent_images.dart';

import 'package:get/get.dart';

import '../controllers/fragment_page_controller.dart';

class FragmentPageView extends GetView<FragmentPageController> {
  const FragmentPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backGroundColor,
        appBar: AppBar(
          title: const Text('Материалы'),
          centerTitle: true,
          backgroundColor: AppColors.darkBackGroundColor,
        ),
        body: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1,
          children: [
            FragmentCard(
              backgroundImage: RarityImage.orange.rarityImagePath(),
              title: "Босс Фрагменты",
              imagePath:
                  BossFragmentImage.mirrorOfMushin.bossFragmentImagePath(),
              onTap: () {
                HomePageController.to.currentPage.add(GetBuilder(
                    builder: (_) => BossFragmentPageView(),
                    init: BossFragmentPageController()));
              },
            ),
            FragmentCard(
              backgroundImage: RarityImage.purple.rarityImagePath(),
              title: "Материалы босса",
              imagePath:
                  BossMaterialImage.pseudoStamens.bossMaterialImagePath(),
              onTap: () {
                HomePageController.to.currentPage.add(GetBuilder(
                    builder: (_) => BossMaterialPageView(),
                    init: BossMaterialPageController()));
              },
            ),
            FragmentCard(
              backgroundImage: RarityImage.purple.rarityImagePath(),
              title: "Повышение талантов",
              imagePath: TalentFragmentImage.philosophiesOfFreedom
                  .talentFragmentImagePath(),
              onTap: () {
                HomePageController.to.currentPage.add(GetBuilder(
                    builder: (_) => TalentFragmentsPageView(),
                    init: TalentFragmentsPageController()));
              },
            ),
            FragmentCard(
              backgroundImage: RarityImage.grey.rarityImagePath(),
              title: "Диковинки",
              imagePath: SpecialtiesImage.sandGreasePupa.specialtiesImagePath(),
              onTap: () {
                HomePageController.to.currentPage.add(GetBuilder(
                    builder: (_) => SpecialtiesPageView(),
                    init: SpecialtiesPageController()));
              },
            ),
            FragmentCard(
              backgroundImage: RarityImage.orange.rarityImagePath(),
              title: "Материалы возвышения",
              imagePath: ElementaryFragmentsImage.nagadusEmeraldGemstone
                  .elementaryFragmentsImagePath(),
              onTap: () {
                HomePageController.to.currentPage.add(GetBuilder(
                    builder: (_) => ElementaryPageView(),
                    init: ElementaryPageController()));
              },
            ),
            FragmentCard(
              backgroundImage: RarityImage.blue.rarityImagePath(),
              title: "Обычные материалы возвышения",
              imagePath:
                  MobFragmentsImage.richRedBrocade.mobFragmentsImagePath(),
              onTap: () {
                HomePageController.to.currentPage.add(GetBuilder(
                    builder: (_) => MobFragmentsPageView(),
                    init: MobFragmentsPageController()));
              },
            ),
            FragmentCard(
              backgroundImage: RarityImage.orange.rarityImagePath(),
              title: "Универсальные материалы",
              imagePath: CurrencyImage.crown.currencyImagePath(),
              onTap: () {
                HomePageController.to.currentPage.add(GetBuilder(
                    builder: (_) => CurrencyFragmentView(),
                    init: CurrencyFragmentController()));
              },
            ),
          ],
        ).paddingAll(16));
  }
}
