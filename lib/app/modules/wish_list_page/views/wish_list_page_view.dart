import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:genshin_counter/app/widgets/count_widgets/elementary_count_widget.dart';
import 'package:genshin_counter/app/widgets/count_widgets/fragment_count_widget.dart';
import 'package:genshin_counter/app/widgets/count_widgets/mob_count_widget.dart';
import 'package:genshin_counter/app/widgets/count_widgets/talent_count_widget.dart';
import 'package:genshin_counter/app/widgets/hero_count.dart';
import 'package:genshin_counter/app/widgets/tooltip.dart';

import 'package:genshin_counter/data/user_data.dart';
import 'package:genshin_counter/models/currency_fragment.dart';
import 'package:genshin_counter/models/fragment_counter.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:genshin_counter/resourses/images/boss_material_image.dart';
import 'package:genshin_counter/resourses/images/currency.dart';
import 'package:genshin_counter/resourses/images/hero_image.dart';
import 'package:genshin_counter/resourses/images/rarity_image.dart';
import 'package:genshin_counter/resourses/images/specialties_image.dart';
import 'package:genshin_counter/models/hero.dart' as h;
import 'package:get/get.dart';

import '../controllers/wish_list_page_controller.dart';

class WishListPageView extends GetView<WishListPageController> {
  const WishListPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backGroundColor,
        appBar: AppBar(
          title: const Text('Ваши цели'),
          centerTitle: true,
          backgroundColor: AppColors.darkBackGroundColor,
          actions: [
            Obx(
              () => IconButton(
                splashRadius: 12,
                color: controller.showNeeded.value == null ||
                        controller.showNeeded.value!
                    ? AppColors.deActiveColor
                    : AppColors.activeColor,
                onPressed: () => controller.showNeeded.value == null
                    ? controller.showNeeded.value = false
                    : controller.showNeeded.value = null,
                icon: const Icon(
                  Icons.check_rounded,
                ),
              ),
            ),
            Obx(
              () => IconButton(
                splashRadius: 12,
                color: controller.showNeeded.value == null ||
                        !controller.showNeeded.value!
                    ? AppColors.deActiveColor
                    : AppColors.activeColor,
                onPressed: () => controller.showNeeded.value == null
                    ? controller.showNeeded.value = true
                    : controller.showNeeded.value = null,
                icon: const Icon(
                  Icons.close_rounded,
                ),
              ),
            ),
          ],
        ),
        body: Obx(() => userData.value.heroes
                .allHero()
                .where((e) => e.isHave)
                .isEmpty
            ? Container(
                alignment: Alignment.topCenter,
                child: Text(
                  "У вас нет цели",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.activeColor,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                )).paddingOnly(top: 100)
            : SingleChildScrollView(
                child: StaggeredGrid.count(
                crossAxisCount: 3,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: [
                  if (controller.expFragmentVerify)
                    _buildSeparator(
                      title: "Универсальные материалы",
                      materialCollapse: controller.expCollapse,
                      turns: controller.expTurns,
                    ),
                  ..._buildExpFragment(controller.expCollapse, context),
                  if (controller.bossMaterialVerify)
                    _buildSeparator(
                      title: "Материалы босса",
                      materialCollapse: controller.bossMaterialCollapse,
                      turns: controller.bossMaterialTurns,
                    ),
                  ..._buildBossMaterial(controller.bossMaterial(),
                      controller.bossMaterialCollapse),
                  if (controller.mobFragmentVerify)
                    _buildSeparator(
                      title: "Обычные материалы возвышения ",
                      materialCollapse: controller.mobFragmentCollapse,
                      turns: controller.mobFragentTurns,
                    ),
                  ..._buildMobFragments(
                      controller.mobFragment(), controller.mobFragmentCollapse),
                  if (controller.talentVerify)
                    _buildSeparator(
                      title: "Материалы возвышения талантов",
                      materialCollapse: controller.elevationMateriaCollapse,
                      turns: controller.elevationMateriaTurns,
                    ),
                  ..._buildTalentFragments(controller.talentFragment(),
                      controller.elevationMateriaCollapse),
                  if (controller.specialtiesVerify)
                    _buildSeparator(
                      title: "Диковинки",
                      materialCollapse: controller.curiositiesMaterialCollapse,
                      turns: controller.curiositiesMaterialTurns,
                    ),
                  ..._buildSpecialties(controller.specialties(),
                      controller.curiositiesMaterialCollapse, context),
                  if (controller.elementaryFragmentVerify)
                    _buildSeparator(
                      title: "Материалы возвышения ",
                      materialCollapse: controller.elementaryMaterialCollapse,
                      turns: controller.elementaryMaterialTurns,
                    ),
                  ..._buildElementaryFragment(controller.elementaryFragment(),
                      controller.elementaryMaterialCollapse)
                ],
              )
                    .paddingSymmetric(horizontal: 16, vertical: 16)
                    .paddingOnly(bottom: 80))));
  }

  _buildSeparator(
      {required String title,
      required RxDouble turns,
      required RxBool materialCollapse}) {
    return StaggeredGridTile.count(
      crossAxisCellCount: 3,
      mainAxisCellCount: 0.4,
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.deActiveColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AutoSizeText(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17.5,
                  fontWeight: FontWeight.bold),
            ).paddingAll(5),
            InkWell(
              onTap: (() =>
                  turns.value == 0.0 ? turns.value = 0.5 : turns.value = 0.0),
              child: AnimatedRotation(
                onEnd: () => materialCollapse.value = !materialCollapse.value,
                turns: turns.value,
                duration: const Duration(milliseconds: 200),
                child: const Icon(
                  Icons.arrow_circle_down,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: 12),
      ),
    );
  }

  List<Widget> _buildExpFragment(RxBool collapse, BuildContext context) {
    return [
      for (var item in FragmentCounter.expFragment(
              userData.value.heroes.allHero().where((p0) => p0.isHave).toList())
          .allCurrencyFragment())
        if (controller.isCompleteCurrency(item))
          if (collapse.value)
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: Get.width * 0.0044,
              child: FragmentCountWidget(
                image: item.imagePath.currencyImagePath(),
                data: item,
                have: userData.value.currencyFragment
                    .allCurrencyFragment()
                    .where((element) => item.name == element.name)
                    .first
                    .count,
                backgroundImage: CurrencyFragment.getBackground(item.name),
                onTap: () {
                  final tooltip = customTooltip(
                    [
                      ...userData.value.heroes
                          .allHero()
                          .where((e) =>
                              e.isHave &&
                              FragmentCounter.expFragment([e])
                                      .allCurrencyFragment()
                                      .where((element) =>
                                          item.name == element.name)
                                      .first
                                      .count >
                                  0)
                          .toList()
                          .map((e) => HeroCount(
                              imagePath: e.imagePath.heroImagePath(),
                              count: FragmentCounter.expFragment([e])
                                  .allCurrencyFragment()
                                  .where((element) => item.name == element.name)
                                  .first
                                  .count))
                    ],
                  );
                  tooltip.show(context);
                },
              ),
            ),
    ];
  }

  List<Widget> _buildBossMaterial(
      List<List<h.Hero>> bossMaterial, RxBool collapse) {
    return [
      for (var item in controller.bossMaterialList)
        if (item.count != 0)
          if (controller.isCompleteFragment(
            item,
            userData.value.bossMaterial.allBossMaterials(),
          ))
            if (collapse.value)
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: Get.width * 0.0044,
                child: FragmentCountWidget(
                  data: item,
                  image: item.imagePath.bossMaterialImagePath(),
                  have: userData.value.bossMaterial
                      .allBossMaterials()
                      .where((element) => element.name == item.name)
                      .first
                      .count,
                  backgroundImage: RarityImage.purple.rarityImagePath(),
                  onTap: () {
                    // final tooltip = customTooltip(
                    //   [
                    //     // ...item
                    //     //     .where((e) =>
                    //     //         FragmentCounter.bossMaterial([e]).count > 0)
                    //     //     .map((e) =>
                    //     //         FragmentCounter.bossMaterial([e]).count == 0
                    //     //             ? const SizedBox()
                    //     //             : HeroCount(
                    //     //                 imagePath: e.imagePath.heroImagePath(),
                    //     //                 count: FragmentCounter.bossMaterial([e])
                    //     //                     .count))
                    //   ],
                    // );
                    // tooltip.show(context);
                  },
                ),
              ),
    ];
  }

  List<Widget> _buildMobFragments(
      List<List<h.Hero>> mobFragment, RxBool collapse) {
    return [
      for (var item in controller.mobFragmentsList)
        if (item.lvl1.count != 0 ||
            item.lvl2.count != 0 ||
            item.lvl3.count != 0)
          if (controller.isCompleteMobFragments(item))
            if (collapse.value)
              StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: Get.width * 0.0052,
                child: MobCountWidget(
                  data: item,
                  have: userData.value.mobFragments
                      .allMobFragments()
                      .where((element) => element.name == item.name)
                      .first,
                  heroes: [],
                ),
              ),
    ];
  }

  List<Widget> _buildTalentFragments(
      List<List<h.Hero>> talentFragment, RxBool collapse) {
    return [
      for (var item in controller.talentFragmentList)
        if (item.lvl1.count != 0 ||
            item.lvl2.count != 0 ||
            item.lvl3.count != 0)
          if (controller.isCompleteTalent(item))
            if (collapse.value)
              StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: Get.width * 0.0052,
                child: TalentCountWidget(
                  item,
                  have: userData.value.talentsFragments
                      .allTalentsFragments()
                      .where((element) => element.name == item.name)
                      .first,
                  heroes: [],
                ),
              ),
    ];
  }

  List<Widget> _buildSpecialties(
      List<List<h.Hero>> specialties, RxBool collapse, BuildContext context) {
    return [
      for (var item in controller.specialtiesList)
        if (item.count != 0)
          if (controller.isCompleteFragment(
              item, userData.value.specialties.allSpecialties()))
            if (collapse.value)
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: Get.width * 0.0044,
                child: FragmentCountWidget(
                  data: item,
                  image: item.imagePath.specialtiesImagePath(),
                  have: userData.value.specialties
                      .allSpecialties()
                      .where((element) => element.name == item.name)
                      .first
                      .count,
                  backgroundImage: RarityImage.grey.rarityImagePath(),
                  onTap: () {
                    final tooltip = customTooltip(
                      [
                        // ...item
                        //     .where((e) =>
                        //        e.count > 0)
                        //     .map((e) => HeroCount(
                        //         imagePath: e.imagePath.heroImagePath(),
                        //         count: FragmentCounter.specialties([e]).count))
                      ],
                    );
                    tooltip.show(context);
                  },
                ),
              ),
    ];
  }

  List<Widget> _buildElementaryFragment(
      List<List<h.Hero>> elementaryFragment, RxBool collapse) {
    return [
      for (var item in controller.elementaryFragmentList)
        if (controller.isCompleteElementary(item))
          if (collapse.value)
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: Get.width * 0.0046,
              child: ElementaryCountWidget(
                data: item,
                have: userData.value.elementaryFragment
                    .allElementaryFragments()
                    .where((element) => element.name == item.name)
                    .first,
                heroes: [],
              ),
            ),
    ];
  }
}
