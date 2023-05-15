import 'dart:developer';

import 'package:dartx/dartx.dart';
import 'package:genshin_counter/data/all_elementaryFragments.dart';
import 'package:genshin_counter/data/all_mob_fragments.dart';
import 'package:genshin_counter/data/user_data.dart';
import 'package:genshin_counter/models/currency_fragment.dart';
import 'package:genshin_counter/models/fragment_counter.dart';
import 'package:genshin_counter/models/fragments.dart';
import 'package:genshin_counter/models/hero.dart';
import 'package:genshin_counter/models/talant_fragments.dart';
import 'package:get/get.dart';

part 'generate_lists.dart';

class WishListPageController extends GetxController {
  final RxDouble expTurns = 0.0.obs;
  final RxDouble bossMaterialTurns = 0.0.obs;
  final RxDouble mobFragentTurns = 0.0.obs;
  final RxDouble elevationMateriaTurns = 0.0.obs;
  final RxDouble curiositiesMaterialTurns = 0.0.obs;
  final RxDouble elementaryMaterialTurns = 0.0.obs;

  final RxBool expCollapse = true.obs;
  final RxBool bossMaterialCollapse = true.obs;
  final RxBool mobFragmentCollapse = true.obs;
  final RxBool elevationMateriaCollapse = true.obs;
  final RxBool curiositiesMaterialCollapse = true.obs;
  final RxBool elementaryMaterialCollapse = true.obs;
  final RxnBool showNeeded = RxnBool();

  final RxList<Fragments> specialtiesList = RxList<Fragments>();
  final RxList<MobFragments> mobFragmentsList = RxList<MobFragments>();
  final RxList<Fragments> bossMaterialList = RxList<Fragments>();
  final RxList<TalentsFragments> talentFragmentList =
      RxList<TalentsFragments>();
  final RxList<ElementaryFragment> elementaryFragmentList =
      RxList<ElementaryFragment>();

  @override
  void onInit() {
    specialtiesList.value =
        generateSpecialties(specialties(), showNeeded.value);
    mobFragmentsList.value =
        generateMobFragment(mobFragment(), showNeeded.value);

    bossMaterialList.value =
        generateBossMaterial(bossMaterial(), showNeeded.value);

    talentFragmentList.value =
        generateTalentFragment(talentFragment(), showNeeded.value);

    elementaryFragmentList.value =
        generateElementaryFragment(elementaryFragment(), showNeeded.value);
    super.onInit();
  }

  // generateTalentFragments() {
  //   for (Fragments item
  //       in specialties().map((e) => FragmentCounter.specialties(e)).toList()) {
  //     if (item.count != 0) {
  //       if (isCompleteFragment(
  //           item,
  //           userData.value.specialties
  //               .allSpecialties()
  //               .where((element) => element.name == item.name)
  //               .first)) {
  //         specialtiesList.add(item);
  //       }
  //       ;
  //     }
  //   }
  // }

  // generateBossFragments() {
  //   for (Fragments item
  //       in specialties().map((e) => FragmentCounter.specialties(e)).toList()) {
  //     if (item.count != 0) {
  //       if (isCompleteFragment(
  //           item,
  //           userData.value.specialties
  //               .allSpecialties()
  //               .where((element) => element.name == item.name)
  //               .first)) {
  //         specialtiesList.add(item);
  //       }
  //       ;
  //     }
  //   }
  // }

  // int getNeedTime() {
  //   int have = 0;

  //   final neded = FragmentCounter.bossMaterial(
  //           userData.value.heroes.allHero().where((p0) => p0.isHave).toList())
  //       .count;

  //   for (var item in bossMaterial()) {
  //     have += userData.value.bossMaterial
  //         .allBossMaterials()
  //         .where((element) => element.name == item.first.bossMaterial.name)
  //         .first
  //         .count;
  //   }

  //   return ((neded - have) / 2.25).ceil();
  // }

  bool isCompleteTalent(TalentsFragments item) {
    return item.isCompleted(showNeeded.value);
  }

  bool isCompleteCurrency(Fragments item) {
    bool isCompleteCurrency = userData.value.currencyFragment
            .allCurrencyFragment()
            .where((element) => item.name == element.name)
            .first
            .count >=
        item.count;

    bool isExp = CurrencyFragment.isExp(item.name);

    bool expVerify = userData.value.currencyFragment.isCompleted(
        FragmentCounter.expFragment(userData.value.heroes
                .allHero()
                .where((p0) => p0.isHave)
                .toList())
            .allExp,
        showNeeded.value);

    bool anyVerify = showNeeded.value == null ||
        (showNeeded.value! && !isCompleteCurrency) ||
        (!showNeeded.value! && isCompleteCurrency);

    return (((!isExp) && anyVerify) && item.count > 0 ||
        ((isExp) && expVerify));
  }

  bool isCompleteMobFragments(MobFragments item) {
    return item.isCompleted(showNeeded.value);
  }

  bool isCompleteElementary(ElementaryFragment item) {
    return item.isCompleted(showNeeded.value);
  }

  bool isCompleteFragment(Fragments fragment, List<Fragments> haveFragments) {
    return fragment.isCompleted(showNeeded.value, haveFragments);
  }

  List<List<Hero>> elementaryFragment() {
    final result = userData.value.heroes
        .copyWith()
        .allHero()
        .where((e) => e.isHave)
        .toList();

    result.sort((a, b) {
      return a.elementary.name
          .toLowerCase()
          .compareTo(b.elementary.name.toLowerCase());
    });

    return result
        .chunkWhile((a, b) => a.elementary.name == b.elementary.name)
        .toList();
  }

  List<List<Hero>> bossMaterial() {
    final result = userData.value.heroes
        .copyWith()
        .allHero()
        .where((e) => e.isHave)
        .toList();

    result.sort((a, b) {
      return a.bossMaterial.name
          .toLowerCase()
          .compareTo(b.bossMaterial.name.toLowerCase());
    });

    return result
        .chunkWhile((a, b) => a.bossMaterial.name == b.bossMaterial.name)
        .toList();
  }

  List<List<Hero>> specialties() {
    final result = userData.value.heroes
        .copyWith()
        .allHero()
        .where((e) => e.isHave)
        .toList();

    result.sort((a, b) {
      return a.specialties.name
          .toLowerCase()
          .compareTo(b.specialties.name.toLowerCase());
    });

    return result
        .chunkWhile((a, b) => a.specialties.name == b.specialties.name)
        .toList();
  }

  List<List<Hero>> mobFragment() {
    final result = userData.value.heroes
        .copyWith()
        .allHero()
        .where((e) => e.isHave)
        .toList();

    result.sort((a, b) {
      return a.mobFragments.name
          .toLowerCase()
          .compareTo(b.mobFragments.name.toLowerCase());
    });

    return result
        .chunkWhile((a, b) => a.mobFragments.name == b.mobFragments.name)
        .toList();
  }

  List<List<Hero>> talentFragment() {
    final result = userData.value.heroes
        .copyWith()
        .allHero()
        .where((e) => e.isHave)
        .toList();

    result.sort((a, b) {
      return a.talentsFragments.name
          .toLowerCase()
          .compareTo(b.talentsFragments.name.toLowerCase());
    });

    return result
        .chunkWhile(
            (a, b) => a.talentsFragments.name == b.talentsFragments.name)
        .toList();
  }

  bool get specialtiesVerify => specialtiesList
      .where((item) =>
          (item.count != 0) &&
          (isCompleteFragment(
              item, userData.value.specialties.allSpecialties())))
      .isNotEmpty;

  bool get talentVerify => talentFragmentList()
      .where((item) =>
          (item.lvl1.count != 0 ||
              item.lvl2.count != 0 ||
              item.lvl3.count != 0) &&
          (isCompleteTalent(item)))
      .isNotEmpty;

  bool get mobFragmentVerify => mobFragmentsList()
      .where((item) =>
          (item.lvl1.count != 0 ||
              item.lvl2.count != 0 ||
              item.lvl3.count != 0) &&
          (isCompleteMobFragments(item)))
      .isNotEmpty;

  bool get bossMaterialVerify => bossMaterial()
      .where((item) =>
          FragmentCounter.bossMaterial(item).count != 0 &&
          isCompleteFragment(
            FragmentCounter.bossMaterial(item),
            userData.value.bossMaterial.allBossMaterials(),
          ))
      .isNotEmpty;

  bool get expFragmentVerify => FragmentCounter.expFragment(
          userData.value.heroes.allHero().where((p0) => p0.isHave).toList())
      .allCurrencyFragment()
      .where((item) => isCompleteCurrency(item))
      .isNotEmpty;

  bool get elementaryFragmentVerify => elementaryFragmentList
      .where((item) =>
          (item.lvl1.count != 0 ||
              item.lvl2.count != 0 ||
              item.lvl3.count != 0) ||
          item.lvl4.count != 0 && (isCompleteElementary(item)))
      .isNotEmpty;
}
