import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  static HomePageController get to => Get.find<HomePageController>();
  RxInt flexImageCount = (DateTime.now().microsecond % 60).obs;
  RxInt flexImageActiveCount =
      ((DateTime.now().microsecond + DateTime.now().millisecond) % 60).obs;
  RxList<Widget> get currentPage => currentIndex.value == 0
      ? collectionArguments
      : currentIndex.value == 1
          ? fragmentsArguments
          : profileArguments;
  final RxInt currentIndex = 0.obs;
  final RxInt navigateCounter = 0.obs;
  final RxList<int> switchHistory = RxList([0]);
  final RxList<Widget> fragmentsArguments = RxList();
  final RxList<Widget> collectionArguments = RxList();
  final RxList<Widget> profileArguments = RxList();

  onTap(int i) {
    if (i == currentIndex.value) {
      currentPage.clear();
    } else {
      currentIndex.value = i;
      flexImageCount.value = (flexImageCount.value + 1) % 60;
      flexImageActiveCount.value = (flexImageActiveCount.value + 1) % 60;
      switchHistory.add(i);
    }
  }

  Future<bool> onWillPop() async {
    if (switchHistory.length != 1) {
      if (currentIndex.value == 0 && collectionArguments.isNotEmpty) {
        collectionArguments.removeLast();
      } else if (currentIndex.value == 1 && fragmentsArguments.isNotEmpty) {
        fragmentsArguments.removeLast();
      } else if (currentIndex.value == 3 && profileArguments.isNotEmpty) {
        profileArguments.removeLast();
      } else if (switchHistory.isNotEmpty) {
        switchHistory.removeLast();
        currentIndex.value = switchHistory.last;
      }
    }
    return false;
  }
}
