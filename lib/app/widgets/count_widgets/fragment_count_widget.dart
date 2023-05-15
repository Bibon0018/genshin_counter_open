import 'package:auto_size_text/auto_size_text.dart';
import 'package:genshin_counter/resourses/images/hero_image.dart';
import 'package:super_tooltip_ext/super_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:genshin_counter/app/widgets/fragment_cards.dart';
import 'package:genshin_counter/models/fragments.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:get/get.dart';

class FragmentCountWidget extends StatelessWidget {
  final Fragments data;
  final int have;
  final String backgroundImage;
  final String image;
  final Function()? onTap;
  FragmentCountWidget({
    Key? key,
    required this.data,
    required this.backgroundImage,
    required this.have,
    required this.onTap,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.darkBackGroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onLongPress: onTap,
            child: FragmentCard(
              title: data.name,
              imagePath: image,
              backgroundImage: backgroundImage,
              isButton: false,
              // onTap: onTap,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          if (data.count - have < 0)
            _buildParameter("Излишек: ${(data.count - have) * -1}",
                color: Colors.green),
          if (data.count - have >= 0)
            _buildParameter(
              "Осталось: ${data.count - have}",
            ),
          _buildParameter(
            "Собранно: ${have}",
          ),
          _buildParameter(
            "Нужно: ${data.count}",
          ),
          const SizedBox(
            height: 2,
          ),
        ],
      ),
    );
  }

  Widget _buildParameter(String title, {Color? color}) {
    return AutoSizeText(
      title,
      minFontSize: 1,
      maxLines: 1,
      style: TextStyle(
        color: color ?? Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
    ).paddingSymmetric(vertical: 2).paddingOnly(left: 4);
  }
}
