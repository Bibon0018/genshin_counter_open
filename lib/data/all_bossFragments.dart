import 'dart:convert';

import 'package:genshin_counter/models/fragments.dart';
import 'package:genshin_counter/resourses/images/boss_fragment_image.dart';

class AllBossFragment {
  Fragments tailOfBoreas;
  Fragments ringOfBoreas;
  Fragments spiritLocketOfBoreas;
  Fragments dvalinPlume;
  Fragments dvalinClaw;
  Fragments dvalinSigh;
  Fragments tuskOfMonocerosCaeli;
  Fragments shardFoulLegacy;
  Fragments shadowOfTheWarrior;
  Fragments dragonLordCrown;
  Fragments bloodJadeBranch;
  Fragments gildedScale;
  Fragments moltenMoment;
  Fragments hellfireButterfly;
  Fragments ashenHeart;
  Fragments mudraOfTheMaleficGeneral;
  Fragments tearsOfTheCalamitousGod;
  Fragments theMeaningOfAeons;
  Fragments puppetStrings;
  Fragments mirrorOfMushin;
  Fragments dakaBell;
  AllBossFragment({
    required this.tailOfBoreas,
    required this.ringOfBoreas,
    required this.spiritLocketOfBoreas,
    required this.dvalinPlume,
    required this.dvalinClaw,
    required this.dvalinSigh,
    required this.tuskOfMonocerosCaeli,
    required this.shardFoulLegacy,
    required this.shadowOfTheWarrior,
    required this.dragonLordCrown,
    required this.bloodJadeBranch,
    required this.gildedScale,
    required this.moltenMoment,
    required this.hellfireButterfly,
    required this.ashenHeart,
    required this.mudraOfTheMaleficGeneral,
    required this.tearsOfTheCalamitousGod,
    required this.theMeaningOfAeons,
    required this.puppetStrings,
    required this.mirrorOfMushin,
    required this.dakaBell,
  });

  List<Fragments> allBossFragment() {
    return [
      tailOfBoreas,
      ringOfBoreas,
      spiritLocketOfBoreas,
      dvalinPlume,
      dvalinClaw,
      dvalinSigh,
      tuskOfMonocerosCaeli,
      shardFoulLegacy,
      shadowOfTheWarrior,
      dragonLordCrown,
      bloodJadeBranch,
      gildedScale,
      moltenMoment,
      hellfireButterfly,
      ashenHeart,
      mudraOfTheMaleficGeneral,
      tearsOfTheCalamitousGod,
      theMeaningOfAeons,
      puppetStrings,
      mirrorOfMushin,
      dakaBell,
    ];
  }

  AllBossFragment copyWith({
    Fragments? tailOfBoreas,
    Fragments? ringOfBoreas,
    Fragments? spiritLocketOfBoreas,
    Fragments? dvalinPlume,
    Fragments? dvalinClaw,
    Fragments? dvalinSigh,
    Fragments? tuskOfMonocerosCaeli,
    Fragments? shardFoulLegacy,
    Fragments? shadowOfTheWarrior,
    Fragments? dragonLordCrown,
    Fragments? bloodJadeBranch,
    Fragments? gildedScale,
    Fragments? moltenMoment,
    Fragments? hellfireButterfly,
    Fragments? ashenHeart,
    Fragments? mudraOfTheMaleficGeneral,
    Fragments? tearsOfTheCalamitousGod,
    Fragments? theMeaningOfAeons,
    Fragments? puppetStrings,
    Fragments? mirrorOfMushin,
    Fragments? dakaBell,
  }) {
    return AllBossFragment(
      tailOfBoreas: tailOfBoreas ?? this.tailOfBoreas,
      ringOfBoreas: ringOfBoreas ?? this.ringOfBoreas,
      spiritLocketOfBoreas: spiritLocketOfBoreas ?? this.spiritLocketOfBoreas,
      dvalinPlume: dvalinPlume ?? this.dvalinPlume,
      dvalinClaw: dvalinClaw ?? this.dvalinClaw,
      dvalinSigh: dvalinSigh ?? this.dvalinSigh,
      tuskOfMonocerosCaeli: tuskOfMonocerosCaeli ?? this.tuskOfMonocerosCaeli,
      shardFoulLegacy: shardFoulLegacy ?? this.shardFoulLegacy,
      shadowOfTheWarrior: shadowOfTheWarrior ?? this.shadowOfTheWarrior,
      dragonLordCrown: dragonLordCrown ?? this.dragonLordCrown,
      bloodJadeBranch: bloodJadeBranch ?? this.bloodJadeBranch,
      gildedScale: gildedScale ?? this.gildedScale,
      moltenMoment: moltenMoment ?? this.moltenMoment,
      hellfireButterfly: hellfireButterfly ?? this.hellfireButterfly,
      ashenHeart: ashenHeart ?? this.ashenHeart,
      mudraOfTheMaleficGeneral:
          mudraOfTheMaleficGeneral ?? this.mudraOfTheMaleficGeneral,
      tearsOfTheCalamitousGod:
          tearsOfTheCalamitousGod ?? this.tearsOfTheCalamitousGod,
      theMeaningOfAeons: theMeaningOfAeons ?? this.theMeaningOfAeons,
      puppetStrings: puppetStrings ?? this.puppetStrings,
      mirrorOfMushin: mirrorOfMushin ?? this.mirrorOfMushin,
      dakaBell: dakaBell ?? this.dakaBell,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'tailOfBoreas': tailOfBoreas.toMap()});
    result.addAll({'ringOfBoreas': ringOfBoreas.toMap()});
    result.addAll({'spiritLocketOfBoreas': spiritLocketOfBoreas.toMap()});
    result.addAll({'dvalinPlume': dvalinPlume.toMap()});
    result.addAll({'dvalinClaw': dvalinClaw.toMap()});
    result.addAll({'dvalinSigh': dvalinSigh.toMap()});
    result.addAll({'tuskOfMonocerosCaeli': tuskOfMonocerosCaeli.toMap()});
    result.addAll({'shardFoulLegacy': shardFoulLegacy.toMap()});
    result.addAll({'shadowOfTheWarrior': shadowOfTheWarrior.toMap()});
    result.addAll({'dragonLordCrown': dragonLordCrown.toMap()});
    result.addAll({'bloodJadeBranch': bloodJadeBranch.toMap()});
    result.addAll({'gildedScale': gildedScale.toMap()});
    result.addAll({'moltenMoment': moltenMoment.toMap()});
    result.addAll({'hellfireButterfly': hellfireButterfly.toMap()});
    result.addAll({'ashenHeart': ashenHeart.toMap()});
    result
        .addAll({'mudraOfTheMaleficGeneral': mudraOfTheMaleficGeneral.toMap()});
    result.addAll({'tearsOfTheCalamitousGod': tearsOfTheCalamitousGod.toMap()});
    result.addAll({'theMeaningOfAeons': theMeaningOfAeons.toMap()});
    result.addAll({'puppetStrings': puppetStrings.toMap()});
    result.addAll({'mirrorOfMushin': mirrorOfMushin.toMap()});
    result.addAll({'dakaBell': dakaBell.toMap()});

    return result;
  }

  factory AllBossFragment.fromMap(Map<String, dynamic> map) {
    return AllBossFragment(
      tailOfBoreas: Fragments.fromMap(map['tailOfBoreas']),
      ringOfBoreas: Fragments.fromMap(map['ringOfBoreas']),
      spiritLocketOfBoreas: Fragments.fromMap(map['spiritLocketOfBoreas']),
      dvalinPlume: Fragments.fromMap(map['dvalinPlume']),
      dvalinClaw: Fragments.fromMap(map['dvalinClaw']),
      dvalinSigh: Fragments.fromMap(map['dvalinSigh']),
      tuskOfMonocerosCaeli: Fragments.fromMap(map['tuskOfMonocerosCaeli']),
      shardFoulLegacy: Fragments.fromMap(map['shardFoulLegacy']),
      shadowOfTheWarrior: Fragments.fromMap(map['shadowOfTheWarrior']),
      dragonLordCrown: Fragments.fromMap(map['dragonLordCrown']),
      bloodJadeBranch: Fragments.fromMap(map['bloodJadeBranch']),
      gildedScale: Fragments.fromMap(map['gildedScale']),
      moltenMoment: Fragments.fromMap(map['moltenMoment']),
      hellfireButterfly: Fragments.fromMap(map['hellfireButterfly']),
      ashenHeart: Fragments.fromMap(map['ashenHeart']),
      mudraOfTheMaleficGeneral:
          Fragments.fromMap(map['mudraOfTheMaleficGeneral']),
      tearsOfTheCalamitousGod:
          Fragments.fromMap(map['tearsOfTheCalamitousGod']),
      theMeaningOfAeons: Fragments.fromMap(map['theMeaningOfAeons']),
      puppetStrings: Fragments.fromMap(map['puppetStrings']),
      mirrorOfMushin: Fragments.fromMap(map['mirrorOfMushin']),
      dakaBell: Fragments.fromMap(map['dakaBell']),
    );
  }

  String toJson() => json.encode(toMap());

  factory AllBossFragment.fromJson(String source) =>
      AllBossFragment.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AllBossFragment(tailOfBoreas: $tailOfBoreas, ringOfBoreas: $ringOfBoreas, spiritLocketOfBoreas: $spiritLocketOfBoreas, dvalinPlume: $dvalinPlume, dvalinClaw: $dvalinClaw, dvalinSigh: $dvalinSigh, tuskOfMonocerosCaeli: $tuskOfMonocerosCaeli, shardFoulLegacy: $shardFoulLegacy, shadowOfTheWarrior: $shadowOfTheWarrior, dragonLordCrown: $dragonLordCrown, bloodJadeBranch: $bloodJadeBranch, gildedScale: $gildedScale, moltenMoment: $moltenMoment, hellfireButterfly: $hellfireButterfly, ashenHeart: $ashenHeart, mudraOfTheMaleficGeneral: $mudraOfTheMaleficGeneral, tearsOfTheCalamitousGod: $tearsOfTheCalamitousGod, theMeaningOfAeons: $theMeaningOfAeons, puppetStrings: $puppetStrings, mirrorOfMushin: $mirrorOfMushin, dakaBell: $dakaBell)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AllBossFragment &&
        other.tailOfBoreas == tailOfBoreas &&
        other.ringOfBoreas == ringOfBoreas &&
        other.spiritLocketOfBoreas == spiritLocketOfBoreas &&
        other.dvalinPlume == dvalinPlume &&
        other.dvalinClaw == dvalinClaw &&
        other.dvalinSigh == dvalinSigh &&
        other.tuskOfMonocerosCaeli == tuskOfMonocerosCaeli &&
        other.shardFoulLegacy == shardFoulLegacy &&
        other.shadowOfTheWarrior == shadowOfTheWarrior &&
        other.dragonLordCrown == dragonLordCrown &&
        other.bloodJadeBranch == bloodJadeBranch &&
        other.gildedScale == gildedScale &&
        other.moltenMoment == moltenMoment &&
        other.hellfireButterfly == hellfireButterfly &&
        other.ashenHeart == ashenHeart &&
        other.mudraOfTheMaleficGeneral == mudraOfTheMaleficGeneral &&
        other.tearsOfTheCalamitousGod == tearsOfTheCalamitousGod &&
        other.theMeaningOfAeons == theMeaningOfAeons &&
        other.puppetStrings == puppetStrings &&
        other.mirrorOfMushin == mirrorOfMushin &&
        other.dakaBell == dakaBell;
  }

  @override
  int get hashCode {
    return tailOfBoreas.hashCode ^
        ringOfBoreas.hashCode ^
        spiritLocketOfBoreas.hashCode ^
        dvalinPlume.hashCode ^
        dvalinClaw.hashCode ^
        dvalinSigh.hashCode ^
        tuskOfMonocerosCaeli.hashCode ^
        shardFoulLegacy.hashCode ^
        shadowOfTheWarrior.hashCode ^
        dragonLordCrown.hashCode ^
        bloodJadeBranch.hashCode ^
        gildedScale.hashCode ^
        moltenMoment.hashCode ^
        hellfireButterfly.hashCode ^
        ashenHeart.hashCode ^
        mudraOfTheMaleficGeneral.hashCode ^
        tearsOfTheCalamitousGod.hashCode ^
        theMeaningOfAeons.hashCode ^
        puppetStrings.hashCode ^
        mirrorOfMushin.hashCode ^
        dakaBell.hashCode;
  }
}

AllBossFragment allBossFragment = AllBossFragment(
  tailOfBoreas: Fragments(
      name: "Хвост Борея", imagePath: BossFragmentImage.tailOfBoreas, count: 0),
  ringOfBoreas: Fragments(
      name: "Кольцо Борея", imagePath: BossFragmentImage.ringOfBoreas, count: 0),
  spiritLocketOfBoreas: Fragments(
      name: "Шкатулка с духом Борея",
      imagePath: BossFragmentImage.spiritLocketOfBoreas,
      count: 0),
  dvalinPlume: Fragments(
      name: "Перо из хвоста Двалина",
      imagePath: BossFragmentImage.dvalinPlume,
      count: 0),
  dvalinClaw: Fragments(
      name: "Коготь Двалина", imagePath: BossFragmentImage.dvalinClaw, count: 0),
  dvalinSigh: Fragments(
      name: "Вздох Двалина", imagePath: BossFragmentImage.dvalinSigh, count: 0),
  tuskOfMonocerosCaeli: Fragments(
      name: "Рог небесного кита",
      imagePath: BossFragmentImage.tuskOfMonocerosCaeli,
      count: 0),
  shardFoulLegacy: Fragments(
      name: "Осколок дьявольского меча",
      imagePath: BossFragmentImage.shardFoulLegacy,
      count: 0),
  shadowOfTheWarrior: Fragments(
      name: "Тень воина", imagePath: BossFragmentImage.shadowOfTheWarrior, count: 0),
  dragonLordCrown: Fragments(
      name: "Корона лорда драконов",
      imagePath: BossFragmentImage.dragonLordCrown,
      count: 0),
  bloodJadeBranch: Fragments(
      name: "Ветвь кровавой яшмы",
      imagePath: BossFragmentImage.bloodJadeBranch,
      count: 0),
  gildedScale: Fragments(
      name: "Позолоченная чешуя", imagePath: BossFragmentImage.gildedScale, count: 0),
  moltenMoment: Fragments(
      name: "Расплавленный миг", imagePath: BossFragmentImage.moltenMoment, count: 0),
  hellfireButterfly: Fragments(
      name: "Бабочка адского пламени",
      imagePath: BossFragmentImage.hellfireButterfly,
      count: 0),
  ashenHeart: Fragments(
      name: "Пепельное сердце", imagePath: BossFragmentImage.ashenHeart, count: 0),
  mudraOfTheMaleficGeneral: Fragments(
      name: "Мудра зловещего генерала",
      imagePath: BossFragmentImage.mudraOfTheMaleficGeneral,
      count: 0),
  tearsOfTheCalamitousGod: Fragments(
      name: "Слёзы очищения божества бедствий",
      imagePath: BossFragmentImage.tearsOfTheCalamitousGod,
      count: 0),
  theMeaningOfAeons: Fragments(
      name: "Смысл эонов", imagePath: BossFragmentImage.theMeaningOfAeons, count: 0),
  puppetStrings: Fragments(
      name: "Нити марионетки", imagePath: BossFragmentImage.puppetStrings, count: 0),
  mirrorOfMushin: Fragments(
      name: "Зеркало Мусин", imagePath: BossFragmentImage.mirrorOfMushin, count: 0),
  dakaBell: Fragments(
      name: "Пустой колокольчик", imagePath: BossFragmentImage.dakaBell, count: 0),
);
