import 'package:flutter/material.dart';
import 'package:genshin_counter/app/controllers/storage.dart';
import 'package:genshin_counter/app/widgets/fragment_cards.dart';
import 'package:genshin_counter/app/widgets/fragment_edit.dart';
import 'package:genshin_counter/app/widgets/tooltip.dart';
import 'package:genshin_counter/data/all_elementaryFragments.dart';
import 'package:genshin_counter/data/user_data.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:genshin_counter/resourses/images/elementary_fragments_image.dart';
import 'package:genshin_counter/resourses/images/hero_image.dart';
import 'package:genshin_counter/resourses/images/rarity_image.dart';
import 'package:get/get.dart';

class ElementaryWidget extends StatelessWidget {
  ElementaryFragment elementaryFragment;
  ElementaryWidget({
    Key? key,
    required this.elementaryFragment,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final helperHeroes = userData.value.heroes
        .allHero()
        .where((p0) => p0.elementary.name == elementaryFragment.name);
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
              elementaryFragment.name,
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
                      // FragmentCounterWidgey
                      backgroundImage: RarityImage.green.rarityImagePath(),
                      title: elementaryFragment.lvl1.name,
                      counter: elementaryFragment.lvl1.count,
                      imagePath: elementaryFragment.lvl1.imagePath
                          .elementaryFragmentsImagePath(),
                      isButton: true,
                      onTap: () => addElementaryFragment("lvl1"),
                      minus: () => removeElmentaryFragment("lvl1"),
                      onEdit: () async {
                        final result = await showEditFragment(
                            context,
                            elementaryFragment.lvl1,
                            RarityImage.green.rarityImagePath());
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
                    onLongPress: () => helperTooltip(helperHeroes
                            .map((e) => e.imagePath.heroImagePath())
                            .toList())
                        .show(context),
                    child: FragmentCard(
                      backgroundImage: RarityImage.blue.rarityImagePath(),
                      title: elementaryFragment.lvl2.name,
                      imagePath: elementaryFragment.lvl2.imagePath
                          .elementaryFragmentsImagePath(),
                      isButton: true,
                      counter: elementaryFragment.lvl2.count,
                      onTap: () => addElementaryFragment("lvl2"),
                      minus: () => removeElmentaryFragment("lvl2"),
                      onEdit: () async {
                        final result = await showEditFragment(
                            context,
                            elementaryFragment.lvl2,
                            RarityImage.blue.rarityImagePath());
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
                    onLongPress: () => helperTooltip(helperHeroes
                            .map((e) => e.imagePath.heroImagePath())
                            .toList())
                        .show(context),
                    child: FragmentCard(
                      backgroundImage: RarityImage.purple.rarityImagePath(),
                      title: elementaryFragment.lvl3.name,
                      counter: elementaryFragment.lvl3.count,
                      imagePath: elementaryFragment.lvl3.imagePath
                          .elementaryFragmentsImagePath(),
                      isButton: true,
                      onTap: () => addElementaryFragment("lvl3"),
                      minus: () => removeElmentaryFragment("lvl3"),
                      onEdit: () async {
                        final result = await showEditFragment(
                            context,
                            elementaryFragment.lvl3,
                            RarityImage.purple.rarityImagePath());
                        if (result != null) {
                          editMobFragment("lvl3", result.count);
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
                      backgroundImage: RarityImage.orange.rarityImagePath(),
                      title: elementaryFragment.lvl4.name,
                      imagePath: elementaryFragment.lvl4.imagePath
                          .elementaryFragmentsImagePath(),
                      isButton: true,
                      counter: elementaryFragment.lvl4.count,
                      onTap: () => addElementaryFragment("lvl4"),
                      minus: () => removeElmentaryFragment("lvl4"),
                      onEdit: () async {
                        final result = await showEditFragment(
                            context,
                            elementaryFragment.lvl4,
                            RarityImage.orange.rarityImagePath());
                        if (result != null) {
                          editMobFragment("lvl4", result.count);
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

  editMobFragment(String lvl, int count) {
    final data = userData.value.toMap();

    final keys = data['elementaryFragment'].keys.toList();
    for (var key in keys) {
      if (data['elementaryFragment'][key]['name'] == elementaryFragment.name) {
        data['elementaryFragment'][key][lvl]['count'] = count;

        userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
        storageUserData.setUserData();
      }
    }
  }

  addElementaryFragment(
    String lvl,
  ) {
    final data = userData.value.toMap();

    final keys = data['elementaryFragment'].keys.toList();
    for (var key in keys) {
      if (data['elementaryFragment'][key]['name'] == elementaryFragment.name) {
        print(data['elementaryFragment'][key][lvl]['count']);
        data['elementaryFragment'][key][lvl]['count'] += 1;

        userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
        storageUserData.setUserData();
      }
    }
  }

  removeElmentaryFragment(
    String lvl,
  ) {
    final data = userData.value.toMap();

    final keys = data['elementaryFragment'].keys.toList();
    for (var key in keys) {
      if (data['elementaryFragment'][key]['name'] == elementaryFragment.name) {
        if (data['elementaryFragment'][key][lvl]['count'] > 0) {
          data['elementaryFragment'][key][lvl]['count'] -= 1;

          userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
          storageUserData.setUserData();
        }
      }
    }
  }
}
