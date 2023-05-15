import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:genshin_counter/app/controllers/storage.dart';
import 'package:genshin_counter/app/widgets/fragment_cards.dart';
import 'package:genshin_counter/app/widgets/fragment_edit.dart';
import 'package:genshin_counter/app/widgets/tooltip.dart';
import 'package:genshin_counter/data/all_talentFragments.dart';
import 'package:genshin_counter/data/user_data.dart';
import 'package:genshin_counter/models/fragments.dart';

import 'package:genshin_counter/models/talant_fragments.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:genshin_counter/resourses/images/hero_image.dart';
import 'package:genshin_counter/resourses/images/rarity_image.dart';
import 'package:genshin_counter/resourses/images/talent_images.dart';
import 'package:get/get.dart';

class TalentRowWidget extends StatelessWidget {
  TalentsFragments talent;
  TalentRowWidget({
    Key? key,
    required this.talent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final helperHeroes = userData.value.heroes
        .allHero()
        .where((p0) => p0.talentsFragments.name == talent.name);

    return Container(
        decoration: BoxDecoration(
            color: AppColors.deActiveColor,
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            Text(
              talent.name,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.6)),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onLongPress: () => helperTooltip(helperHeroes
                            .map((e) => e.imagePath.heroImagePath())
                            .toList())
                        .show(context),
                    child: FragmentCard(
                      backgroundImage: RarityImage.green.rarityImagePath(),
                      title: talent.lvl1.name,
                      counter: talent.lvl1.count,
                      imagePath:
                          talent.lvl1.imagePath.talentFragmentImagePath(),
                      isButton: true,
                      onTap: () => addTalent("lvl1"),
                      minus: () => removeTalent("lvl1"),
                      onEdit: () async {
                        final result = await showEditFragment(context,
                            talent.lvl1, RarityImage.green.rarityImagePath());
                        if (result != null) {
                          editTalent("lvl1", result.count);
                        }
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: InkWell(
                    onLongPress: () => helperTooltip(helperHeroes
                            .map((e) => e.imagePath.heroImagePath())
                            .toList())
                        .show(context),
                    child: FragmentCard(
                      backgroundImage: RarityImage.blue.rarityImagePath(),
                      title: talent.lvl2.name,
                      imagePath:
                          talent.lvl2.imagePath.talentFragmentImagePath(),
                      isButton: true,
                      counter: talent.lvl2.count,
                      onTap: () => addTalent("lvl2"),
                      minus: () => removeTalent("lvl2"),
                      onEdit: () async {
                        final result = await showEditFragment(context,
                            talent.lvl2, RarityImage.blue.rarityImagePath());
                        if (result != null) {
                          editTalent("lvl2", result.count);
                        }
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: InkWell(
                    onLongPress: () => helperTooltip(helperHeroes
                            .map((e) => e.imagePath.heroImagePath())
                            .toList())
                        .show(context),
                    child: FragmentCard(
                      backgroundImage: RarityImage.purple.rarityImagePath(),
                      title: talent.lvl3.name,
                      counter: talent.lvl3.count,
                      imagePath:
                          talent.lvl3.imagePath.talentFragmentImagePath(),
                      isButton: true,
                      onTap: () => addTalent("lvl3"),
                      minus: () => removeTalent("lvl3"),
                      onEdit: () async {
                        final result = await showEditFragment(context,
                            talent.lvl3, RarityImage.purple.rarityImagePath());
                        if (result != null) {
                          editTalent("lvl3", result.count);
                        }
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ).paddingOnly(bottom: 16, left: 16, right: 16));
  }

  editTalent(String lvl, int count) {
    final data = userData.value.toMap();

    final keys = data['talentsFragments'].keys.toList();
    for (var key in keys) {
      if (data['talentsFragments'][key]['name'] == talent.name) {
        data['talentsFragments'][key][lvl]['count'] = count;

        userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
        storageUserData.setUserData();
      }
    }
  }

  addTalent(
    String lvl,
  ) {
    final data = userData.value.toMap();

    final keys = data['talentsFragments'].keys.toList();
    for (var key in keys) {
      if (data['talentsFragments'][key]['name'] == talent.name) {
        print(data['talentsFragments'][key][lvl]['count']);
        data['talentsFragments'][key][lvl]['count'] += 1;

        userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
        storageUserData.setUserData();
      }
    }
  }

  removeTalent(
    String lvl,
  ) {
    final data = userData.value.toMap();

    final keys = data['talentsFragments'].keys.toList();
    for (var key in keys) {
      if (data['talentsFragments'][key]['name'] == talent.name) {
        if (data['talentsFragments'][key][lvl]['count'] > 0) {
          data['talentsFragments'][key][lvl]['count'] -= 1;

          userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
          storageUserData.setUserData();
        }
      }
    }
  }
}
