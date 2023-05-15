import 'package:flutter/material.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:get/get.dart';
import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.darkBackGroundColor,
        title: const Text('Настройки'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _buildButton(
            title: "Экспорт",
            onTap: () async => controller.shareSettings(),
          ),
          _buildButton(
            title: "Импорт",
            onTap: () async => controller.setSettings(),
          ),
        ],
      ).paddingAll(16),
    );
  }

  Widget _buildButton({required String title, required Function() onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.deActiveColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              12,
            ),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    ).paddingOnly(bottom: 16);
  }
}
