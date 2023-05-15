import 'package:dartx/dartx.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:genshin_counter/models/hero.dart' as HM;

class HeroSettingsController extends GetxController {
  final HM.Hero hero;
  HeroSettingsController(this.hero);
  //Current LEVEL LEFT
  FixedExtentScrollController scrollControllerCurrentLevelLeft =
      FixedExtentScrollController();
  RxInt currentLevelLeft = 0.obs;

  //Current LEVEL Right
  FixedExtentScrollController scrollControllerCurrentLevelRight =
      FixedExtentScrollController();
  RxInt currentLevelRight = 0.obs;

  //Target LEVEL LEFT
  RxInt targetLeftLevel = 0.obs;
  FixedExtentScrollController scrollControllerTargetLeftLevel =
      FixedExtentScrollController();
  //Target LEVEL RIGHT
  RxInt targetRightLevel = 0.obs;
  FixedExtentScrollController scrollControllerTargetRightLevel =
      FixedExtentScrollController();

// talent1 LEFT
  RxInt talent1LeftLevel = 0.obs;
  FixedExtentScrollController scrollControllerTalent1LeftLevel =
      FixedExtentScrollController();

// talent1 RIGHT
  RxInt talent1RightLevel = 0.obs;
  FixedExtentScrollController scrollControllerTalent1RightLevel =
      FixedExtentScrollController();

// talent2 LEFT
  RxInt talent2LeftLevel = 0.obs;
  FixedExtentScrollController scrollControllerTalent2LeftLevel =
      FixedExtentScrollController();

// talent2 RIGHT
  RxInt talent2RightLevel = 0.obs;
  FixedExtentScrollController scrollControllerTalent2RightLevel =
      FixedExtentScrollController();

// talent3 LEFT
  RxInt talent3LeftLevel = 0.obs;
  FixedExtentScrollController scrollControllerTalent3LeftLevel =
      FixedExtentScrollController();

// talent3 RIGHT
  RxInt talent3RightLevel = 0.obs;
  FixedExtentScrollController scrollControllerTalent3RightLevel =
      FixedExtentScrollController();

// target talent1 LEFT
  RxInt targetLeftTalent1Level = 0.obs;
  FixedExtentScrollController scrollControllerTargetLeftTalent1Level =
      FixedExtentScrollController();

// target talent1 RIGHT
  RxInt targetRightTalent1Level = 0.obs;
  FixedExtentScrollController scrollControllerTargetRightTalent1Level =
      FixedExtentScrollController();

// target talent2 LEFT
  RxInt targetLeftTalent2Level = 0.obs;
  FixedExtentScrollController scrollControllerTargetLeftTalent2Level =
      FixedExtentScrollController();

// target talent2 RIGHT
  RxInt targetRightTalent2Level = 0.obs;
  FixedExtentScrollController scrollControllerTargetRightTalent2Level =
      FixedExtentScrollController();

// target talent3 LEFT
  RxInt targetLeftTalent3Level = 0.obs;
  FixedExtentScrollController scrollControllerTargetLeftTalent3Level =
      FixedExtentScrollController();

// target talent3 RIGHT
  RxInt targetRightTalent3Level = 0.obs;
  FixedExtentScrollController scrollControllerTargetRightTalent3Level =
      FixedExtentScrollController();

  RxInt currentStars = 0.obs;

  RxInt targetStars = 0.obs;
  bool noListingScroll = false;
  PageController pageController = PageController();
  RxInt get currentLevel =>
      "${currentLevelLeft.value}${currentLevelRight.value}".toInt().obs;
  RxInt get targetLevel =>
      "${targetLeftLevel.value}${targetRightLevel.value}".toInt().obs;

  RxInt get currentTalent1Level =>
      "${talent1LeftLevel.value}${talent1RightLevel.value}".toInt().obs;
  RxInt get targetTalent1Level =>
      "${targetLeftTalent1Level.value}${targetRightTalent1Level.value}"
          .toInt()
          .obs;

  RxInt get currentTalent2Level =>
      "${talent2LeftLevel.value}${talent2RightLevel.value}".toInt().obs;
  RxInt get targetTalent2Level =>
      "${targetLeftTalent2Level.value}${targetRightTalent2Level.value}"
          .toInt()
          .obs;

  RxInt get currentTalent3Level =>
      "${talent3LeftLevel.value}${talent3RightLevel.value}".toInt().obs;
  RxInt get targetTalent3Level =>
      "${targetLeftTalent3Level.value}${targetRightTalent3Level.value}"
          .toInt()
          .obs;
  RxInt get activeCurrentStars => (currentLevel.value <= 20
          ? 0
          : currentLevel.value <= 40 && currentLevel.value > 20
              ? 1
              : currentLevel.value <= 50 && currentLevel.value > 40
                  ? 2
                  : currentLevel.value <= 60 && currentLevel.value > 50
                      ? 3
                      : currentLevel.value <= 70 && currentLevel.value > 60
                          ? 4
                          : currentLevel.value <= 80 && currentLevel.value > 70
                              ? 5
                              : 6)
      .obs;
  RxInt get activeTargetStars => (targetLevel.value <= 20
          ? 0
          : targetLevel.value <= 40 && targetLevel.value > 20
              ? 1
              : targetLevel.value <= 50 && targetLevel.value > 40
                  ? 2
                  : targetLevel.value <= 60 && targetLevel.value > 50
                      ? 3
                      : targetLevel.value <= 70 && targetLevel.value > 60
                          ? 4
                          : targetLevel.value <= 80 && targetLevel.value > 70
                              ? 5
                              : 6)
      .obs;
  RxInt get changedCurrentStars => (currentLevel.value == 20 ||
              currentLevel.value == 40 ||
              currentLevel.value == 50 ||
              currentLevel.value == 60 ||
              currentLevel.value == 70 ||
              currentLevel.value == 80
          ? 1
          : 0)
      .obs;
  RxInt get changedTargetStars => (targetLevel.value == 20 ||
              targetLevel.value == 40 ||
              targetLevel.value == 50 ||
              targetLevel.value == 60 ||
              targetLevel.value == 70 ||
              targetLevel.value == 80
          ? 1
          : 0)
      .obs;
  RxInt get unActiveCurrentStars =>
      (6 - activeCurrentStars.value - changedCurrentStars.value).obs;
  RxInt get unActiveTargetStars =>
      (6 - activeTargetStars.value - changedTargetStars.value).obs;

  RxBool isHeroComplete = false.obs;
  RxBool isTalent = false.obs;
  Future<void> starChange(RxInt stars, int i, bool isCurrentStars) async {
    if (stars.value == i) {
      stars.value -= 1;
    } else {
      stars.value = i;
    }
  }

  void fixStarsCount(bool isCurrentStars) {
    if (isCurrentStars) {
      if (currentStars.value > targetStars.value) {
        starChange(targetStars, currentStars.value, false);
      }
    } else {
      if (currentStars.value > targetStars.value) {
        starChange(currentStars, targetStars.value, false);
      }
    }
  }

  Future<void> currentStarChange(int i) async {}

  Future<void> levelChange(
      RxInt level,
      RxInt anyLevel,
      FixedExtentScrollController scrollController,
      FixedExtentScrollController anyScrollController,
      bool isLeft,
      int i,
      bool isCurrent , bool isTalent) async {
    level.value = i;
    if (isLeft) {
      if (  !isTalent &&i == 9) {
        anyScrollController.jumpTo(0);
      }else if(isTalent && i == 0){

        anyScrollController.jumpTo(0);
      }
    }
  }

  changeLevel(FixedExtentScrollController leftController,
      FixedExtentScrollController rightController, int left, int right) {
    leftController.animateToItem(left,
        duration: const Duration(milliseconds: 200), curve: Curves.bounceIn);
    rightController.animateToItem(right,
        duration: const Duration(milliseconds: 200), curve: Curves.bounceIn);
  }
  // Future<void> scrollStarsChange(int targetLevel, RxInt stars) async {}

  // Future<void> scroll(
  //   int stars,
  //   int verifyStars,
  //   int levelMin,
  //   int levelMax,
  //   int jumpLevel,
  //   int targetLevel,
  //   FixedExtentScrollController left,
  //   FixedExtentScrollController right,
  // ) async {}
}
