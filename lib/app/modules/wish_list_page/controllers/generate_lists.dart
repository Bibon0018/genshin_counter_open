part of "wish_list_page_controller.dart";

List<Fragments> generateSpecialties(
    List<List<Hero>> specialties, bool? showNeeded) {
  List<Fragments> result = [];
  for (Fragments item
      in specialties.map((e) => FragmentCounter.specialties(e)).toList()) {
    if (item.count != 0) {
      if (item.isCompleted(
          showNeeded, userData.value.specialties.allSpecialties())) {
        result.add(item);
      }
    }
  }
  return result;
}

List<MobFragments> generateMobFragment(
    List<List<Hero>> mobFragment, bool? showNeeded) {
  List<MobFragments> result = [];
  for (MobFragments item
      in mobFragment.map((e) => FragmentCounter.mobFragment(e)).toList()) {
    if (item.lvl1.count != 0 || item.lvl2.count != 0 || item.lvl3.count != 0) {
      if (item.isCompleted(showNeeded)) {
        result.add(item);
      }
    }
  }
  return result;
}

List<Fragments> generateBossMaterial(
    List<List<Hero>> bossMaterial, bool? showNeeded) {
  List<Fragments> result = [];
  for (Fragments item
      in bossMaterial.map((e) => FragmentCounter.bossMaterial(e)).toList()) {
    if (item.count != 0) {
      if (item.isCompleted(
          showNeeded, userData.value.bossMaterial.allBossMaterials())) {
        result.add(item);
      }
    }
  }

  return result;
}

List<TalentsFragments> generateTalentFragment(
    List<List<Hero>> talentFragment, bool? showNeeded) {
  List<TalentsFragments> result = [];
  for (TalentsFragments item in talentFragment
      .map((e) => FragmentCounter.talentFragment(e))
      .toList()) {
    if (item.lvl1.count != 0 || item.lvl2.count != 0 || item.lvl3.count != 0) {
      if (item.isCompleted(showNeeded)) {
        result.add(item);
      }
    }
  }

  return result;
}

List<ElementaryFragment> generateElementaryFragment(
    List<List<Hero>> elementaryFragments, bool? showNeeded) {
  List<ElementaryFragment> result = [];
  for (ElementaryFragment item in elementaryFragments
      .map((e) => FragmentCounter.elementaryFragment(e))
      .toList()) {
    if (item.lvl1.count != 0 ||
        item.lvl2.count != 0 ||
        item.lvl3.count != 0 ||
        item.lvl4.count != 0) {
      if (item.isCompleted(showNeeded)) {
        result.add(item);
      }
    }
  }

  return result;
}
