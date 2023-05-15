// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:get/get.dart';

class HeroSettings {
  final RxInt currentStars = 0.obs;
  final RxInt targetStars = 0.obs;
  final RxInt currentLevel = 1.obs;
  final RxInt targetLevel = 1.obs;
  final RxInt talent1Level = 1.obs;
  final RxInt targetTalent1Level = 1.obs;
  final RxInt talent2Level = 1.obs;
  final RxInt targetTalent2Level = 1.obs;
  final RxInt talent3Level = 1.obs;
  final RxInt targetTalent3Level = 1.obs;
}
