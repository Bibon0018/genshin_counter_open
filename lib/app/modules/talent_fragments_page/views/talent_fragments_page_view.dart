import 'package:flutter/material.dart';
import 'package:genshin_counter/app/widgets/talent_row_widget.dart';
import 'package:genshin_counter/data/user_data.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';

import 'package:get/get.dart';

import '../controllers/talent_fragments_page_controller.dart';

class TalentFragmentsPageView extends GetView<TalentFragmentsPageController> {
  const TalentFragmentsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        title: const Text('Материалы возвышения талантов'),
        centerTitle: true,
        backgroundColor: AppColors.darkBackGroundColor,
      ),
      body: Obx(() => ListView(
            children: [
              for (var talent
                  in userData.value.talentsFragments.allTalentsFragments())
                TalentRowWidget(talent: talent).paddingSymmetric(vertical: 15)
            ],
          )).paddingSymmetric(horizontal: 16),
    );
  }
}
