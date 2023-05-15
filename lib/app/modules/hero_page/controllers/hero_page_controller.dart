import 'package:flutter/material.dart';
import 'package:genshin_counter/data/filters.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:genshin_counter/resourses/images/filters_image.dart';
import 'package:genshin_counter/models/hero.dart' as HM;
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CustomFilter {
  String name;
  bool value;
  Widget icon;
  Widget activeIcon;
  CustomFilter(this.name, this.value, this.icon, this.activeIcon);
}

List<CustomFilter> customFilters = [
  CustomFilter(
    "isLegendary",
    true,
    ImageIcon(
      AssetImage(FiltersImage.wish),
      color: AppColors.legendaryColor,
    ),
    ImageIcon(
      AssetImage(FiltersImage.wish),
      color: AppColors.legendaryActiveColor,
    ),
  ),
  CustomFilter(
    "isLegendary",
    false,
    ImageIcon(
      AssetImage(FiltersImage.wish),
      color: AppColors.unLegendaryColor,
    ),
    ImageIcon(
      AssetImage(FiltersImage.wish),
      color: AppColors.unLegendaryActiveColor,
    ),
  ),
  CustomFilter(
    "isHave",
    true,
    Icon(Iconsax.like, color: AppColors.activeColor),
    const Icon(Iconsax.like, color: Colors.white),
  ),
  CustomFilter(
    "isHave",
    false,
    Icon(
      Iconsax.like,
      color: AppColors.deActiveColor,
    ),
    Icon(
      Iconsax.like,
      color: Colors.black,
    ),
  ),
];

class HeroPageController extends GetxController {
  RxList<FilterModel> filters = RxList<FilterModel>();
  RxList<CustomFilter> customFilters = RxList<CustomFilter>();
  final ScrollController scrollController = ScrollController();
  RxDouble offset = 0.0.obs;
  // RxBool get isShowFloatingActionButton =>
  //     (scrollController. )
  //         .obs;
  RxBool isHideHero(HM.Hero item) => (((filters
                      .where((a) => a.isElement == true)
                      .isEmpty ||
                  filters
                      .where((a) => item.elementary.name == a.name)
                      .isNotEmpty) &&
              (filters.where((a) => a.isElement == false).isEmpty ||
                  filters
                      .where((a) => item.weapon.name == a.name)
                      .isNotEmpty)) &&
          (customFilters.where((e) => e.name == "isLegendary").isEmpty ||
              (customFilters
                      .where((e) => e.name == "isLegendary" && e.value == false)
                      .isNotEmpty &&
                  item.isLegend == false) ||
              (customFilters
                      .where((e) => e.name == "isLegendary" && e.value == true)
                      .isNotEmpty &&
                  item.isLegend == true)) &&
          (customFilters.where((e) => e.name == "isHave").isEmpty ||
              (customFilters
                      .where((e) => e.name == "isHave" && e.value == false)
                      .isNotEmpty &&
                  item.isHave == false) ||
              (customFilters
                      .where((e) => e.name == "isHave" && e.value == true)
                      .isNotEmpty &&
                  item.isHave == true)))
      .obs;

  bool isDuplicate(FilterModel filter) =>
      filters.where((e) => e.name == filter.name).isNotEmpty;

  deleteFilter(FilterModel filter) =>
      filters.removeWhere((e) => e.name == filter.name);

  addFilter(FilterModel filter) => filters.add(filter);

  bool isDuplicateCustom(CustomFilter filter) => customFilters
      .where((e) => e.name == filter.name && filter.value == e.value)
      .isNotEmpty;

  deleteFilterCustom(CustomFilter filter) => customFilters
      .removeWhere((e) => e.name == filter.name && filter.value == e.value);

  addFilterCustom(CustomFilter filter) {
    customFilters.add(filter);
  }

  @override
  void onInit() {
    scrollController.addListener(listener);
    super.onInit();
  }

  void listener() {

    offset.value = scrollController.offset;
  }
}
