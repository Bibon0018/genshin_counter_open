// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:get/get.dart';

import 'package:genshin_counter/data/all_elementaryFragments.dart';
import 'package:genshin_counter/data/all_mob_fragments.dart';
import 'package:genshin_counter/models/fragments.dart';
import 'package:genshin_counter/models/talant_fragments.dart';

enum HeroesWepons { sword, bow, claymore, catalyst, polearm }

class Hero {
  String name;
  String imagePath;
  bool isLegend;
  bool isHave;
  bool isComplete;
  int currentStars;
  int targetStars;
  int currentLevel;
  int targetLevel;
  int talent1Level;
  int targetTalent1Level;
  int talent2Level;
  int targetTalent2Level;
  int talent3Level;
  int targetTalent3Level;
  Fragments bossMaterial;
  Fragments bossFragment;
  ElementaryFragment elementary;
  TalentsFragments talentsFragments;
  MobFragments mobFragments;
  Fragments specialties;
  final HeroesWepons weapon;
  Hero({
    required this.name,
    required this.imagePath,
    required this.isLegend,
    this.isHave = false,
    this.isComplete = false,
    this.currentStars = 0,
    this.targetStars = 0,
    this.currentLevel = 1,
    this.targetLevel = 0,
    this.talent1Level = 1,
    this.targetTalent1Level = 1,
    this.talent2Level = 1,
    this.targetTalent2Level = 1,
    this.talent3Level = 1,
    this.targetTalent3Level = 1,
    required this.bossMaterial,
    required this.bossFragment,
    required this.elementary,
    required this.talentsFragments,
    required this.mobFragments,
    required this.specialties,
    required this.weapon,
  });
  RxInt get currentStarsRx => currentStars.obs;
  RxInt get targetStarsRx => targetStars.obs;
  RxInt get currentLevelRx => currentLevel.obs;
  RxInt get targetLevelRx => targetLevel.obs;
  RxInt get talent1LevelRx => talent1Level.obs;
  RxInt get targetTalent1LevelRx => targetTalent1Level.obs;
  RxInt get talent2LevelRx => talent2Level.obs;
  RxInt get targetTalent2LevelRx => targetTalent2Level.obs;
  RxInt get talent3LevelRx => talent3Level.obs;
  RxInt get targetTalent3LevelRx => targetTalent3Level.obs;

  List<TalentLevels> talentLevels() {
    return [
      TalentLevels(
        current: talent1Level,
        target: targetTalent1Level,
      ),
      TalentLevels(
        current: talent2Level,
        target: targetTalent2Level,
      ),
      TalentLevels(
        current: talent3Level,
        target: targetTalent3Level,
      )
    ];
  }

  Hero copyWith({
    String? name,
    String? imagePath,
    bool? isLegend,
    bool? isHave,
    bool? isComplete,
    int? currentStars,
    int? targetStars,
    int? currentLevel,
    int? targetLevel,
    int? talent1Level,
    int? targetTalent1Level,
    int? talent2Level,
    int? targetTalent2Level,
    int? talent3Level,
    int? targetTalent3Level,
    Fragments? bossMaterial,
    Fragments? bossFragment,
    ElementaryFragment? elementary,
    TalentsFragments? talentsFragments,
    MobFragments? mobFragments,
    Fragments? specialties,
    HeroesWepons? weapon,
  }) {
    return Hero(
      name: name ?? this.name,
      imagePath: imagePath ?? this.imagePath,
      isLegend: isLegend ?? this.isLegend,
      isHave: isHave ?? this.isHave,
      isComplete: isComplete ?? this.isComplete,
      currentStars: currentStars ?? this.currentStars,
      targetStars: targetStars ?? this.targetStars,
      currentLevel: currentLevel ?? this.currentLevel,
      targetLevel: targetLevel ?? this.targetLevel,
      talent1Level: talent1Level ?? this.talent1Level,
      targetTalent1Level: targetTalent1Level ?? this.targetTalent1Level,
      talent2Level: talent2Level ?? this.talent2Level,
      targetTalent2Level: targetTalent2Level ?? this.targetTalent2Level,
      talent3Level: talent3Level ?? this.talent3Level,
      targetTalent3Level: targetTalent3Level ?? this.targetTalent3Level,
      bossMaterial: bossMaterial ?? this.bossMaterial,
      bossFragment: bossFragment ?? this.bossFragment,
      elementary: elementary ?? this.elementary,
      talentsFragments: talentsFragments ?? this.talentsFragments,
      mobFragments: mobFragments ?? this.mobFragments,
      specialties: specialties ?? this.specialties,
      weapon: weapon ?? this.weapon,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'imagePath': imagePath,
      'isLegend': isLegend,
      'isHave': isHave,
      'isComplete': isComplete,
      'currentStars': currentStars,
      'targetStars': targetStars,
      'currentLevel': currentLevel,
      'targetLevel': targetLevel,
      'talent1Level': talent1Level,
      'targetTalent1Level': targetTalent1Level,
      'talent2Level': talent2Level,
      'targetTalent2Level': targetTalent2Level,
      'talent3Level': talent3Level,
      'targetTalent3Level': targetTalent3Level,
      'bossMaterial': bossMaterial.toMap(),
      'bossFragment': bossFragment.toMap(),
      'elementary': elementary.toMap(),
      'talentsFragments': talentsFragments.toMap(),
      'mobFragments': mobFragments.toMap(),
      'specialties': specialties.toMap(),
      'weapon': weapon.name,
    };
  }

  factory Hero.fromMap(Map<String, dynamic> map) {
    return Hero(
      name: map['name'] as String,
      imagePath: map['imagePath'] as String,
      isLegend: map['isLegend'] as bool,
      isHave: map['isHave'] as bool,
      isComplete: map['isComplete'] as bool,
      currentStars: map['currentStars'] as int,
      targetStars: map['targetStars'] as int,
      currentLevel: map['currentLevel'] as int,
      targetLevel: map['targetLevel'] as int,
      talent1Level: map['talent1Level'] as int,
      targetTalent1Level: map['targetTalent1Level'] as int,
      talent2Level: map['talent2Level'] as int,
      targetTalent2Level: map['targetTalent2Level'] as int,
      talent3Level: map['talent3Level'] as int,
      targetTalent3Level: map['targetTalent3Level'] as int,
      bossMaterial:
          Fragments.fromMap(map['bossMaterial'] as Map<String, dynamic>),
      bossFragment:
          Fragments.fromMap(map['bossFragment'] as Map<String, dynamic>),
      elementary:
          ElementaryFragment.fromMap(map['elementary'] as Map<String, dynamic>),
      talentsFragments: TalentsFragments.fromMap(
          map['talentsFragments'] as Map<String, dynamic>),
      mobFragments:
          MobFragments.fromMap(map['mobFragments'] as Map<String, dynamic>),
      specialties:
          Fragments.fromMap(map['specialties'] as Map<String, dynamic>),
      weapon: HeroesWepons.values
              .where((element) => element.name == map['weapon'])
              .toList()
              .isNotEmpty
          ? HeroesWepons.values
              .where((element) => element.name == map['weapon'])
              .toList()
              .first
          : HeroesWepons.bow,
    );
  }

  String toJson() => json.encode(toMap());

  factory Hero.fromJson(String source) =>
      Hero.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Hero(name: $name, imagePath: $imagePath, isLegend: $isLegend, isHave: $isHave, isComplete: $isComplete, currentStars: $currentStars, targetStars: $targetStars, currentLevel: $currentLevel, targetLevel: $targetLevel, talent1Level: $talent1Level, targetTalent1Level: $targetTalent1Level, talent2Level: $talent2Level, targetTalent2Level: $targetTalent2Level, talent3Level: $talent3Level, targetTalent3Level: $targetTalent3Level, bossMaterial: $bossMaterial, bossFragment: $bossFragment, elementary: $elementary, talentsFragments: $talentsFragments, mobFragments: $mobFragments, specialties: $specialties, weapon: $weapon)';
  }

  @override
  bool operator ==(covariant Hero other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.imagePath == imagePath &&
        other.isLegend == isLegend &&
        other.isHave == isHave &&
        other.isComplete == isComplete &&
        other.currentStars == currentStars &&
        other.targetStars == targetStars &&
        other.currentLevel == currentLevel &&
        other.targetLevel == targetLevel &&
        other.talent1Level == talent1Level &&
        other.targetTalent1Level == targetTalent1Level &&
        other.talent2Level == talent2Level &&
        other.targetTalent2Level == targetTalent2Level &&
        other.talent3Level == talent3Level &&
        other.targetTalent3Level == targetTalent3Level &&
        other.bossMaterial == bossMaterial &&
        other.bossFragment == bossFragment &&
        other.elementary == elementary &&
        other.talentsFragments == talentsFragments &&
        other.mobFragments == mobFragments &&
        other.specialties == specialties &&
        other.weapon == weapon;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        imagePath.hashCode ^
        isLegend.hashCode ^
        isHave.hashCode ^
        isComplete.hashCode ^
        currentStars.hashCode ^
        targetStars.hashCode ^
        currentLevel.hashCode ^
        targetLevel.hashCode ^
        talent1Level.hashCode ^
        targetTalent1Level.hashCode ^
        talent2Level.hashCode ^
        targetTalent2Level.hashCode ^
        talent3Level.hashCode ^
        targetTalent3Level.hashCode ^
        bossMaterial.hashCode ^
        bossFragment.hashCode ^
        elementary.hashCode ^
        talentsFragments.hashCode ^
        mobFragments.hashCode ^
        specialties.hashCode ^
        weapon.hashCode;
  }
}

class TalentLevels {
  int current;
  int target;
  TalentLevels({
    required this.current,
    required this.target,
  });
}
