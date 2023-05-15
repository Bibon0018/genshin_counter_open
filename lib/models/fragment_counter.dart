import 'package:genshin_counter/data/all_elementaryFragments.dart';
import 'package:genshin_counter/data/all_mob_fragments.dart';
import 'package:genshin_counter/models/all_exp.dart';
import 'package:genshin_counter/models/currency_fragment.dart';
import 'package:genshin_counter/models/fragments.dart';
import 'package:genshin_counter/models/hero.dart';
import 'package:genshin_counter/models/talant_fragments.dart';
import 'package:genshin_counter/resourses/images/currency.dart';

class FragmentCounter {
  static ElementaryFragment elementaryFragment(List<Hero> heroes) {
    ElementaryFragment result = heroes.first.elementary.copyWith(
      lvl1: heroes.first.elementary.lvl1.copyWith(count: 0),
      lvl2: heroes.first.elementary.lvl2.copyWith(count: 0),
      lvl3: heroes.first.elementary.lvl3.copyWith(count: 0),
      lvl4: heroes.first.elementary.lvl4.copyWith(count: 0),
    );
    for (var item in heroes) {
      if (item.currentStars < 1 && item.targetStars >= 1) {
        result.lvl1.count += 1;
      }
      if (item.currentStars <= 1 && item.targetStars >= 2) {
        result.lvl2.count += 3;
      }
      if (item.currentStars <= 2 && item.targetStars >= 3) {
        result.lvl2.count += 6;
      }
      if (item.currentStars <= 3 && item.targetStars >= 4) {
        result.lvl3.count += 3;
      }
      if (item.currentStars <= 4 && item.targetStars >= 5) {
        result.lvl3.count += 6;
      }
      if (item.currentStars <= 5 && item.targetStars >= 6) {
        result.lvl4.count += 6;
      }
    }
    return result;
  }

  static Fragments bossMaterial(List<Hero> heroes) {
    Fragments result = heroes.first.bossMaterial.copyWith();
    for (var item in heroes) {
      if (item.currentStars <= 1 && item.targetStars >= 2) {
        result.count += 2;
      }
      if (item.currentStars <= 2 && item.targetStars >= 3) {
        result.count += 4;
      }
      if (item.currentStars <= 3 && item.targetStars >= 4) {
        result.count += 8;
      }
      if (item.currentStars <= 4 && item.targetStars >= 5) {
        result.count += 12;
      }
      if (item.currentStars <= 5 && item.targetStars >= 6) {
        result.count += 20;
      }
    }

    return result;
  }

  // static Fragments bossFragment(
  //     Fragments fragment, int currentTalentLevel, int targetTalentLevel) {
  //   Fragments result = fragment.copyWith();
  //   if (currentTalentLevel < 0 && targetTalentLevel >= 1) {
  //     result.count += 1;
  //   }
  //   if (currentTalentLevel <= 1 && targetTalentLevel >= 2) {
  //     result.count += 3;
  //   }
  //   if (currentTalentLevel <= 2 && targetTalentLevel >= 3) {
  //     result.count += 6;
  //   }
  //   if (currentTalentLevel <= 3 && targetTalentLevel >= 4) {
  //     result.count += 3;
  //   }
  //   if (currentTalentLevel <= 4 && targetTalentLevel >= 5) {
  //     result.count += 6;
  //   }
  //   if (currentTalentLevel <= 5 && targetTalentLevel >= 6) {
  //     result.count += 6;
  //   }
  //   return result;
  // }
  static Fragments specialties(List<Hero> heroes) {
    Fragments result = heroes.first.specialties.copyWith();
    for (var item in heroes) {
      if (item.currentStars < 1 && item.targetStars >= 1) {
        result.count += 3;
      }
      if (item.currentStars <= 1 && item.targetStars >= 2) {
        result.count += 10;
      }
      if (item.currentStars <= 2 && item.targetStars >= 3) {
        result.count += 20;
      }
      if (item.currentStars <= 3 && item.targetStars >= 4) {
        result.count += 30;
      }
      if (item.currentStars <= 4 && item.targetStars >= 5) {
        result.count += 45;
      }
      if (item.currentStars <= 5 && item.targetStars >= 6) {
        result.count += 60;
      }
    }

    return result;
  }

  static MobFragments mobFragment(List<Hero> heroes) {
    MobFragments result = heroes.first.mobFragments.copyWith(
        lvl1: heroes.first.mobFragments.lvl1.copyWith(count: 0),
        lvl2: heroes.first.mobFragments.lvl2.copyWith(count: 0),
        lvl3: heroes.first.mobFragments.lvl3.copyWith(count: 0));
    for (var item in heroes) {
      if (item.currentStars < 1 && item.targetStars >= 1) {
        result.lvl1.count += 3;
      }
      if (item.currentStars <= 1 && item.targetStars >= 2) {
        result.lvl1.count += 15;
      }
      if (item.currentStars <= 2 && item.targetStars >= 3) {
        result.lvl2.count += 12;
      }
      if (item.currentStars <= 3 && item.targetStars >= 4) {
        result.lvl2.count += 18;
      }
      if (item.currentStars <= 4 && item.targetStars >= 5) {
        result.lvl3.count += 12;
      }
      if (item.currentStars <= 5 && item.targetStars >= 6) {
        result.lvl3.count += 24;
      }
      for (var talent in item.talentLevels()) {
        if (talent.current < 2 && talent.target >= 2) {
          result.lvl1.count += 6;
        }
        if (talent.current <= 2 && talent.target >= 3) {
          result.lvl2.count += 3;
        }
        if (talent.current <= 3 && talent.target >= 4) {
          result.lvl2.count += 4;
        }
        if (talent.current <= 4 && talent.target >= 5) {
          result.lvl2.count += 6;
        }
        if (talent.current <= 5 && talent.target >= 6) {
          result.lvl2.count += 9;
        }
        if (talent.current <= 6 && talent.target >= 7) {
          result.lvl3.count += 4;
        }
        if (talent.current <= 7 && talent.target >= 8) {
          result.lvl3.count += 6;
        }
        if (talent.current <= 8 && talent.target >= 9) {
          result.lvl3.count += 9;
        }
        if (talent.current <= 9 && talent.target >= 10) {
          result.lvl3.count += 12;
        }
      }
    }
    return result;
  }

  static TalentsFragments talentFragment(List<Hero> heroes) {
    TalentsFragments result = heroes.first.talentsFragments.copyWith(
        lvl1: heroes.first.talentsFragments.lvl1.copyWith(count: 0),
        lvl2: heroes.first.talentsFragments.lvl2.copyWith(count: 0),
        lvl3: heroes.first.talentsFragments.lvl3.copyWith(count: 0));
    for (var item in heroes) {
      for (var talent in item.talentLevels()) {
        if (talent.current < 2 && talent.target >= 2) {
          result.lvl1.count += 3;
        }
        if (talent.current <= 2 && talent.target >= 3) {
          result.lvl2.count += 2;
        }
        if (talent.current <= 3 && talent.target >= 4) {
          result.lvl2.count += 4;
        }
        if (talent.current <= 4 && talent.target >= 5) {
          result.lvl2.count += 6;
        }
        if (talent.current <= 5 && talent.target >= 6) {
          result.lvl2.count += 9;
        }
        if (talent.current <= 6 && talent.target >= 7) {
          result.lvl3.count += 4;
        }
        if (talent.current <= 7 && talent.target >= 8) {
          result.lvl3.count += 6;
        }
        if (talent.current <= 8 && talent.target >= 9) {
          result.lvl3.count += 12;
        }
        if (talent.current <= 9 && talent.target >= 10) {
          result.lvl3.count += 16;
        }
      }
    }
    return result;
  }

  static CurrencyFragment expFragment(List<Hero> heroes) {
    int exp = 0;
    int crown = 0;
    int mora = 0;
    for (var item in heroes) {
      if (item.currentLevel <= 1 && item.targetLevel >= 2) {
        exp += 1000;
      }
      if (item.currentLevel <= 2 && item.targetLevel >= 3) {
        exp += 1325;
      }
      if (item.currentLevel <= 3 && item.targetLevel >= 4) {
        exp += 1700;
      }
      if (item.currentLevel <= 4 && item.targetLevel >= 5) {
        exp += 2150;
      }
      if (item.currentLevel <= 5 && item.targetLevel >= 6) {
        exp += 2625;
      }
      if (item.currentLevel <= 6 && item.targetLevel >= 7) {
        exp += 3150;
      }
      if (item.currentLevel <= 7 && item.targetLevel >= 8) {
        exp += 3725;
      }
      if (item.currentLevel <= 8 && item.targetLevel >= 9) {
        exp += 4350;
      }
      if (item.currentLevel <= 9 && item.targetLevel >= 10) {
        exp += 5000;
      }
      if (item.currentLevel <= 10 && item.targetLevel >= 11) {
        exp += 5700;
      }
      if (item.currentLevel <= 11 && item.targetLevel >= 12) {
        exp += 6450;
      }
      if (item.currentLevel <= 12 && item.targetLevel >= 13) {
        exp += 7225;
      }
      if (item.currentLevel <= 13 && item.targetLevel >= 14) {
        exp += 8050;
      }
      if (item.currentLevel <= 14 && item.targetLevel >= 15) {
        exp += 8925;
      }
      if (item.currentLevel <= 15 && item.targetLevel >= 16) {
        exp += 9825;
      }
      if (item.currentLevel <= 16 && item.targetLevel >= 17) {
        exp += 10750;
      }
      if (item.currentLevel <= 17 && item.targetLevel >= 18) {
        exp += 11725;
      }
      if (item.currentLevel <= 18 && item.targetLevel >= 19) {
        exp += 12725;
      }
      if (item.currentLevel <= 19 && item.targetLevel >= 20) {
        exp += 13775;
      }
      if (item.currentLevel <= 20 && item.targetLevel >= 21) {
        exp += 14875;
      }
      if (item.currentLevel <= 21 && item.targetLevel >= 22) {
        exp += 16800;
      }
      if (item.currentLevel <= 22 && item.targetLevel >= 23) {
        exp += 18000;
      }
      if (item.currentLevel <= 23 && item.targetLevel >= 24) {
        exp += 19250;
      }
      if (item.currentLevel <= 24 && item.targetLevel >= 25) {
        exp += 20550;
      }
      if (item.currentLevel <= 25 && item.targetLevel >= 26) {
        exp += 21875;
      }
      if (item.currentLevel <= 26 && item.targetLevel >= 27) {
        exp += 23250;
      }
      if (item.currentLevel <= 27 && item.targetLevel >= 28) {
        exp += 24650;
      }
      if (item.currentLevel <= 28 && item.targetLevel >= 29) {
        exp += 26100;
      }
      if (item.currentLevel <= 29 && item.targetLevel >= 30) {
        exp += 27575;
      }
      if (item.currentLevel <= 30 && item.targetLevel >= 31) {
        exp += 29100;
      }
      if (item.currentLevel <= 31 && item.targetLevel >= 32) {
        exp += 30650;
      }
      if (item.currentLevel <= 32 && item.targetLevel >= 33) {
        exp += 32250;
      }
      if (item.currentLevel <= 33 && item.targetLevel >= 34) {
        exp += 33875;
      }
      if (item.currentLevel <= 34 && item.targetLevel >= 35) {
        exp += 35550;
      }
      if (item.currentLevel <= 35 && item.targetLevel >= 36) {
        exp += 37250;
      }
      if (item.currentLevel <= 36 && item.targetLevel >= 37) {
        exp += 38975;
      }
      if (item.currentLevel <= 37 && item.targetLevel >= 38) {
        exp += 40750;
      }
      if (item.currentLevel <= 38 && item.targetLevel >= 39) {
        exp += 42575;
      }
      if (item.currentLevel <= 39 && item.targetLevel >= 40) {
        exp += 44425;
      }
      if (item.currentLevel <= 40 && item.targetLevel >= 41) {
        exp += 46300;
      }
      if (item.currentLevel <= 41 && item.targetLevel >= 42) {
        exp += 50625;
      }
      if (item.currentLevel <= 42 && item.targetLevel >= 43) {
        exp += 52700;
      }
      if (item.currentLevel <= 43 && item.targetLevel >= 44) {
        exp += 54775;
      }
      if (item.currentLevel <= 44 && item.targetLevel >= 45) {
        exp += 56900;
      }
      if (item.currentLevel <= 45 && item.targetLevel >= 46) {
        exp += 59075;
      }
      if (item.currentLevel <= 46 && item.targetLevel >= 47) {
        exp += 61275;
      }
      if (item.currentLevel <= 47 && item.targetLevel >= 48) {
        exp += 63525;
      }
      if (item.currentLevel <= 48 && item.targetLevel >= 49) {
        exp += 65800;
      }
      if (item.currentLevel <= 49 && item.targetLevel >= 50) {
        exp += 68125;
      }
      if (item.currentLevel <= 50 && item.targetLevel >= 51) {
        exp += 70475;
      }
      if (item.currentLevel <= 51 && item.targetLevel >= 52) {
        exp += 76500;
      }
      if (item.currentLevel <= 52 && item.targetLevel >= 53) {
        exp += 79050;
      }
      if (item.currentLevel <= 53 && item.targetLevel >= 54) {
        exp += 81650;
      }
      if (item.currentLevel <= 54 && item.targetLevel >= 55) {
        exp += 84275;
      }
      if (item.currentLevel <= 55 && item.targetLevel >= 56) {
        exp += 86950;
      }
      if (item.currentLevel <= 56 && item.targetLevel >= 57) {
        exp += 89650;
      }
      if (item.currentLevel <= 57 && item.targetLevel >= 58) {
        exp += 92400;
      }
      if (item.currentLevel <= 58 && item.targetLevel >= 59) {
        exp += 95175;
      }
      if (item.currentLevel <= 59 && item.targetLevel >= 60) {
        exp += 98000;
      }
      if (item.currentLevel <= 60 && item.targetLevel >= 61) {
        exp += 100875;
      }
      if (item.currentLevel <= 61 && item.targetLevel >= 62) {
        exp += 108950;
      }
      if (item.currentLevel <= 62 && item.targetLevel >= 63) {
        exp += 112050;
      }
      if (item.currentLevel <= 63 && item.targetLevel >= 64) {
        exp += 115175;
      }
      if (item.currentLevel <= 64 && item.targetLevel >= 65) {
        exp += 118325;
      }
      if (item.currentLevel <= 65 && item.targetLevel >= 66) {
        exp += 121525;
      }
      if (item.currentLevel <= 66 && item.targetLevel >= 67) {
        exp += 124775;
      }
      if (item.currentLevel <= 67 && item.targetLevel >= 68) {
        exp += 128075;
      }
      if (item.currentLevel <= 68 && item.targetLevel >= 69) {
        exp += 131400;
      }
      if (item.currentLevel <= 69 && item.targetLevel >= 70) {
        exp += 134775;
      }
      if (item.currentLevel <= 70 && item.targetLevel >= 71) {
        exp += 138175;
      }
      if (item.currentLevel <= 71 && item.targetLevel >= 72) {
        exp += 148700;
      }
      if (item.currentLevel <= 72 && item.targetLevel >= 73) {
        exp += 152375;
      }
      if (item.currentLevel <= 73 && item.targetLevel >= 74) {
        exp += 156075;
      }
      if (item.currentLevel <= 74 && item.targetLevel >= 75) {
        exp += 159825;
      }
      if (item.currentLevel <= 75 && item.targetLevel >= 76) {
        exp += 163600;
      }
      if (item.currentLevel <= 76 && item.targetLevel >= 77) {
        exp += 167425;
      }
      if (item.currentLevel <= 77 && item.targetLevel >= 78) {
        exp += 171300;
      }
      if (item.currentLevel <= 78 && item.targetLevel >= 79) {
        exp += 175225;
      }
      if (item.currentLevel <= 79 && item.targetLevel >= 80) {
        exp += 179175;
      }
      if (item.currentLevel <= 80 && item.targetLevel >= 81) {
        exp += 183175;
      }
      if (item.currentLevel <= 81 && item.targetLevel >= 82) {
        exp += 216225;
      }
      if (item.currentLevel <= 82 && item.targetLevel >= 83) {
        exp += 243025;
      }
      if (item.currentLevel <= 83 && item.targetLevel >= 84) {
        exp += 273100;
      }
      if (item.currentLevel <= 84 && item.targetLevel >= 85) {
        exp += 306800;
      }
      if (item.currentLevel <= 85 && item.targetLevel >= 86) {
        exp += 344600;
      }
      if (item.currentLevel <= 86 && item.targetLevel >= 87) {
        exp += 386950;
      }
      if (item.currentLevel <= 87 && item.targetLevel >= 88) {
        exp += 434425;
      }
      if (item.currentLevel <= 88 && item.targetLevel >= 89) {
        exp += 487625;
      }
      if (item.currentLevel <= 89 && item.targetLevel >= 90) {
        exp += 547200;
      }
      for (var talent in item.talentLevels()) {
        if (talent.current < 2 && talent.target >= 2) {
          mora += 12500;
        }
        if (talent.current <= 2 && talent.target >= 3) {
          mora += 17500;
        }
        if (talent.current <= 3 && talent.target >= 4) {
          mora += 25000;
        }
        if (talent.current <= 4 && talent.target >= 5) {
          mora += 30000;
        }
        if (talent.current <= 5 && talent.target >= 6) {
          mora += 375000;
        }
        if (talent.current <= 6 && talent.target >= 7) {
          mora += 120000;
        }
        if (talent.current <= 7 && talent.target >= 8) {
          mora += 260000;
        }
        if (talent.current <= 8 && talent.target >= 9) {
          mora += 450000;
        }
        if (talent.current <= 9 && talent.target >= 10) {
          mora += 700000;
        }
        if (talent.current < 10 && talent.target == 10) {
          crown += 1;
        }
      }
    }

    int expLvl3 = exp ~/ 20000;
    int expLvl2 = (exp - (expLvl3 * 20000)) ~/ 5000;
    int expLvl1 = ((exp - (expLvl2 * 5000) - (expLvl3 * 20000)) / 1000).ceil();
    return CurrencyFragment(
        name: "Универсальные материалы",
        allExp: AllExp(
          name: "Свитки опыта",
          lvl1: Fragments(
            name: "Опыт странника",
            imagePath: CurrencyImage.expLvl1,
            count: expLvl1,
          ),
          lvl2: Fragments(
            name: "Опыт искателя приключений",
            imagePath: CurrencyImage.expLvl2,
            count: expLvl2,
          ),
          lvl3: Fragments(
            name: "Опыт героя",
            imagePath: CurrencyImage.expLvl3,
            count: expLvl3,
          ),
        ),
        crown: Fragments(
            name: "Корона прозрения",
            imagePath: CurrencyImage.crown,
            count: crown),
        mora: Fragments(
            name: "Мора",
            imagePath: CurrencyImage.mora,
            count: (exp ~/ 5) + mora));
  }
}
