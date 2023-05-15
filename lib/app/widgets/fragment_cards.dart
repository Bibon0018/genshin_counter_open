// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FragmentCard extends StatelessWidget {
  String title;
  String imagePath;
  Function()? onTap;
  String backgroundImage;
  bool isButton;
  Function? minus;
  Function? onEdit;
  int counter;
  FragmentCard({
    Key? key,
    required this.title,
    required this.imagePath,
    this.onTap,
    required this.backgroundImage,
    this.counter = 0,
    this.isButton = false,
    this.minus,
    this.onEdit,
  }) : super(key: key);
  void voidF() {}
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(backgroundImage)),
            borderRadius: const BorderRadius.all(Radius.circular(12))),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          InkWell(
            onTap: onTap,
            child: Image.asset(imagePath),
          ),
          isButton
              ? Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12)),
                    color: AppColors.deActiveColor.withOpacity(0.5),
                  ),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => minus!(),
                          child: const Icon(
                            Iconsax.minus_square,
                            size: 20,
                            color: Colors.white,
                          ).paddingSymmetric(vertical: 2),
                        ),
                        Text(
                          counter.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: counter > 999999 ? 10 : 16),
                        ),
                        InkWell(
                            onTap: () => onEdit!(),
                            child: const Icon(
                              Iconsax.edit,
                              size: 20,
                              color: Colors.white,
                            ).paddingSymmetric(vertical: 2))
                      ],
                    ).paddingSymmetric(horizontal: 4),
                  ]))
              : Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12)),
                    color: AppColors.deActiveColor.withOpacity(0.5),
                  ),
                  child: Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                  ).paddingOnly(left: 2)),
        ]));
  }
}
