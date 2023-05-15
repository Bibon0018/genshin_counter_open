import 'package:flutter/material.dart';
import 'package:genshin_counter/app/controllers/storage.dart';
import 'package:genshin_counter/app/widgets/fragment_cards.dart';
import 'package:genshin_counter/app/widgets/fragment_edit.dart';
import 'package:genshin_counter/app/widgets/tooltip.dart';
import 'package:genshin_counter/data/user_data.dart';
import 'package:genshin_counter/models/fragments.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:genshin_counter/resourses/images/boss_fragment_image.dart';
import 'package:genshin_counter/resourses/images/hero_image.dart';
import 'package:genshin_counter/resourses/images/rarity_image.dart';

import 'package:get/get.dart';

import '../controllers/boss_fragment_page_controller.dart';

class BossFragmentPageView extends GetView<BossFragmentPageController> {
  const BossFragmentPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.darkBackGroundColor,
        title: const Text('Босс фрагменты'),
        centerTitle: true,
      ),
      body: Obx(() => GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1,
            children: [
              for (var bossFragment
                  in userData.value.bossFragment.allBossFragment())
                InkWell(
                  onLongPress: () => helperTooltip(userData.value.heroes
                          .allHero()
                          .where(
                              (p0) => p0.bossFragment.name == bossFragment.name)
                          .map((e) => e.imagePath.heroImagePath())
                          .toList())
                      .show(context),
                  child: FragmentCard(
                    backgroundImage: RarityImage.orange.rarityImagePath(),
                    title: bossFragment.name,
                    counter: bossFragment.count,
                    imagePath: bossFragment.imagePath.bossFragmentImagePath(),
                    isButton: true,
                    onTap: () => addTalent(bossFragment),
                    minus: () => removeTalent(bossFragment),
                    onEdit: () async {
                      final result = await showEditFragment(context,
                          bossFragment, RarityImage.purple.rarityImagePath());
                      if (result != null) {
                        editSpecialty(bossFragment, result.count);
                      }
                    },
                  ),
                ),
            ],
          )).paddingSymmetric(horizontal: 16, vertical: 16),
    );
  }

  editSpecialty(Fragments fragment, int count) {
    final data = userData.value.toMap();

    final keys = data['bossFragment'].keys.toList();
    for (var key in keys) {
      if (data['bossFragment'][key]['name'] == fragment.name) {
        data['bossFragment'][key]['count'] = count;

        userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
        storageUserData.setUserData();
      }
    }
  }

  addTalent(
    Fragments fragment,
  ) {
    final data = userData.value.toMap();

    final keys = data['bossFragment'].keys.toList();
    for (var key in keys) {
      if (data['bossFragment'][key]['name'] == fragment.name) {
        print(data['bossFragment'][key]['count']);
        data['bossFragment'][key]['count'] += 1;

        userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
        storageUserData.setUserData();
      }
    }
  }

  removeTalent(
    Fragments fragment,
  ) {
    final data = userData.value.toMap();

    final keys = data['bossFragment'].keys.toList();
    for (var key in keys) {
      if (data['bossFragment'][key]['name'] == fragment.name) {
        if (data['bossFragment'][key]['count'] > 0) {
          data['bossFragment'][key]['count'] -= 1;

          userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
          storageUserData.setUserData();
        }
      }
    }
  }
}
