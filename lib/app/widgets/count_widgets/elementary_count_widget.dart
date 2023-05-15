import 'package:flutter/material.dart';
import 'package:genshin_counter/app/widgets/count_widgets/fragment_count_widget.dart';
import 'package:genshin_counter/app/widgets/hero_count.dart';
import 'package:genshin_counter/app/widgets/tooltip.dart';
import 'package:genshin_counter/data/all_elementaryFragments.dart';
import 'package:genshin_counter/models/fragment_counter.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:genshin_counter/resourses/images/hero_image.dart';
import 'package:genshin_counter/resourses/images/elementary_fragments_image.dart';
import 'package:genshin_counter/resourses/images/rarity_image.dart';
import 'package:get/get.dart';

import '../../../models/hero.dart' as Hero;

class ElementaryCountWidget extends StatelessWidget {
  final ElementaryFragment data;
  final ElementaryFragment have;
  final List<Hero.Hero> heroes;
  const ElementaryCountWidget(
      {Key? key, required this.data, required this.have, required this.heroes})
      : super(key: key);

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
                    backgroundImage: RarityImage.grey.rarityImagePath(),
                    data: data.lvl1,
                    image: data.lvl1.imagePath.elementaryFragmentsImagePath(),
                    have: have.lvl1.count,
                    onTap: () {
                      final tooltip = customTooltip(
                        [
                          ...heroes
                              .where((e) =>
                                  FragmentCounter.elementaryFragment([e])
                                      .lvl1
                                      .count >
                                  0)
                              .map((e) => HeroCount(
                                  imagePath: e.imagePath.heroImagePath(),
                                  count: FragmentCounter.elementaryFragment([e])
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
                    backgroundImage: RarityImage.green.rarityImagePath(),
                    data: data.lvl2,
                    image: data.lvl2.imagePath.elementaryFragmentsImagePath(),
                    have: have.lvl2.count,
                    onTap: () {
                      final tooltip = customTooltip(
                        [
                          ...heroes
                              .where((e) =>
                                  FragmentCounter.elementaryFragment([e])
                                      .lvl2
                                      .count >
                                  0)
                              .map((e) => HeroCount(
                                  imagePath: e.imagePath.heroImagePath(),
                                  count: FragmentCounter.elementaryFragment([e])
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
                    backgroundImage: RarityImage.blue.rarityImagePath(),
                    data: data.lvl3,
                    image: data.lvl3.imagePath.elementaryFragmentsImagePath(),
                    have: have.lvl3.count,
                    onTap: () {
                      final tooltip = customTooltip(
                        [
                          ...heroes
                              .where((e) =>
                                  FragmentCounter.elementaryFragment([e])
                                      .lvl3
                                      .count >
                                  0)
                              .map((e) => HeroCount(
                                  imagePath: e.imagePath.heroImagePath(),
                                  count: FragmentCounter.elementaryFragment([e])
                                      .lvl3
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
                    backgroundImage: RarityImage.blue.rarityImagePath(),
                    data: data.lvl4,
                    image: data.lvl4.imagePath.elementaryFragmentsImagePath(),
                    have: have.lvl4.count,
                    onTap: () {
                      final tooltip = customTooltip(
                        [
                          ...heroes
                              .where((e) =>
                                  FragmentCounter.elementaryFragment([e])
                                      .lvl4
                                      .count >
                                  0)
                              .map((e) => HeroCount(
                                  imagePath: e.imagePath.heroImagePath(),
                                  count: FragmentCounter.elementaryFragment([e])
                                      .lvl4
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
