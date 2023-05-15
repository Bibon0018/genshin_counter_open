import 'package:flutter/material.dart';
import 'package:genshin_counter/app/widgets/elementary_widget.dart';
import 'package:genshin_counter/data/user_data.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';

import 'package:get/get.dart';

import '../controllers/elementary_page_controller.dart';

class ElementaryPageView extends GetView<ElementaryPageController> {
  const ElementaryPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        title: const Text('Материалы возвышения'),
        centerTitle: true,
        backgroundColor: AppColors.darkBackGroundColor,
      ),
      body: Obx(() => ListView(
            children: [
              for (var elementaryFragment
                  in userData.value.elementaryFragment.allElementaryFragments())
                ElementaryWidget(elementaryFragment: elementaryFragment)
                    .paddingSymmetric(vertical: 15)
            ],
          )).paddingSymmetric(horizontal: 16),
    );
  }
}
