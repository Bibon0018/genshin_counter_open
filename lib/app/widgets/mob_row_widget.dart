import 'package:flutter/material.dart';
import 'package:genshin_counter/app/controllers/storage.dart';
import 'package:genshin_counter/app/widgets/fragment_cards.dart';
import 'package:genshin_counter/app/widgets/fragment_edit.dart';
import 'package:genshin_counter/app/widgets/tooltip.dart';
import 'package:genshin_counter/data/all_mob_fragments.dart';
import 'package:genshin_counter/data/user_data.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:genshin_counter/resourses/images/hero_image.dart';
import 'package:genshin_counter/resourses/images/mob_fragments_image.dart';
import 'package:genshin_counter/resourses/images/rarity_image.dart';
import 'package:get/get.dart';

class MobRowWidget extends StatelessWidget {
  MobFragments mobFragments;
  MobRowWidget({
    Key? key,
    required this.mobFragments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final helperHeroes = userData.value.heroes
        .allHero()
        .where((p0) => p0.mobFragments.name == mobFragments.name);
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
              mobFragments.name,
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
                    onLongPress: () => helperTooltip(
                            helperHeroes.map((e) => e.imagePath.heroImagePath()).toList())
                        .show(context),
                    child: FragmentCard(
                      backgroundImage: RarityImage.grey.rarityImagePath(),
                      title: mobFragments.lvl1.name,
                      counter: mobFragments.lvl1.count,
                      imagePath: mobFragments.lvl1.imagePath.mobFragmentsImagePath(),
                      isButton: true,
                      onTap: () => addMobFragments("lvl1"),
                      minus: () => removeMobFragments("lvl1"),
                      onEdit: () async {
                        final result = await showEditFragment(
                            context,
                            mobFragments.lvl1,
                            RarityImage.purple.rarityImagePath());
                        if (result != null) {
                          editMobFragment("lvl1", result.count);
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
                    onLongPress: () => helperTooltip(
                            helperHeroes.map((e) => e.imagePath.heroImagePath()).toList())
                        .show(context),
                    child: FragmentCard(
                      backgroundImage: RarityImage.green.rarityImagePath(),
                      title: mobFragments.lvl2.name,
                      imagePath: mobFragments.lvl2.imagePath.mobFragmentsImagePath(),
                      isButton: true,
                      counter: mobFragments.lvl2.count,
                      onTap: () => addMobFragments("lvl2"),
                      minus: () => removeMobFragments("lvl2"),
                      onEdit: () async {
                        final result = await showEditFragment(
                            context,
                            mobFragments.lvl2,
                            RarityImage.purple.rarityImagePath());
                        if (result != null) {
                          editMobFragment("lvl2", result.count);
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
                    onLongPress: () => helperTooltip(
                            helperHeroes.map((e) => e.imagePath.heroImagePath()).toList())
                        .show(context),
                    child: FragmentCard(
                      backgroundImage: RarityImage.blue.rarityImagePath(),
                      title: mobFragments.lvl3.name,
                      counter: mobFragments.lvl3.count,
                      imagePath: mobFragments.lvl3.imagePath.mobFragmentsImagePath(),
                      isButton: true,
                      onTap: () => addMobFragments("lvl3"),
                      minus: () => removeMobFragments("lvl3"),
                      onEdit: () async {
                        final result = await showEditFragment(
                            context,
                            mobFragments.lvl3,
                            RarityImage.purple.rarityImagePath());
                        if (result != null) {
                          editMobFragment("lvl3", result.count);
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

  addMobFragments(
    String lvl,
  ) {
    final data = userData.value.toMap();

    final keys = data['mobFragments'].keys.toList();
    for (var key in keys) {
      if (data['mobFragments'][key]['name'] == mobFragments.name) {
        print(data['mobFragments'][key][lvl]['count']);
        data['mobFragments'][key][lvl]['count'] += 1;

        userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
        storageUserData.setUserData();
      }
    }
  }

  removeMobFragments(
    String lvl,
  ) {
    final data = userData.value.toMap();

    final keys = data['mobFragments'].keys.toList();
    for (var key in keys) {
      if (data['mobFragments'][key]['name'] == mobFragments.name) {
        if (data['mobFragments'][key][lvl]['count'] > 0) {
          data['mobFragments'][key][lvl]['count'] -= 1;

          userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
          storageUserData.setUserData();
        }
      }
    }
  }

  editMobFragment(String lvl, int count) {
    final data = userData.value.toMap();

    final keys = data['mobFragments'].keys.toList();
    for (var key in keys) {
      if (data['mobFragments'][key]['name'] == mobFragments.name) {
        data['mobFragments'][key][lvl]['count'] = count;

        userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
        storageUserData.setUserData();
      }
    }
  }
}
