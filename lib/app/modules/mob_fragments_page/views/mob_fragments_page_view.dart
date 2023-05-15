import 'package:flutter/material.dart';
import 'package:genshin_counter/app/widgets/mob_row_widget.dart';
import 'package:genshin_counter/data/user_data.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';

import 'package:get/get.dart';

import '../controllers/mob_fragments_page_controller.dart';

class MobFragmentsPageView extends GetView<MobFragmentsPageController> {
  const MobFragmentsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backGroundColor,
        appBar: AppBar(
          title: const Text('Обычные материалы возвышения'),
          centerTitle: true,
                 backgroundColor: AppColors.darkBackGroundColor,

        ),
        body: Obx(
          () => ListView(children: [
            for (var item in userData.value.mobFragments.allMobFragments())
              MobRowWidget(
                mobFragments: item,
              ).paddingOnly(bottom: 16)
          ]).paddingAll(16),
        ));
  }
}
