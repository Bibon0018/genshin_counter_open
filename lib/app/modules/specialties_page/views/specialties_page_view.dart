import 'package:flutter/material.dart';
import 'package:genshin_counter/app/controllers/storage.dart';
import 'package:genshin_counter/app/widgets/fragment_cards.dart';
import 'package:genshin_counter/app/widgets/fragment_edit.dart';
import 'package:genshin_counter/app/widgets/tooltip.dart';
import 'package:genshin_counter/data/user_data.dart';
import 'package:genshin_counter/models/fragments.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:genshin_counter/resourses/images/hero_image.dart';
import 'package:genshin_counter/resourses/images/rarity_image.dart';
import 'package:genshin_counter/resourses/images/specialties_image.dart';

import 'package:get/get.dart';

import '../controllers/specialties_page_controller.dart';

class SpecialtiesPageView extends GetView<SpecialtiesPageController> {
  const SpecialtiesPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        title: const Text('Диковинки'),
        centerTitle: true,
        backgroundColor: AppColors.darkBackGroundColor,
      ),
      body: Obx(() => GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1,
            children: [
              for (var specialti in userData.value.specialties.allSpecialties())
                InkWell(
                    onLongPress: () => helperTooltip(userData.value.heroes
                            .allHero()
                            .where(
                                (p0) => p0.specialties.name == specialti.name)
                            .map((e) => e.imagePath.heroImagePath())
                            .toList())
                        .show(context),
                    child: FragmentCard(
                      backgroundImage: RarityImage.grey.rarityImagePath(),
                      title: specialti.name,
                      counter: specialti.count,
                      imagePath: specialti.imagePath.specialtiesImagePath(),
                      isButton: true,
                      onTap: () => addTalent(specialti),
                      minus: () => removeTalent(specialti),
                      onEdit: () async {
                        final result = await showEditFragment(context,
                            specialti, RarityImage.purple.rarityImagePath());
                        if (result != null) {
                          editSpecialty(specialti, result.count);
                        }
                      },
                    ))
            ],
          )).paddingSymmetric(horizontal: 16, vertical: 16),
    );
  }

  editSpecialty(Fragments fragment, int count) {
    final data = userData.value.toMap();

    final keys = data['specialties'].keys.toList();
    for (var key in keys) {
      if (data['specialties'][key]['name'] == fragment.name) {
        data['specialties'][key]['count'] = count;

        userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
        storageUserData.setUserData();
      }
    }
  }

  addTalent(
    Fragments fragment,
  ) {
    final data = userData.value.toMap();

    final keys = data['specialties'].keys.toList();
    for (var key in keys) {
      if (data['specialties'][key]['name'] == fragment.name) {
        print(data['specialties'][key]['count']);
        data['specialties'][key]['count'] += 1;

        userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
        storageUserData.setUserData();
      }
    }
  }

  removeTalent(
    Fragments fragment,
  ) {
    final data = userData.value.toMap();

    final keys = data['specialties'].keys.toList();
    for (var key in keys) {
      if (data['specialties'][key]['name'] == fragment.name) {
        if (data['specialties'][key]['count'] > 0) {
          data['specialties'][key]['count'] -= 1;

          userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
          storageUserData.setUserData();
        }
      }
    }
  }
}
