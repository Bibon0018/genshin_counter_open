import 'package:flutter/material.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:get/get.dart';
import 'package:super_tooltip_ext/super_tooltip.dart';

SuperTooltip customTooltip(List<Widget> children) {
  return SuperTooltip(
    popupDirection: TooltipDirection.up,
    backgroundColor: AppColors.backGroundColor,
    borderColor: AppColors.activeColor,
    targetMode: TargetMode.center,
    arrowBaseWidth: 0,
    arrowLength: 0,
    content: Material(
      color: AppColors.backGroundColor,
      child: children.isEmpty
          ? const Text(
              "Нет героев нуждающихся в данных материалах",
              maxLines: 3,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ).paddingAll(5)
          : SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: children),
            ),
    ),
  );
}

SuperTooltip helperTooltip(List<String> children) {
  return SuperTooltip(
    popupDirection: TooltipDirection.up,
    backgroundColor: AppColors.backGroundColor,
    borderColor: AppColors.activeColor,
    targetMode: TargetMode.center,
    arrowBaseWidth: 0,
    arrowLength: 0,
    content: Material(
      color: AppColors.backGroundColor,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 16,
            ),
            ...children
                .map((e) => Image.asset(e, height: 60).paddingOnly(right: 16))
          ],
        ),
      ),
    ),
  );
}
