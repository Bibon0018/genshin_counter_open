import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genshin_counter/app/widgets/fragment_cards.dart';
import 'package:genshin_counter/models/fragments.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:genshin_counter/resourses/images/rarity_image.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

Future<Fragments?> showEditFragment(
    BuildContext context, Fragments data, String backgroundImage,
    {bool isMora = false}) async {
  return await showDialog<Fragments>(
    barrierDismissible: false,
    context: context,
    builder: (context) => FragmentEdit(
      data: data,
      backgroundImage: backgroundImage,
      isMora: isMora,
    ),
  );
}

class FragmentEdit extends StatelessWidget {
  final Fragments data;
  final String backgroundImage;
  final bool isMora;
  FragmentEdit(
      {Key? key,
      required this.data,
      required this.backgroundImage,
      required this.isMora})
      : super(key: key);
  final RxInt counter = 0.obs;

  static const max1 = 100000000;
  static const max2 = 10000000;
  static const max3 = 1000000;
  static const max4 = 100000;
  static const max5 = 10000;
  static const max6 = 1000;
  static const max7 = 100;
  static const max8 = 10;
  @override
  Widget build(BuildContext context) {
    final FixedExtentScrollController a1Controller =
        FixedExtentScrollController(initialItem: data.count ~/ max1);
    final FixedExtentScrollController a2Controller =
        FixedExtentScrollController(initialItem: data.count % max1 ~/ max2);
    final FixedExtentScrollController a3Controller =
        FixedExtentScrollController(initialItem: data.count % max2 ~/ max3);
    final FixedExtentScrollController a4Controller =
        FixedExtentScrollController(initialItem: data.count % max3 ~/ max4);
    final FixedExtentScrollController a5Controller =
        FixedExtentScrollController(initialItem: data.count % max4 ~/ max5);
    final FixedExtentScrollController a6Controller =
        FixedExtentScrollController(initialItem: data.count % max5 ~/ max6);
    final FixedExtentScrollController a7Controller =
        FixedExtentScrollController(initialItem: data.count % max6 ~/ max7);
    final FixedExtentScrollController a8Controller =
        FixedExtentScrollController(initialItem: data.count % max7 ~/ max8);
    final FixedExtentScrollController a9Controller =
        FixedExtentScrollController(initialItem: data.count % max8);
    counter.value = data.count;
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(22.0))),
      backgroundColor: AppColors.backGroundColor,
      actions: [
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () async {
                  Get.back();
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.darkBackGroundColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(12))),
                  alignment: Alignment.center,
                  child: const Text("Отмена",
                          style: TextStyle(color: Colors.white))
                      .paddingSymmetric(vertical: 8),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: InkWell(
                onTap: () async {
                  Get.back(
                      result: data.copyWith(
                          count: isMora
                              ? (a1Controller.selectedItem) * max1 +
                                  (a2Controller.selectedItem) * max2 +
                                  (a3Controller.selectedItem) * max3 +
                                  (a4Controller.selectedItem) * max4 +
                                  (a5Controller.selectedItem) * max5 +
                                  (a6Controller.selectedItem) * max6 +
                                  (a7Controller.selectedItem) * max7 +
                                  (a8Controller.selectedItem) * max8 +
                                  (a9Controller.selectedItem)
                              : (a6Controller.selectedItem) * max6 +
                                  (a7Controller.selectedItem) * max7 +
                                  (a8Controller.selectedItem) * max8 +
                                  (a9Controller.selectedItem)));
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColors.darkBackGroundColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(12))),
                  child: Text(
                    "Сохранить",
                    style: TextStyle(color: AppColors.activeColor),
                  ).paddingSymmetric(vertical: 8),
                ),
              ),
            ),
          ],
        ).paddingOnly(bottom: 12, left: 6, right: 6)
      ],
      content: Container(
        height: 80,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColors.darkBackGroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isMora) cupicker(a1Controller),
            if (isMora) cupicker(a2Controller),
            if (isMora) cupicker(a3Controller),
            if (isMora) cupicker(a4Controller),
            if (isMora) cupicker(a5Controller),
            cupicker(a6Controller),
            cupicker(a7Controller),
            cupicker(a8Controller),
            cupicker(a9Controller),
          ],
        ).paddingSymmetric(horizontal: 8),
      ),
    );
  }

  Widget cupicker(FixedExtentScrollController controller) {
    return Expanded(
      child: CupertinoPicker(
        selectionOverlay: Container(
          decoration: BoxDecoration(
              color: AppColors.deActiveColor.withOpacity(0.4),
              borderRadius: const BorderRadius.all(Radius.circular(6))),
        ).paddingAll(2),
        magnification: 1.2,
        backgroundColor: const Color(0x00000000),
        scrollController: controller,
        itemExtent: 26,
        onSelectedItemChanged: (int value) {},
        children: [
          ...List<int>.generate(10, (index) => index).map(
            (e) => Text(
              "$e",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  void onTap(int i) {
    int limit = isMora ? 999999999 : 9999;
    if (counter.value + i <= limit && counter.value + i >= 0) {
      counter.value += i;
    } else if (counter.value + i > limit) {
      counter.value = limit;
    } else if (counter.value + i < 0) {
      counter.value = 0;
    }
  }

  Widget buildButton(bool isAdd, Function onTap) {
    return InkWell(
        onTap: () => onTap(),
        child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: AppColors.darkBackGroundColor,
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Icon(
              isAdd ? Iconsax.add_circle : Iconsax.minus_cirlce,
              color: Colors.white,
            ).paddingAll(4)));
  }
}
