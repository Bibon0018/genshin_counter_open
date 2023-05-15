import 'package:flutter/material.dart';
import 'package:genshin_counter/app/widgets/count_widgets/fragment_count_widget.dart';
import 'package:genshin_counter/app/widgets/hero_count.dart';
import 'package:genshin_counter/app/widgets/tooltip.dart';
import 'package:genshin_counter/models/fragment_counter.dart';
import 'package:genshin_counter/models/talant_fragments.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:genshin_counter/resourses/images/hero_image.dart';
import 'package:genshin_counter/resourses/images/rarity_image.dart';
import 'package:genshin_counter/resourses/images/talent_images.dart';
import 'package:get/get.dart';
import 'package:super_tooltip_ext/super_tooltip.dart';

import '../../../models/hero.dart' as Hero;

class TalentCountWidget extends StatelessWidget {
  final TalentsFragments data;
  final TalentsFragments have;
  final List<Hero.Hero> heroes;
  const TalentCountWidget(
    this.data, {
    Key? key,
    required this.have,
    required this.heroes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              data.name,
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
                  child: FragmentCountWidget(
                    backgroundImage: RarityImage.purple.rarityImagePath(),
                    data: data.lvl1,
                    image: data.lvl1.imagePath.talentFragmentImagePath(),
                    have: have.lvl1.count,
                    onTap: () {
                      final tooltip = customTooltip(
                        [
                          ...heroes
                              .where((e) =>
                                  FragmentCounter.talentFragment([e])
                                      .lvl1
                                      .count >
                                  0)
                              .map((e) => HeroCount(
                                  imagePath: e.imagePath.heroImagePath(),
                                  count: FragmentCounter.talentFragment([e])
                                      .lvl1
                                      .count))
                        ],
                      );
                      tooltip.show(context);
                    },
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: FragmentCountWidget(
                    backgroundImage: RarityImage.purple.rarityImagePath(),
                    data: data.lvl2,
                    image: data.lvl2.imagePath.talentFragmentImagePath(),
                    have: have.lvl2.count,
                    onTap: () {
                      final tooltip = customTooltip(
                        [
                          ...heroes
                              .where((e) =>
                                  FragmentCounter.talentFragment([e])
                                      .lvl2
                                      .count >
                                  0)
                              .map((e) => HeroCount(
                                  imagePath: e.imagePath.heroImagePath(),
                                  count: FragmentCounter.talentFragment([e])
                                      .lvl2
                                      .count))
                        ],
                      );
                      tooltip.show(context);
                    },
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: FragmentCountWidget(
                    backgroundImage: RarityImage.purple.rarityImagePath(),
                    data: data.lvl3,
                    have: have.lvl3.count,
                    image: data.lvl3.imagePath.talentFragmentImagePath(),
                    onTap: () {
                      final tooltip = customTooltip(
                        [
                          ...heroes
                              .where((e) =>
                                  FragmentCounter.talentFragment([e])
                                      .lvl3
                                      .count >
                                  0)
                              .map((e) => HeroCount(
                                  imagePath: e.imagePath.heroImagePath(),
                                  count: FragmentCounter.talentFragment([e])
                                      .lvl3
                                      .count))
                        ],
                      );
                      tooltip.show(context);
                    },
                  ),
                ),
              ],
            )
          ],
        ).paddingOnly(bottom: 16, left: 16, right: 16));
  }
}
