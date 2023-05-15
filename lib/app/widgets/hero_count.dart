import 'package:flutter/material.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:get/get.dart';

class HeroCount extends StatelessWidget {
  String imagePath;
  int count;
  HeroCount({
    Key? key,
    required this.imagePath,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              imagePath,
              height: 60,
            ),
            Text(
              count.toString(),
              style: TextStyle(color: AppColors.activeColor, fontSize: 22),
            ),
          ],
        ).paddingSymmetric(horizontal: 8));
  }
}
