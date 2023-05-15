import 'package:flutter/material.dart';
import 'package:genshin_counter/app/controllers/storage.dart';
import 'package:genshin_counter/app/widgets/fragment_cards.dart';
import 'package:genshin_counter/app/widgets/fragment_edit.dart';
import 'package:genshin_counter/app/widgets/tooltip.dart';
import 'package:genshin_counter/data/user_data.dart';
import 'package:genshin_counter/models/fragments.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:genshin_counter/resourses/images/boss_material_image.dart';
import 'package:genshin_counter/resourses/images/hero_image.dart';
import 'package:genshin_counter/resourses/images/rarity_image.dart';

import 'package:get/get.dart';

import '../controllers/boss_material_page_controller.dart';

class BossMaterialPageView extends GetView<BossMaterialPageController> {
  const BossMaterialPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        title: const Text('Материалы босса'),
        centerTitle: true,
        backgroundColor: AppColors.darkBackGroundColor,
      ),
      body: Obx(() => GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1,
            children: [
              for (var bossMaterial
                  in userData.value.bossMaterial.allBossMaterials())
                InkWell(
                    onLongPress: () => helperTooltip(userData.value.heroes
                            .allHero()
                            .where((p0) =>
                                p0.bossMaterial.name == bossMaterial.name)
                            .map((e) => e.imagePath.heroImagePath())
                            .toList())
                        .show(context),
                    child: FragmentCard(
                      backgroundImage: RarityImage.purple.rarityImagePath(),
                      title: bossMaterial.name,
                      counter: bossMaterial.count,
                      imagePath: bossMaterial.imagePath.bossMaterialImagePath(),
                      isButton: true,
                      onTap: () => addTalent(bossMaterial),
                      minus: () => removeTalent(bossMaterial),
                      onEdit: () async {
                        final result = await showEditFragment(context,
                            bossMaterial, RarityImage.purple.rarityImagePath());
                        if (result != null) {
                          editSpecialty(bossMaterial, result.count);
                        }
                      },
                    ))
            ],
          )).paddingSymmetric(horizontal: 16, vertical: 16),
    );
  }

  editSpecialty(Fragments fragment, int count) {
    final data = userData.value.toMap();

    final keys = data['bossMaterial'].keys.toList();
    for (var key in keys) {
      if (data['bossMaterial'][key]['name'] == fragment.name) {
        data['bossMaterial'][key]['count'] = count;

        userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
        storageUserData.setUserData();
      }
    }
  }

  addTalent(
    Fragments fragment,
  ) {
    final data = userData.value.toMap();

    final keys = data['bossMaterial'].keys.toList();
    print(keys);
    for (var key in keys) {
      if (data['bossMaterial'][key]['name'] == fragment.name) {
        print(data['bossMaterial'][key]['count']);
        print(data['bossMaterial'][key]['name']);
        data['bossMaterial'][key]['count'] += 1;

        userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
        storageUserData.setUserData();
      }
    }
  }

  removeTalent(
    Fragments fragment,
  ) {
    final data = userData.value.toMap();

    final keys = data['bossMaterial'].keys.toList();
    for (var key in keys) {
      if (data['bossMaterial'][key]['name'] == fragment.name) {
        if (data['bossMaterial'][key]['count'] > 0) {
          data['bossMaterial'][key]['count'] -= 1;

          userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
          storageUserData.setUserData();
        }
      }
    }
  }
}
