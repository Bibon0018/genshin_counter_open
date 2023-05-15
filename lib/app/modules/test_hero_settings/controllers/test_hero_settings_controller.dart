import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genshin_counter/models/hero_settings.dart';
import 'package:get/get.dart';
import 'package:genshin_counter/models/hero.dart' as HM;

class TestHeroSettingsController extends GetxController {
  final HM.Hero hero;
  TestHeroSettingsController(this.hero);
  final Rx<HeroSettings> heroSettings = Rx<HeroSettings>(HeroSettings());
  // final Rx<>

  PageController pageController = PageController();
  final RxBool isTalent = false.obs;

  levelChanged(
      RxInt counter, RxInt anyCounter, int i, bool isTalent, bool isCurrent) {
    final bool levelCheck =
        isTalent ? counter.value + i <= 10 : counter.value + i <= 90;
    final bool levelMaxCheck =
        isTalent ? counter.value + i > 10 : counter.value + i > 90;
    final levelMinCheck =
        isTalent ? counter.value + i >= 1 : counter.value + i >= 0;
    if (levelCheck && levelMinCheck) {
      counter.value += i;
    } else if (levelMaxCheck) {
      counter.value = isTalent ? 10 : 90;
    } else if (!levelMinCheck) {
      if (isTalent) {
        counter.value = 1;
      } else {
        counter.value = 0;
      }
    }

    if (isCurrent) {
      changeStar(counter, heroSettings.value.currentStars, isTalent);
      if (counter.value > anyCounter.value) {
        anyCounter.value = counter.value;
        changeStar(anyCounter, heroSettings.value.targetStars, isTalent);
      }
    } else {
      changeStar(counter, heroSettings.value.targetStars, isTalent);

      if (counter.value < anyCounter.value) {
        changeStar(anyCounter, heroSettings.value.currentStars, isTalent);
        anyCounter.value = counter.value;
      }
    }
  }

  changeStar(RxInt level, RxInt stars, bool isTalent) {
    if (isTalent) {
      return;
    }
    if (level.value <= 20) {
      stars.value = 0;
    } else if (level.value <= 40 && level.value > 20) {
      stars.value = 1;
    } else if (level.value <= 50 && level.value > 40) {
      stars.value = 2;
    } else if (level.value <= 60 && level.value > 50) {
      stars.value = 3;
    } else if (level.value <= 70 && level.value > 60) {
      stars.value = 4;
    } else if (level.value <= 80 && level.value > 70) {
      stars.value = 5;
    } else if (level.value <= 90 && level.value > 80) {
      stars.value = 6;
    }
  }

  void start() {
    heroSettings.value.currentStars.value = hero.currentStars;
    heroSettings.value.targetStars.value = hero.targetStars;
    heroSettings.value.currentLevel.value = hero.currentLevel;
    heroSettings.value.targetLevel.value = hero.targetLevel;
    heroSettings.value.talent1Level.value = hero.talent1Level;
    heroSettings.value.targetTalent1Level.value = hero.targetTalent1Level;
    heroSettings.value.talent2Level.value = hero.talent2Level;
    heroSettings.value.targetTalent2Level.value = hero.targetTalent2Level;
    heroSettings.value.talent3Level.value = hero.talent3Level;
    heroSettings.value.targetTalent3Level.value = hero.targetTalent3Level;
  }
}
