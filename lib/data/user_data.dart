// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:genshin_counter/models/all_exp.dart';
import 'package:genshin_counter/resourses/images/currency.dart';
import 'package:get/state_manager.dart';

import 'package:genshin_counter/data/all_BossMaterial.dart';
import 'package:genshin_counter/data/all_bossFragments.dart';
import 'package:genshin_counter/data/all_elementaryFragments.dart';
import 'package:genshin_counter/data/all_heroes.dart';
import 'package:genshin_counter/data/all_mob_fragments.dart';
import 'package:genshin_counter/data/all_specialties.dart';
import 'package:genshin_counter/data/all_talentFragments.dart';
import 'package:genshin_counter/models/currency_fragment.dart';
import 'package:genshin_counter/models/fragments.dart';
import 'package:genshin_counter/models/hero.dart';
import 'package:genshin_counter/models/talant_fragments.dart';
import 'package:genshin_counter/resourses/images/boss_fragment_image.dart';
import 'package:genshin_counter/resourses/images/boss_material_image.dart';
import 'package:genshin_counter/resourses/images/elementary_fragments_image.dart';
import 'package:genshin_counter/resourses/images/hero_image.dart';
import 'package:genshin_counter/resourses/images/mob_fragments_image.dart';
import 'package:genshin_counter/resourses/images/specialties_image.dart';
import 'package:genshin_counter/resourses/images/talent_images.dart';

class UserData {
  AllBossFragment bossFragment;
  AllBossMaterial bossMaterial;
  AllHeroes heroes;
  AllTalentsFragments talentsFragments;
  AllSpecialties specialties;
  AllElementaryFragments elementaryFragment;
  AllMobFragments mobFragments;
  CurrencyFragment currencyFragment;
  UserData({
    required this.bossFragment,
    required this.bossMaterial,
    required this.heroes,
    required this.talentsFragments,
    required this.specialties,
    required this.elementaryFragment,
    required this.mobFragments,
    required this.currencyFragment,
  });

  UserData copyWith({
    AllBossFragment? bossFragment,
    AllBossMaterial? bossMaterial,
    AllHeroes? heroes,
    AllTalentsFragments? talentsFragments,
    AllSpecialties? specialties,
    AllElementaryFragments? elementaryFragment,
    AllMobFragments? mobFragments,
    CurrencyFragment? currencyFragment,
  }) {
    return UserData(
      bossFragment: bossFragment ?? this.bossFragment,
      bossMaterial: bossMaterial ?? this.bossMaterial,
      heroes: heroes ?? this.heroes,
      talentsFragments: talentsFragments ?? this.talentsFragments,
      specialties: specialties ?? this.specialties,
      elementaryFragment: elementaryFragment ?? this.elementaryFragment,
      mobFragments: mobFragments ?? this.mobFragments,
      currencyFragment: currencyFragment ?? this.currencyFragment,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bossFragment': bossFragment.toMap(),
      'bossMaterial': bossMaterial.toMap(),
      'heroes': heroes.toMap(),
      'talentsFragments': talentsFragments.toMap(),
      'specialties': specialties.toMap(),
      'elementaryFragment': elementaryFragment.toMap(),
      'mobFragments': mobFragments.toMap(),
      'currencyFragment': currencyFragment.toMap(),
    };
  }

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
      bossFragment:
          AllBossFragment.fromMap(map['bossFragment'] as Map<String, dynamic>),
      bossMaterial:
          AllBossMaterial.fromMap(map['bossMaterial'] as Map<String, dynamic>),
      heroes: AllHeroes.fromMap(map['heroes'] as Map<String, dynamic>),
      talentsFragments: AllTalentsFragments.fromMap(
          map['talentsFragments'] as Map<String, dynamic>),
      specialties:
          AllSpecialties.fromMap(map['specialties'] as Map<String, dynamic>),
      elementaryFragment: AllElementaryFragments.fromMap(
          map['elementaryFragment'] as Map<String, dynamic>),
      mobFragments:
          AllMobFragments.fromMap(map['mobFragments'] as Map<String, dynamic>),
      currencyFragment: CurrencyFragment.fromMap(
          map['currencyFragment'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserData.fromJson(String source) =>
      UserData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserData(bossFragment: $bossFragment, bossMaterial: $bossMaterial, heroes: $heroes, talentsFragments: $talentsFragments, specialties: $specialties, elementaryFragment: $elementaryFragment, mobFragments: $mobFragments, currencyFragment: $currencyFragment)';
  }

  @override
  bool operator ==(covariant UserData other) {
    if (identical(this, other)) return true;

    return other.bossFragment == bossFragment &&
        other.bossMaterial == bossMaterial &&
        other.heroes == heroes &&
        other.talentsFragments == talentsFragments &&
        other.specialties == specialties &&
        other.elementaryFragment == elementaryFragment &&
        other.mobFragments == mobFragments &&
        other.currencyFragment == currencyFragment;
  }

  @override
  int get hashCode {
    return bossFragment.hashCode ^
        bossMaterial.hashCode ^
        heroes.hashCode ^
        talentsFragments.hashCode ^
        specialties.hashCode ^
        elementaryFragment.hashCode ^
        mobFragments.hashCode ^
        currencyFragment.hashCode;
  }
}

Rx<UserData> userData = Rx<UserData>(baseData);

final baseData = UserData(
  currencyFragment: CurrencyFragment(
      name: "Универсальные материалы",
      allExp: AllExp(
        name: "Свитки опыта",
        lvl1: Fragments(
            name: "Опыт странника", imagePath: CurrencyImage.expLvl1, count: 0),
        lvl2: Fragments(
            name: "Опыт искателя приключений",
            imagePath: CurrencyImage.expLvl2,
            count: 0),
        lvl3: Fragments(
            name: "Опыт героя", imagePath: CurrencyImage.expLvl3, count: 0),
      ),
      crown: Fragments(
          name: "Корона прозрения", imagePath: CurrencyImage.crown, count: 0),
      mora: Fragments(name: "Мора", imagePath: CurrencyImage.mora, count: 0)),
  mobFragments: AllMobFragments(
      slime: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.slimeMaxLevel,
            name: "Слизь смайла"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.slimeSecretions,
            name: "Выделения слайма"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.slimeMinLevel,
            name: "Концентрат слайма"),
        name: "Слизь",
      ),
      hilichurlMasks: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.damagedMask,
            name: "Разбитая маска"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.stainedMask,
            name: "Грязная маска"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.ominousMask,
            name: "Зловещая маска"),
        name: "Маска хиличурла",
      ),
      samachurlScrolls: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.diviningScroll,
            name: "Свиток божественной магии"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.sealedScroll,
            name: "Свиток печати"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.forbiddenCurseScroll,
            name: "Свиток запретного проклятья"),
        name: "Свитки шамачурлов",
      ),
      hilichurlArrowheads: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.firmArrowhead,
            name: "Прочный наконечник стрелы"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.sharpArrowhead,
            name: "Острый наконечник стрелы"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.weatheredArrowhead,
            name: "Старый наконечник стрелы"),
        name: "Наконечники стрел",
      ),
      fatuiInsignia: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.recruitInsignia,
            name: "Шеврон рядового"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.sergeantInsignia,
            name: "Шеврон сержанта"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.lieutenantInsignia,
            name: "Шеврон офицера"),
        name: "Шевроны Фатуи",
      ),
      treasureHoarderInsignias: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.treasureHoarderInsignia,
            name: "Печать Похитителей сокровищ"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.silverRavenInsignia,
            name: "Печать серебряного ворона"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.goldenRavenInsignia,
            name: "Печать золотого ворона"),
        name: "Печати похитителей сокровищ",
      ),
      whopperflowerNectars: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.whopperflowerNectar,
            name: "Нектар попрыгуньи"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.shimmeringNectar,
            name: "Мерцающий нектар"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.energyNectar,
            name: "Элементальный нектар"),
        name: "Нектары попрыгуний",
      ),
      nobushiHandguards: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.oldHandguard,
            name: "Старая гарда"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.kageuchiHandguard,
            name: "Гарда кагэути"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.famedHandguard,
            name: "Прославленная гарда"),
        name: "Гарды Нобуси",
      ),
      spectralCores: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.spectralHusk,
            name: "Призрачная оболочка"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.spectralHeart,
            name: "Призрачное сердце"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.spectralNucleus,
            name: "Призрачное ядро"),
        name: "Призраки",
      ),
      fungalSporePowder: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.fungalSpores,
            name: "Споры плесенника"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.luminescentPollen,
            name: "Светящаяся пыльца"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.crystallineCystDust,
            name: "Пыль кристаллоцистов"),
        name: "Порошок плесенников",
      ),
      redCloth: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.fadedRedSatin,
            name: "Выцветший красный шёлк"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.trimmedRedSilk,
            name: "Окаймлённый красный шёлк"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.richRedBrocade,
            name: "Златотканый красный шёлк"),
        name: "красный шёлк",
      ),
      hilichurlHorns: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.heavyHorn,
            name: "Тяжёлый рог"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.blackBronzeHorn,
            name: "Чёрный бронзовый рог"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.blackCrystalHorn,
            name: "Чёрный кристаллический рог"),
        name: "Рога хиличурлов",
      ),
      leyLineBranches: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.deadLeyLineBranch,
            name: "Ветви артерий земли"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.deadLeyLineLeaves,
            name: "Листья артерий земли"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.leyLineSprout,
            name: "Ростки артерий земли"),
        name: "Артерии земли",
      ),
      chaosParts: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.chaosDevice,
            name: "Устройство хаоса"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.chaosCircuit,
            name: "Цепь хаоса"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.chaosCore,
            name: "Ядро хаоса"),
        name: "Части Хаоса",
      ),
      mistGrasses: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.mistGrassPollen,
            name: "Пыльца туманной травы"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.mistGrass,
            name: "Мешочек с туманной травой"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.mistGrassWick,
            name: "Пучок туманной травы"),
        name: "Туманный цветок",
      ),
      sacrificialKnives: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.hunterSacrificialKnife,
            name: "Церемониальный нож охотника"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.agentSacrificialKnife,
            name: "Церемониальный нож агента"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.inspectorSacrificialKnife,
            name: "Церемониальный нож инспектора"),
        name: "Ножи Фатуи",
      ),
      boneShards: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.fragileBoneShard,
            name: "Хрупкие останки"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.sturdyBoneShard,
            name: "Крепкие останки"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.fossilizedBoneShard,
            name: "Окаменевшие останки"),
        name: "Костянные останки",
      ),
      sentinelChaosParts: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.chaosGear,
            name: "Механизм хаоса"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.chaosAxis,
            name: "Ось хаоса"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.chaosOculus,
            name: "Око хаоса"),
        name: "Механизмы хаоса",
      ),
      mirrorMaidenPrisms: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.dismalPrism,
            name: "Тёмная призма"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.crystalPrism,
            name: "Кристальная призма"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.polarizingPrism,
            name: "Поляризационная призма"),
        name: "Призмы зеркальной девы",
      ),
      concealedRiftwolfClaws: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.concealedClaw,
            name: "Скрытый коготь"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.concealedUnguis,
            name: "Скрытый заточенный коготь"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.concealedTalon,
            name: "Скрытый дьявольский коготь"),
        name: "Скрытые когти",
      ),
      statuettes: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.gloomyStatuette,
            name: "Мрачная статуэтка"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.darkStatuette,
            name: "Тёмная статуэтка"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.deathlyStatuette,
            name: "Смертельная статуэтка"),
        name: "Статуэтки",
      ),
      fungalNuclei: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.inactivatedFungalNucleus,
            name: "Неактивное ядро плесенника"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.dormantFungalNucleus,
            name: "Спящее ядро плесенника"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.robustFungalNucleus,
            name: "Здоровое ядро плесенника"),
        name: "Ядра плесенников",
      ),
      drakeChaosParts: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.chaosStorage,
            name: "Сосуд хаоса"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.chaosModule,
            name: "Модуль хаоса"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.chaosBolt,
            name: "Анкер хаоса"),
        name: "Части дракона руин",
      ),
      primalConstructPrisms: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.damagedPrism,
            name: "Сломанная призма"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.turbidPrism,
            name: "Загрязнённая призма"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.radiantPrism,
            name: "Блестящая призма"),
        name: "Призмы первозданных конструкций",
      )),
  elementaryFragment: AllElementaryFragments(
      agnidus: ElementaryFragment(
          name: "Агат Агнидус",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.agnidusAgateSliver,
              name: "Осколок агата Агнидус"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.agnidusAgateFragment,
              name: "Фрагмент агата Агнидус"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.agnidusAgateChunk,
              name: "Кусок агата Агнидус"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.agnidusAgateGemstone,
              name: "Драгоценный агат Агнидус")),
      brilliant: ElementaryFragment(
          name: "Бриллиант",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.brilliantDiamondSliver,
              name: "Осколок бриллианта"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.brilliantDiamondFragment,
              name: "Фрагмент бриллианта"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.brilliantDiamondChunk,
              name: "Кусок бриллианта"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.brilliantDiamondGemstone,
              name: "Драгоценный бриллиант")),
      nagadus: ElementaryFragment(
          name: "Изумруд Нагадус",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.nagadusEmeraldSliver,
              name: "Осколок изумруда Нагадус"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.nagadusEmeraldFragment,
              name: "Фрагмент изумруда Нагадус"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.nagadusEmeraldChunk,
              name: "Кусок изумруда Нагадус"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.nagadusEmeraldGemstone,
              name: "Драгоценный изумруд Нагадус")),
      prithiva: ElementaryFragment(
          name: "Топаз Притхива",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.prithivaTopazSliver,
              name: "Осколок топаза Притхива"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.prithivaTopazFragment,
              name: "Фрагментa топаза Притхива"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.prithivaTopazChunk,
              name: "Кусок топаза Притхива"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.prithivaTopazGemstone,
              name: "Драгоценный топаз Притхива")),
      shivada: ElementaryFragment(
        name: "Нефрит Шивада",
        lvl1: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.shivadaJadeSliver,
            name: "Осколок нефрита Шивада"),
        lvl2: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.shivadaJadeFragment,
            name: "Фрагмент нефрита Шивада"),
        lvl3: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.shivadaJadeChunk,
            name: "Кусок нефрита Шивада"),
        lvl4: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.shivadaJadeGemstone,
            name: "Драгоценный нефрит Шивада"),
      ),
      vajrada: ElementaryFragment(
        name: "Аметист Ваджрада",
        lvl1: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.vajradaAmethystSliver,
            name: "Осколок аметиста Ваджрада"),
        lvl2: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.vajradaAmethystFragment,
            name: "Фрагмент аметиста Ваджрада"),
        lvl3: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.vajradaAmethystChunk,
            name: "Кусок аметиста Ваджрада"),
        lvl4: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.vajradaAmethystGemstone,
            name: "Драгоценный аметист Ваджрада"),
      ),
      varunada: ElementaryFragment(
        name: "Лазурит Варунада",
        lvl1: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.varunadaLazuriteSliver,
            name: "Осколок лазурита Варунада"),
        lvl2: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.varunadaLazuriteFragment,
            name: "Фрагментa лазурита Варунада"),
        lvl3: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.varunadaLazuriteChunk,
            name: "Кусок лазурита Варунада"),
        lvl4: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.varunadaLazuriteGemstone,
            name: "Драгоценный лазурит Варунада"),
      ),
      vayuda: ElementaryFragment(
        name: "Бирюза Вайюда",
        lvl1: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.vayudaTurquoiseSliver,
            name: "Осколок бирюзы Вайюда"),
        lvl2: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.vayudaTurquoiseFragment,
            name: "Фрагмент бирюзы Вайюда"),
        lvl3: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.vayudaTurquoiseChunk,
            name: "Кусок бирюзы Вайюда"),
        lvl4: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.vayudaTurquoiseGemstone,
            name: "Драгоценная бирюза Вайюда"),
      )),
  bossFragment: AllBossFragment(
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
  ),
  bossMaterial: AllBossMaterial(
    pseudoStamens: Fragments(
        name: "Псевдотычинки",
        imagePath: BossMaterialImage.pseudoStamens,
        count: 0),
    basaltPillar: Fragments(
        name: "Базальтовая Колонна",
        imagePath: BossMaterialImage.basalt_Pillar,
        count: 0),
    cleansingHeart: Fragments(
        name: "Очищающее сердце",
        imagePath: BossMaterialImage.cleansing_Heart,
        count: 0),
    crystallineBloom: Fragments(
        name: "Цветение кристалла",
        imagePath: BossMaterialImage.crystalline_Bloom,
        count: 0),
    dewOfRepudiation: Fragments(
        name: "Роса Отречения",
        imagePath: BossMaterialImage.dew_of_Repudiation,
        count: 0),
    dragonheirFalseFin: Fragments(
        name: "Ложный плавник Дракона глубин",
        imagePath: BossMaterialImage.dragonheir_False_Fin,
        count: 0),
    everflameSeed: Fragments(
        name: "Пылающее семя",
        imagePath: BossMaterialImage.everflame_Seed,
        count: 0),
    hoarfrostCore: Fragments(
        name: "Инеевое ядро",
        imagePath: BossMaterialImage.hoarfrost_Core,
        count: 0),
    hurricaneSeed: Fragments(
        name: "Семя урагана",
        imagePath: BossMaterialImage.hurricane_Seed,
        count: 0),
    juvenileJade: Fragments(
        name: "Незрелый хвост",
        imagePath: BossMaterialImage.juvenile_Jade,
        count: 0),
    lightningPrism: Fragments(
        name: "Призма молний",
        imagePath: BossMaterialImage.lightning_Prism,
        count: 0),
    lightGuidingTetrahedron: Fragments(
        name: "Светопроводящий тетраэдр",
        imagePath: BossMaterialImage.light_Guiding_Tetrahedron,
        count: 0),
    majesticHookedBeak: Fragments(
        name: "Клюв короля плеснеков",
        imagePath: BossMaterialImage.majestic_Hooked_Beak,
        count: 0),
    marionetteCore: Fragments(
        name: "Ядро марионетки",
        imagePath: BossMaterialImage.marionette_Core,
        count: 0),
    perpetualCaliber: Fragments(
        name: "Вечный механизм",
        imagePath: BossMaterialImage.perpetual_Caliber,
        count: 0),
    perpetualHeart: Fragments(
        name: "Сердце бесконечного механизма",
        imagePath: BossMaterialImage.perpetual_Heart,
        count: 0),
    quelledCreeper: Fragments(
        name: "Подавленная лоза",
        imagePath: BossMaterialImage.quelled_Creeper,
        count: 0),
    riftbornRegalia: Fragments(
        name: "Эмблема разрыва",
        imagePath: BossMaterialImage.riftborn_Regalia,
        count: 0),
    runicFang: Fragments(
        name: "Рунический клык",
        imagePath: BossMaterialImage.runic_Fang,
        count: 0),
    smolderingPearl: Fragments(
        name: "Тлеющая жемчужина",
        imagePath: BossMaterialImage.smoldering_Pearl,
        count: 0),
    stormBeads: Fragments(
        name: "Штормовой жемчуг",
        imagePath: BossMaterialImage.storm_Beads,
        count: 0),
    thunderclapFruitcore: Fragments(
        name: "Плод грома",
        imagePath: BossMaterialImage.thunderclap_Fruitcore,
        count: 0),
  ),
  heroes: AllHeroes(
    alhatham: Hero(
      weapon: HeroesWepons.sword,
      imagePath: HeroImage.alhathamThumb,
      name: "Аль-Хайтам",
      isHave: false,
      isLegend: true,
      bossMaterial: Fragments(
          name: "Псевдотычинки",
          imagePath: BossMaterialImage.pseudoStamens,
          count: 0),
      bossFragment: Fragments(
          name: "Зеркало Мусин", imagePath: BossFragmentImage.mirrorOfMushin, count: 0),
      elementary: ElementaryFragment(
          name: "Изумруд Нагадус",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.nagadusEmeraldSliver,
              name: "Осколок изумруда Нагадус"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.nagadusEmeraldFragment,
              name: "Фрагмент изумруда Нагадус"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.nagadusEmeraldChunk,
              name: "Кусок изумруда Нагадус"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.nagadusEmeraldGemstone,
              name: "Драгоценный изумруд Нагадус")),
      talentsFragments: TalentsFragments(
        name: "О Остроумии",
        lvl1: Fragments(
            name: "Учения о «Остроумии»",
            imagePath: TalentFragmentImage.teachingsOfIngenuity,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Остроумии»",
            imagePath: TalentFragmentImage.guideToIngenuity,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Остроумии»",
            imagePath: TalentFragmentImage.philosophiesOfIngenuity,
            count: 0),
      ),
      mobFragments: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.fadedRedSatin,
            name: "Выцветший красный шёлк"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.trimmedRedSilk,
            name: "Окаймлённый красный шёлк"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.richRedBrocade,
            name: "Златотканый красный шёлк"),
        name: "красный шёлк",
      ),
      specialties: Fragments(
          name: "Личинка песчаного жировика",
          imagePath: SpecialtiesImage.sandGreasePupa,
          count: 0),
    ),
    albedo: Hero(
      weapon: HeroesWepons.sword,
      imagePath: HeroImage.albedoThumb,
      name: "Альбедо",
      isHave: false,
      isLegend: true,
      bossMaterial: Fragments(
          name: "Базальтовая Колонна",
          imagePath: BossMaterialImage.basalt_Pillar,
          count: 0),
      bossFragment: Fragments(
          name: "Рог небесного кита",
          imagePath: BossFragmentImage.tuskOfMonocerosCaeli,
          count: 0),
      elementary: ElementaryFragment(
          name: "Топаз Притхива",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.prithivaTopazSliver,
              name: "Осколок топаза Притхива"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.prithivaTopazFragment,
              name: "Фрагментa топаза Притхива"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.prithivaTopazChunk,
              name: "Кусок топаза Притхива"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.prithivaTopazGemstone,
              name: "Драгоценный топаз Притхива")),
      talentsFragments: TalentsFragments(
        name: "О Поэзии",
        lvl1: Fragments(
            name: "Учения о «Поэзии»",
            imagePath: TalentFragmentImage.teachingsOfBallad,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Поэзии»",
            imagePath: TalentFragmentImage.guideToBallad,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Поэзии»",
            imagePath: TalentFragmentImage.philosophiesOfBallad,
            count: 0),
      ),
      mobFragments: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.diviningScroll,
            name: "Свиток божественной магии"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.sealedScroll,
            name: "Свиток печати"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.forbiddenCurseScroll,
            name: "Свиток запретного проклятья"),
        name: "Свитки шамачурлов",
      ),
      specialties: Fragments(
          name: "Сесилия", imagePath: SpecialtiesImage.cecilia, count: 0),
    ),
    fischl: Hero(
        weapon: HeroesWepons.bow,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.firmArrowhead,
              name: "Прочный наконечник стрелы"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.sharpArrowhead,
              name: "Острый наконечник стрелы"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.weatheredArrowhead,
              name: "Старый наконечник стрелы"),
          name: "Наконечники стрел",
        ),
        specialties: Fragments(
            name: "Трава-светяшка",
            imagePath: SpecialtiesImage.smallLampGrass,
            count: 0),
        bossMaterial: Fragments(
            name: "Призма молний",
            imagePath: BossMaterialImage.lightning_Prism,
            count: 0),
        bossFragment: Fragments(
            name: "Шкатулка с духом Борея",
            imagePath: BossFragmentImage.spiritLocketOfBoreas,
            count: 0),
        elementary: ElementaryFragment(
          name: "Аметист Ваджрада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystSliver,
              name: "Осколок аметиста Ваджрада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystFragment,
              name: "Фрагмент аметиста Ваджрада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystChunk,
              name: "Кусок аметиста Ваджрада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystGemstone,
              name: "Драгоценный аметист Ваджрада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Поэзии",
          lvl1: Fragments(
              name: "Учения о «Поэзии»",
              imagePath: TalentFragmentImage.teachingsOfBallad,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Поэзии»",
              imagePath: TalentFragmentImage.guideToBallad,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Поэзии»",
              imagePath: TalentFragmentImage.philosophiesOfBallad,
              count: 0),
        ),
        imagePath: HeroImage.fischlThumb,
        name: "Фишль",
        isHave: false,
        isLegend: false),
    nahida: Hero(
        weapon: HeroesWepons.catalyst,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.fungalSpores,
              name: "Споры плесенника"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.luminescentPollen,
              name: "Светящаяся пыльца"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.crystallineCystDust,
              name: "Пыль кристаллоцистов"),
          name: "Порошок плесенников",
        ),
        specialties: Fragments(
            name: "Лотос кальпалата",
            imagePath: SpecialtiesImage.kalpalataLotus,
            count: 0),
        bossMaterial: Fragments(
            name: "Подавленная лоза",
            imagePath: BossMaterialImage.quelled_Creeper,
            count: 0),
        bossFragment: Fragments(
            name: "Нити марионетки",
            imagePath: BossFragmentImage.puppetStrings,
            count: 0),
        elementary: ElementaryFragment(
            name: "Изумруд Нагадус",
            lvl1: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.nagadusEmeraldSliver,
                name: "Осколок изумруда Нагадус"),
            lvl2: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.nagadusEmeraldFragment,
                name: "Фрагмент изумруда Нагадус"),
            lvl3: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.nagadusEmeraldChunk,
                name: "Кусок изумруда Нагадус"),
            lvl4: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.nagadusEmeraldGemstone,
                name: "Драгоценный изумруд Нагадус")),
        talentsFragments: TalentsFragments(
          name: "О Остроумии",
          lvl1: Fragments(
              name: "Учения о «Остроумии»",
              imagePath: TalentFragmentImage.teachingsOfIngenuity,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Остроумии»",
              imagePath: TalentFragmentImage.guideToIngenuity,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Остроумии»",
              imagePath: TalentFragmentImage.philosophiesOfIngenuity,
              count: 0),
        ),
        imagePath: HeroImage.nahidaThumb,
        name: "Нахида",
        isHave: false,
        isLegend: true),
    venti: Hero(
        weapon: HeroesWepons.bow,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.slimeMaxLevel,
              name: "Слизь смайла"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.slimeSecretions,
              name: "Выделения слайма"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.slimeMinLevel,
              name: "Концентрат слайма"),
          name: "Слизь",
        ),
        specialties: Fragments(
            name: "Сесилия", imagePath: SpecialtiesImage.cecilia, count: 0),
        bossMaterial: Fragments(
            name: "Семя урагана",
            imagePath: BossMaterialImage.hurricane_Seed,
            count: 0),
        bossFragment: Fragments(
            name: "Хвост Борея", imagePath: BossFragmentImage.tailOfBoreas, count: 0),
        elementary: ElementaryFragment(
          name: "Бирюза Вайюда",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseSliver,
              name: "Осколок бирюзы Вайюда"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseFragment,
              name: "Фрагмент бирюзы Вайюда"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseChunk,
              name: "Кусок бирюзы Вайюда"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseGemstone,
              name: "Драгоценная бирюза Вайюда"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Поэзии",
          lvl1: Fragments(
              name: "Учения о «Поэзии»",
              imagePath: TalentFragmentImage.teachingsOfBallad,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Поэзии»",
              imagePath: TalentFragmentImage.guideToBallad,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Поэзии»",
              imagePath: TalentFragmentImage.philosophiesOfBallad,
              count: 0),
        ),
        imagePath: HeroImage.ventiThumb,
        name: "Венти",
        isHave: false,
        isLegend: true),
    aloy: Hero(
      weapon: HeroesWepons.bow,
      mobFragments: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.spectralHusk,
            name: "Призрачная оболочка"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.spectralHeart,
            name: "Призрачное сердце"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.spectralNucleus,
            name: "Призрачное ядро"),
        name: "Призраки",
      ),
      specialties: Fragments(
          name: "Кристальный костный мозг",
          imagePath: SpecialtiesImage.crystalMarrow,
          count: 0),
      bossMaterial: Fragments(
          name: "Цветение кристалла",
          imagePath: BossMaterialImage.crystalline_Bloom,
          count: 0),
      bossFragment: Fragments(
          name: "Расплавленный миг",
          imagePath: BossFragmentImage.moltenMoment,
          count: 0),
      elementary: ElementaryFragment(
        name: "Нефрит Шивада",
        lvl1: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.shivadaJadeSliver,
            name: "Осколок нефрита Шивада"),
        lvl2: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.shivadaJadeFragment,
            name: "Фрагмент нефрита Шивада"),
        lvl3: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.shivadaJadeChunk,
            name: "Кусок нефрита Шивада"),
        lvl4: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.shivadaJadeGemstone,
            name: "Драгоценный нефрит Шивада"),
      ),
      imagePath: HeroImage.aloyThumb,
      name: "Элой",
      isHave: false,
      isLegend: true,
      talentsFragments: TalentsFragments(
        name: "О Свободе",
        lvl1: Fragments(
            name: "Учения о «Свободе»",
            imagePath: TalentFragmentImage.teachingsOfFreedom,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Свободе»",
            imagePath: TalentFragmentImage.guideToFreedom,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Свободе»",
            imagePath: TalentFragmentImage.philosophiesOfFreedom,
            count: 0),
      ),
    ),
    ganyu: Hero(
        weapon: HeroesWepons.bow,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.whopperflowerNectar,
              name: "Нектар попрыгуньи"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.shimmeringNectar,
              name: "Мерцающий нектар"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.energyNectar,
              name: "Элементальный нектар"),
          name: "Нектары попрыгуний",
        ),
        specialties: Fragments(
            name: "Цветок цинсинь",
            imagePath: SpecialtiesImage.qingxin,
            count: 0),
        bossMaterial: Fragments(
            name: "Инеевое ядро",
            imagePath: BossMaterialImage.hoarfrost_Core,
            count: 0),
        bossFragment: Fragments(
            name: "Тень воина",
            imagePath: BossFragmentImage.shadowOfTheWarrior,
            count: 0),
        elementary: ElementaryFragment(
          name: "Нефрит Шивада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeSliver,
              name: "Осколок нефрита Шивада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeFragment,
              name: "Фрагмент нефрита Шивада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeChunk,
              name: "Кусок нефрита Шивада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeGemstone,
              name: "Драгоценный нефрит Шивада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Усердии",
          lvl1: Fragments(
              name: "Учения о «Усердии»",
              imagePath: TalentFragmentImage.teachingsOfDiligence,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Усердии»",
              imagePath: TalentFragmentImage.guideToDiligence,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Усердии»",
              imagePath: TalentFragmentImage.philosophiesOfDiligence,
              count: 0),
        ),
        imagePath: HeroImage.ganyuThumb,
        name: "Гань Юй",
        isHave: false,
        isLegend: true),
    nilou: Hero(
        weapon: HeroesWepons.sword,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.fungalSpores,
              name: "Споры плесенника"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.luminescentPollen,
              name: "Светящаяся пыльца"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.crystallineCystDust,
              name: "Пыль кристаллоцистов"),
          name: "Порошок плесенников",
        ),
        specialties: Fragments(
            name: "Падисара", imagePath: SpecialtiesImage.padisarah, count: 0),
        bossMaterial: Fragments(
            name: "Вечный механизм",
            imagePath: BossMaterialImage.perpetual_Caliber,
            count: 0),
        bossFragment: Fragments(
            name: "Слёзы очищения божества бедствий",
            imagePath: BossFragmentImage.tearsOfTheCalamitousGod,
            count: 0),
        elementary: ElementaryFragment(
          name: "Лазурит Варунада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteSliver,
              name: "Осколок лазурита Варунада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteFragment,
              name: "Фрагментa лазурита Варунада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteChunk,
              name: "Кусок лазурита Варунада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteGemstone,
              name: "Драгоценный лазурит Варунада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Честности",
          lvl1: Fragments(
              name: "Учения о «Честности»",
              imagePath: TalentFragmentImage.teachingsOfPraxis,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Честности»",
              imagePath: TalentFragmentImage.guideToPraxis,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Честности»",
              imagePath: TalentFragmentImage.philosophiesOfPraxis,
              count: 0),
        ),
        imagePath: HeroImage.nilouThumb,
        name: "Нилу",
        isHave: false,
        isLegend: true),
    wanderer: Hero(
        weapon: HeroesWepons.catalyst,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.oldHandguard,
              name: "Старая гарда"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.kageuchiHandguard,
              name: "Гарда кагэути"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.famedHandguard,
              name: "Прославленная гарда"),
          name: "Гарды Нобуси",
        ),
        specialties: Fragments(
            name: "Грибы руккхашава",
            imagePath: SpecialtiesImage.rukkhashavaMushrooms,
            count: 0),
        bossMaterial: Fragments(
            name: "Вечный механизм",
            imagePath: BossMaterialImage.perpetual_Caliber,
            count: 0),
        bossFragment: Fragments(
            name: "Пустой колокольчик",
            imagePath: BossFragmentImage.dakaBell,
            count: 0),
        elementary: ElementaryFragment(
          name: "Бирюза Вайюда",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseSliver,
              name: "Осколок бирюзы Вайюда"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseFragment,
              name: "Фрагмент бирюзы Вайюда"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseChunk,
              name: "Кусок бирюзы Вайюда"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseGemstone,
              name: "Драгоценная бирюза Вайюда"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Честности",
          lvl1: Fragments(
              name: "Учения о «Честности»",
              imagePath: TalentFragmentImage.teachingsOfPraxis,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Честности»",
              imagePath: TalentFragmentImage.guideToPraxis,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Честности»",
              imagePath: TalentFragmentImage.philosophiesOfPraxis,
              count: 0),
        ),
        imagePath: HeroImage.wandererThumb,
        name: "Странник",
        isHave: false,
        isLegend: true),
    amber: Hero(
      weapon: HeroesWepons.bow,
      mobFragments: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.firmArrowhead,
            name: "Прочный наконечник стрелы"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.sharpArrowhead,
            name: "Острый наконечник стрелы"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.weatheredArrowhead,
            name: "Старый наконечник стрелы"),
        name: "Наконечники стрел",
      ),
      specialties: Fragments(
          name: "Трава-светяшка",
          imagePath: SpecialtiesImage.smallLampGrass,
          count: 0),
      bossMaterial: Fragments(
          name: "Пылающее семя",
          imagePath: BossMaterialImage.everflame_Seed,
          count: 0),
      bossFragment: Fragments(
          name: "Вздох Двалина", imagePath: BossFragmentImage.dvalinSigh, count: 0),
      elementary: ElementaryFragment(
          name: "Агат Агнидус",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.agnidusAgateSliver,
              name: "Осколок агата Агнидус"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.agnidusAgateFragment,
              name: "Фрагмент агата Агнидус"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.agnidusAgateChunk,
              name: "Кусок агата Агнидус"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.agnidusAgateGemstone,
              name: "Драгоценный агат Агнидус")),
      imagePath: HeroImage.amberThumb,
      name: "Эмбер",
      isHave: false,
      isLegend: false,
      talentsFragments: TalentsFragments(
        name: "О Свободе",
        lvl1: Fragments(
            name: "Учения о «Свободе»",
            imagePath: TalentFragmentImage.teachingsOfFreedom,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Свободе»",
            imagePath: TalentFragmentImage.guideToFreedom,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Свободе»",
            imagePath: TalentFragmentImage.philosophiesOfFreedom,
            count: 0),
      ),
    ),
    gorou: Hero(
        weapon: HeroesWepons.bow,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.spectralHusk,
              name: "Призрачная оболочка"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.spectralHeart,
              name: "Призрачное сердце"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.spectralNucleus,
              name: "Призрачное ядро"),
          name: "Призраки",
        ),
        specialties: Fragments(
            name: "Жемчужина Санго",
            imagePath: SpecialtiesImage.sangoPearl,
            count: 0),
        bossMaterial: Fragments(
            name: "Сердце бесконечного механизма",
            imagePath: BossMaterialImage.perpetual_Heart,
            count: 0),
        bossFragment: Fragments(
            name: "Расплавленный миг",
            imagePath: BossFragmentImage.moltenMoment,
            count: 0),
        elementary: ElementaryFragment(
            name: "Топаз Притхива",
            lvl1: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazSliver,
                name: "Осколок топаза Притхива"),
            lvl2: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazFragment,
                name: "Фрагментa топаза Притхива"),
            lvl3: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazChunk,
                name: "Кусок топаза Притхива"),
            lvl4: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazGemstone,
                name: "Драгоценный топаз Притхива")),
        talentsFragments: TalentsFragments(
          name: "О Свете",
          lvl1: Fragments(
              name: "Учения о «Свете»",
              imagePath: TalentFragmentImage.teachingsOfLight,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Свете»",
              imagePath: TalentFragmentImage.guideToLight,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Свете»",
              imagePath: TalentFragmentImage.philosophiesOfLight,
              count: 0),
        ),
        imagePath: HeroImage.gorouThumb,
        name: "Гороу",
        isHave: false,
        isLegend: false),
    ningguang: Hero(
        weapon: HeroesWepons.catalyst,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.recruitInsignia,
              name: "Шеврон рядового"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.sergeantInsignia,
              name: "Шеврон сержанта"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.lieutenantInsignia,
              name: "Шеврон офицера"),
          name: "Шевроны Фатуи",
        ),
        specialties: Fragments(
            name: "Глазурная лилия",
            imagePath: SpecialtiesImage.glazeLily,
            count: 0),
        bossMaterial: Fragments(
            name: "Базальтовая Колонна",
            imagePath: BossMaterialImage.basalt_Pillar,
            count: 0),
        bossFragment: Fragments(
            name: "Шкатулка с духом Борея",
            imagePath: BossFragmentImage.spiritLocketOfBoreas,
            count: 0),
        elementary: ElementaryFragment(
            name: "Топаз Притхива",
            lvl1: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazSliver,
                name: "Осколок топаза Притхива"),
            lvl2: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazFragment,
                name: "Фрагментa топаза Притхива"),
            lvl3: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazChunk,
                name: "Кусок топаза Притхива"),
            lvl4: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazGemstone,
                name: "Драгоценный топаз Притхива")),
        talentsFragments: TalentsFragments(
          name: "О Процветании",
          lvl1: Fragments(
              name: "Учения о «Процветании»",
              imagePath: TalentFragmentImage.teachingsOfProsperity,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Процветании»",
              imagePath: TalentFragmentImage.guideToProsperity,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Процветании»",
              imagePath: TalentFragmentImage.philosophiesOfProsperity,
              count: 0),
        ),
        imagePath: HeroImage.ningguangThumb,
        name: "Нингуан",
        isHave: false,
        isLegend: false),
    xiangling: Hero(
        weapon: HeroesWepons.polearm,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.slimeMaxLevel,
              name: "Слизь смайла"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.slimeSecretions,
              name: "Выделения слайма"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.slimeMinLevel,
              name: "Концентрат слайма"),
          name: "Слизь",
        ),
        specialties: Fragments(
            name: "Заоблочный перчик",
            imagePath: SpecialtiesImage.jueyunChili,
            count: 0),
        bossMaterial: Fragments(
            name: "Пылающее семя",
            imagePath: BossMaterialImage.everflame_Seed,
            count: 0),
        bossFragment: Fragments(
            name: "Коготь Двалина", imagePath: BossFragmentImage.dvalinClaw, count: 0),
        elementary: ElementaryFragment(
            name: "Агат Агнидус",
            lvl1: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateSliver,
                name: "Осколок агата Агнидус"),
            lvl2: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateFragment,
                name: "Фрагмент агата Агнидус"),
            lvl3: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateChunk,
                name: "Кусок агата Агнидус"),
            lvl4: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateGemstone,
                name: "Драгоценный агат Агнидус")),
        talentsFragments: TalentsFragments(
          name: "О Усердии",
          lvl1: Fragments(
              name: "Учения о «Усердии»",
              imagePath: TalentFragmentImage.teachingsOfDiligence,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Усердии»",
              imagePath: TalentFragmentImage.guideToDiligence,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Усердии»",
              imagePath: TalentFragmentImage.philosophiesOfDiligence,
              count: 0),
        ),
        imagePath: HeroImage.xianglingThumb,
        name: "Сян Лин",
        isHave: false,
        isLegend: false),
    aratakiItto: Hero(
        weapon: HeroesWepons.claymore,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.slimeMaxLevel,
              name: "Слизь смайла"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.slimeSecretions,
              name: "Выделения слайма"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.slimeMinLevel,
              name: "Концентрат слайма"),
          name: "Слизь",
        ),
        specialties: Fragments(
            name: "Оникабуто", imagePath: SpecialtiesImage.onikabuto, count: 0),
        bossMaterial: Fragments(
            name: "Эмблема разрыва",
            imagePath: BossMaterialImage.riftborn_Regalia,
            count: 0),
        bossFragment: Fragments(
            name: "Пепельное сердце",
            imagePath: BossFragmentImage.ashenHeart,
            count: 0),
        elementary: ElementaryFragment(
            name: "Топаз Притхива",
            lvl1: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazSliver,
                name: "Осколок топаза Притхива"),
            lvl2: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazFragment,
                name: "Фрагментa топаза Притхива"),
            lvl3: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazChunk,
                name: "Кусок топаза Притхива"),
            lvl4: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazGemstone,
                name: "Драгоценный топаз Притхива")),
        talentsFragments: TalentsFragments(
          name: "О Изяществе",
          lvl1: Fragments(
              name: "Учения о «Изяществе»",
              imagePath: TalentFragmentImage.teachingsOfElegance,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Изяществе»",
              imagePath: TalentFragmentImage.guideToElegance,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Изяществе»",
              imagePath: TalentFragmentImage.philosophiesOfElegance,
              count: 0),
        ),
        imagePath: HeroImage.aratakiIttoThumb,
        name: "Итто",
        isHave: false,
        isLegend: true),
    huTao: Hero(
        weapon: HeroesWepons.polearm,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.whopperflowerNectar,
              name: "Нектар попрыгуньи"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.shimmeringNectar,
              name: "Мерцающий нектар"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.energyNectar,
              name: "Элементальный нектар"),
          name: "Нектары попрыгуний",
        ),
        specialties: Fragments(
            name: "Шелковица",
            imagePath: SpecialtiesImage.silkFlower,
            count: 0),
        bossMaterial: Fragments(
            name: "Незрелый хвост",
            imagePath: BossMaterialImage.juvenile_Jade,
            count: 0),
        bossFragment: Fragments(
            name: "Осколок дьявольского меча",
            imagePath: BossFragmentImage.shardFoulLegacy,
            count: 0),
        elementary: ElementaryFragment(
            name: "Агат Агнидус",
            lvl1: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateSliver,
                name: "Осколок агата Агнидус"),
            lvl2: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateFragment,
                name: "Фрагмент агата Агнидус"),
            lvl3: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateChunk,
                name: "Кусок агата Агнидус"),
            lvl4: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateGemstone,
                name: "Драгоценный агат Агнидус")),
        talentsFragments: TalentsFragments(
          name: "О Усердии",
          lvl1: Fragments(
              name: "Учения о «Усердии»",
              imagePath: TalentFragmentImage.teachingsOfDiligence,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Усердии»",
              imagePath: TalentFragmentImage.guideToDiligence,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Усердии»",
              imagePath: TalentFragmentImage.philosophiesOfDiligence,
              count: 0),
        ),
        imagePath: HeroImage.huTaoThumb,
        name: "Ху Тао",
        isHave: false,
        isLegend: true),
    noelle: Hero(
        weapon: HeroesWepons.claymore,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.damagedMask,
              name: "Разбитая маска"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.stainedMask,
              name: "Грязная маска"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.ominousMask,
              name: "Зловещая маска"),
          name: "Маска хиличурла",
        ),
        specialties: Fragments(
            name: "Валяшка", imagePath: SpecialtiesImage.valberry, count: 0),
        bossMaterial: Fragments(
            name: "Базальтовая Колонна",
            imagePath: BossMaterialImage.basalt_Pillar,
            count: 0),
        bossFragment: Fragments(
            name: "Коготь Двалина", imagePath: BossFragmentImage.dvalinClaw, count: 0),
        elementary: ElementaryFragment(
            name: "Топаз Притхива",
            lvl1: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazSliver,
                name: "Осколок топаза Притхива"),
            lvl2: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazFragment,
                name: "Фрагментa топаза Притхива"),
            lvl3: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazChunk,
                name: "Кусок топаза Притхива"),
            lvl4: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazGemstone,
                name: "Драгоценный топаз Притхива")),
        talentsFragments: TalentsFragments(
          name: "О Борьбе",
          lvl1: Fragments(
              name: "Учения о «Борьбе»",
              imagePath: TalentFragmentImage.teachingsOfResistance,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Борьбе»",
              imagePath: TalentFragmentImage.guideToResistance,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Борьбе»",
              imagePath: TalentFragmentImage.philosophiesOfResistance,
              count: 0),
        ),
        imagePath: HeroImage.noelleThumb,
        name: "Ноэль",
        isHave: false,
        isLegend: false),
    xiao: Hero(
        weapon: HeroesWepons.polearm,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.slimeMaxLevel,
              name: "Слизь смайла"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.slimeSecretions,
              name: "Выделения слайма"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.slimeMinLevel,
              name: "Концентрат слайма"),
          name: "Слизь",
        ),
        specialties: Fragments(
            name: "Цветок цинсинь",
            imagePath: SpecialtiesImage.qingxin,
            count: 0),
        bossMaterial: Fragments(
            name: "Незрелый хвост",
            imagePath: BossMaterialImage.juvenile_Jade,
            count: 0),
        bossFragment: Fragments(
            name: "Тень воина",
            imagePath: BossFragmentImage.shadowOfTheWarrior,
            count: 0),
        elementary: ElementaryFragment(
          name: "Бирюза Вайюда",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseSliver,
              name: "Осколок бирюзы Вайюда"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseFragment,
              name: "Фрагмент бирюзы Вайюда"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseChunk,
              name: "Кусок бирюзы Вайюда"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseGemstone,
              name: "Драгоценная бирюза Вайюда"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Процветании",
          lvl1: Fragments(
              name: "Учения о «Процветании»",
              imagePath: TalentFragmentImage.teachingsOfProsperity,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Процветании»",
              imagePath: TalentFragmentImage.guideToProsperity,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Процветании»",
              imagePath: TalentFragmentImage.philosophiesOfProsperity,
              count: 0),
        ),
        imagePath: HeroImage.xiaoThumb,
        name: "Сяо",
        isHave: false,
        isLegend: true),
    barbara: Hero(
      weapon: HeroesWepons.catalyst,
      mobFragments: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.diviningScroll,
            name: "Свиток божественной магии"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.sealedScroll,
            name: "Свиток печати"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.forbiddenCurseScroll,
            name: "Свиток запретного проклятья"),
        name: "Свитки шамачурлов",
      ),
      specialties: Fragments(
          name: "Гриб филанемо",
          imagePath: SpecialtiesImage.philanemoMushroom,
          count: 0),
      bossMaterial: Fragments(
          name: "Очищающее сердце",
          imagePath: BossMaterialImage.cleansing_Heart,
          count: 0),
      bossFragment: Fragments(
          name: "Кольцо Борея", imagePath: BossFragmentImage.ringOfBoreas, count: 0),
      elementary: ElementaryFragment(
        name: "Лазурит Варунада",
        lvl1: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.varunadaLazuriteSliver,
            name: "Осколок лазурита Варунада"),
        lvl2: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.varunadaLazuriteFragment,
            name: "Фрагментa лазурита Варунада"),
        lvl3: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.varunadaLazuriteChunk,
            name: "Кусок лазурита Варунада"),
        lvl4: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.varunadaLazuriteGemstone,
            name: "Драгоценный лазурит Варунада"),
      ),
      imagePath: HeroImage.barbaraThumb,
      name: "Барбара",
      isHave: false,
      isLegend: false,
      talentsFragments: TalentsFragments(
        name: "О Свободе",
        lvl1: Fragments(
            name: "Учения о «Свободе»",
            imagePath: TalentFragmentImage.teachingsOfFreedom,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Свободе»",
            imagePath: TalentFragmentImage.guideToFreedom,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Свободе»",
            imagePath: TalentFragmentImage.philosophiesOfFreedom,
            count: 0),
      ),
    ),
    jean: Hero(
        weapon: HeroesWepons.sword,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.damagedMask,
              name: "Разбитая маска"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.stainedMask,
              name: "Грязная маска"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.ominousMask,
              name: "Зловещая маска"),
          name: "Маска хиличурла",
        ),
        specialties: Fragments(
            name: "Семена одуванчика",
            imagePath: SpecialtiesImage.dandelionSeed,
            count: 0),
        bossMaterial: Fragments(
            name: "Семя урагана",
            imagePath: BossMaterialImage.hurricane_Seed,
            count: 0),
        bossFragment: Fragments(
            name: "Перо из хвоста Двалина",
            imagePath: BossFragmentImage.dvalinPlume,
            count: 0),
        elementary: ElementaryFragment(
          name: "Бирюза Вайюда",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseSliver,
              name: "Осколок бирюзы Вайюда"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseFragment,
              name: "Фрагмент бирюзы Вайюда"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseChunk,
              name: "Кусок бирюзы Вайюда"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseGemstone,
              name: "Драгоценная бирюза Вайюда"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Борьбе",
          lvl1: Fragments(
              name: "Учения о «Борьбе»",
              imagePath: TalentFragmentImage.teachingsOfResistance,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Борьбе»",
              imagePath: TalentFragmentImage.guideToResistance,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Борьбе»",
              imagePath: TalentFragmentImage.philosophiesOfResistance,
              count: 0),
        ),
        imagePath: HeroImage.jeanThumb,
        name: "Джин",
        isHave: false,
        isLegend: true),
    qiqi: Hero(
        weapon: HeroesWepons.sword,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.diviningScroll,
              name: "Свиток божественной магии"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.sealedScroll,
              name: "Свиток печати"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.forbiddenCurseScroll,
              name: "Свиток запретного проклятья"),
          name: "Свитки шамачурлов",
        ),
        specialties: Fragments(
            name: "Стеклянные колокольчики",
            imagePath: SpecialtiesImage.violetgrass,
            count: 0),
        bossMaterial: Fragments(
            name: "Инеевое ядро",
            imagePath: BossMaterialImage.hoarfrost_Core,
            count: 0),
        bossFragment: Fragments(
            name: "Хвост Борея", imagePath: BossFragmentImage.tailOfBoreas, count: 0),
        elementary: ElementaryFragment(
          name: "Нефрит Шивада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeSliver,
              name: "Осколок нефрита Шивада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeFragment,
              name: "Фрагмент нефрита Шивада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeChunk,
              name: "Кусок нефрита Шивада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeGemstone,
              name: "Драгоценный нефрит Шивада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Процветании",
          lvl1: Fragments(
              name: "Учения о «Процветании»",
              imagePath: TalentFragmentImage.teachingsOfProsperity,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Процветании»",
              imagePath: TalentFragmentImage.guideToProsperity,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Процветании»",
              imagePath: TalentFragmentImage.philosophiesOfProsperity,
              count: 0),
        ),
        imagePath: HeroImage.qiqiThumb,
        name: "Ци Ци",
        isHave: false,
        isLegend: true),
    xingqiu: Hero(
        weapon: HeroesWepons.sword,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.damagedMask,
              name: "Разбитая маска"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.stainedMask,
              name: "Грязная маска"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.ominousMask,
              name: "Зловещая маска"),
          name: "Маска хиличурла",
        ),
        specialties: Fragments(
            name: "Шелковица",
            imagePath: SpecialtiesImage.silkFlower,
            count: 0),
        bossMaterial: Fragments(
            name: "Очищающее сердце",
            imagePath: BossMaterialImage.cleansing_Heart,
            count: 0),
        bossFragment: Fragments(
            name: "Хвост Борея", imagePath: BossFragmentImage.tailOfBoreas, count: 0),
        elementary: ElementaryFragment(
          name: "Лазурит Варунада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteSliver,
              name: "Осколок лазурита Варунада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteFragment,
              name: "Фрагментa лазурита Варунада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteChunk,
              name: "Кусок лазурита Варунада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteGemstone,
              name: "Драгоценный лазурит Варунада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Золоте",
          lvl1: Fragments(
              name: "Учения о «Золоте»",
              imagePath: TalentFragmentImage.teachingsOfGold,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Золоте»",
              imagePath: TalentFragmentImage.guideToGold,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Золоте»",
              imagePath: TalentFragmentImage.philosophiesOfGold,
              count: 0),
        ),
        imagePath: HeroImage.xingqiuThumb,
        name: "Син Цю",
        isHave: false,
        isLegend: false),
    beidou: Hero(
        weapon: HeroesWepons.claymore,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.treasureHoarderInsignia,
              name: "Печать Похитителей сокровищ"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.silverRavenInsignia,
              name: "Печать серебряного ворона"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.goldenRavenInsignia,
              name: "Печать золотого ворона"),
          name: "Печати похитителей сокровищ",
        ),
        specialties: Fragments(
            name: "Полуночный нефрит",
            imagePath: SpecialtiesImage.noctilucousJade,
            count: 0),
        bossMaterial: Fragments(
            name: "Призма молний",
            imagePath: BossMaterialImage.lightning_Prism,
            count: 0),
        bossFragment: Fragments(
            name: "Вздох Двалина", imagePath: BossFragmentImage.dvalinSigh, count: 0),
        elementary: ElementaryFragment(
          name: "Аметист Ваджрада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystSliver,
              name: "Осколок аметиста Ваджрада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystFragment,
              name: "Фрагмент аметиста Ваджрада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystChunk,
              name: "Кусок аметиста Ваджрада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystGemstone,
              name: "Драгоценный аметист Ваджрада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Золоте",
          lvl1: Fragments(
              name: "Учения о «Золоте»",
              imagePath: TalentFragmentImage.teachingsOfGold,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Золоте»",
              imagePath: TalentFragmentImage.guideToGold,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Золоте»",
              imagePath: TalentFragmentImage.philosophiesOfGold,
              count: 0),
        ),
        imagePath: HeroImage.beidouThumb,
        name: "Бейдоу",
        isHave: false,
        isLegend: false),
    kaedeharaKazuha: Hero(
        weapon: HeroesWepons.sword,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.treasureHoarderInsignia,
              name: "Печать Похитителей сокровищ"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.silverRavenInsignia,
              name: "Печать серебряного ворона"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.goldenRavenInsignia,
              name: "Печать золотого ворона"),
          name: "Печати похитителей сокровищ",
        ),
        specialties: Fragments(
            name: "Морской гриб",
            imagePath: SpecialtiesImage.seaGanoderma,
            count: 0),
        bossMaterial: Fragments(
            name: "Ядро марионетки",
            imagePath: BossMaterialImage.marionette_Core,
            count: 0),
        bossFragment: Fragments(
            name: "Позолоченная чешуя",
            imagePath: BossFragmentImage.gildedScale,
            count: 0),
        elementary: ElementaryFragment(
          name: "Бирюза Вайюда",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseSliver,
              name: "Осколок бирюзы Вайюда"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseFragment,
              name: "Фрагмент бирюзы Вайюда"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseChunk,
              name: "Кусок бирюзы Вайюда"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseGemstone,
              name: "Драгоценная бирюза Вайюда"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Усердии",
          lvl1: Fragments(
              name: "Учения о «Усердии»",
              imagePath: TalentFragmentImage.teachingsOfDiligence,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Усердии»",
              imagePath: TalentFragmentImage.guideToDiligence,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Усердии»",
              imagePath: TalentFragmentImage.philosophiesOfDiligence,
              count: 0),
        ),
        imagePath: HeroImage.kaedeharaKazuhaThumb,
        name: "Казуха",
        isHave: false,
        isLegend: true),
    raidenShogun: Hero(
        weapon: HeroesWepons.polearm,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.oldHandguard,
              name: "Старая гарда"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.kageuchiHandguard,
              name: "Гарда кагэути"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.famedHandguard,
              name: "Прославленная гарда"),
          name: "Гарды Нобуси",
        ),
        specialties: Fragments(
            name: "Плод облачной травы",
            imagePath: SpecialtiesImage.amakumoFruit,
            count: 0),
        bossMaterial: Fragments(
            name: "Штормовой жемчуг",
            imagePath: BossMaterialImage.storm_Beads,
            count: 0),
        bossFragment: Fragments(
            name: "Расплавленный миг",
            imagePath: BossFragmentImage.moltenMoment,
            count: 0),
        elementary: ElementaryFragment(
          name: "Аметист Ваджрада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystSliver,
              name: "Осколок аметиста Ваджрада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystFragment,
              name: "Фрагмент аметиста Ваджрада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystChunk,
              name: "Кусок аметиста Ваджрада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystGemstone,
              name: "Драгоценный аметист Ваджрада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Свете",
          lvl1: Fragments(
              name: "Учения о «Свете»",
              imagePath: TalentFragmentImage.teachingsOfLight,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Свете»",
              imagePath: TalentFragmentImage.guideToLight,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Свете»",
              imagePath: TalentFragmentImage.philosophiesOfLight,
              count: 0),
        ),
        imagePath: HeroImage.raidenShogunThumb,
        name: "Райден",
        isHave: false,
        isLegend: true),
    xinyan: Hero(
        weapon: HeroesWepons.claymore,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.treasureHoarderInsignia,
              name: "Печать Похитителей сокровищ"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.silverRavenInsignia,
              name: "Печать серебряного ворона"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.goldenRavenInsignia,
              name: "Печать золотого ворона"),
          name: "Печати похитителей сокровищ",
        ),
        specialties: Fragments(
            name: "Стеклянные колокольчики",
            imagePath: SpecialtiesImage.violetgrass,
            count: 0),
        bossMaterial: Fragments(
            name: "Пылающее семя",
            imagePath: BossMaterialImage.everflame_Seed,
            count: 0),
        bossFragment: Fragments(
            name: "Рог небесного кита",
            imagePath: BossFragmentImage.tuskOfMonocerosCaeli,
            count: 0),
        elementary: ElementaryFragment(
            name: "Агат Агнидус",
            lvl1: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateSliver,
                name: "Осколок агата Агнидус"),
            lvl2: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateFragment,
                name: "Фрагмент агата Агнидус"),
            lvl3: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateChunk,
                name: "Кусок агата Агнидус"),
            lvl4: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateGemstone,
                name: "Драгоценный агат Агнидус")),
        talentsFragments: TalentsFragments(
          name: "О Золоте",
          lvl1: Fragments(
              name: "Учения о «Золоте»",
              imagePath: TalentFragmentImage.teachingsOfGold,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Золоте»",
              imagePath: TalentFragmentImage.guideToGold,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Золоте»",
              imagePath: TalentFragmentImage.philosophiesOfGold,
              count: 0),
        ),
        imagePath: HeroImage.xinyanThumb,
        name: "Синь Янь",
        isHave: false,
        isLegend: false),
    bennett: Hero(
        weapon: HeroesWepons.sword,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.treasureHoarderInsignia,
              name: "Печать Похитителей сокровищ"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.silverRavenInsignia,
              name: "Печать серебряного ворона"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.goldenRavenInsignia,
              name: "Печать золотого ворона"),
          name: "Печати похитителей сокровищ",
        ),
        specialties: Fragments(
            name: "Ветряная астра",
            imagePath: SpecialtiesImage.windwheelAster,
            count: 0),
        bossMaterial: Fragments(
            name: "Пылающее семя",
            imagePath: BossMaterialImage.everflame_Seed,
            count: 0),
        bossFragment: Fragments(
            name: "Перо из хвоста Двалина",
            imagePath: BossFragmentImage.dvalinPlume,
            count: 0),
        elementary: ElementaryFragment(
            name: "Агат Агнидус",
            lvl1: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateSliver,
                name: "Осколок агата Агнидус"),
            lvl2: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateFragment,
                name: "Фрагмент агата Агнидус"),
            lvl3: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateChunk,
                name: "Кусок агата Агнидус"),
            lvl4: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateGemstone,
                name: "Драгоценный агат Агнидус")),
        talentsFragments: TalentsFragments(
          name: "О Борьбе",
          lvl1: Fragments(
              name: "Учения о «Борьбе»",
              imagePath: TalentFragmentImage.teachingsOfResistance,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Борьбе»",
              imagePath: TalentFragmentImage.guideToResistance,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Борьбе»",
              imagePath: TalentFragmentImage.philosophiesOfResistance,
              count: 0),
        ),
        imagePath: HeroImage.bennettThumb,
        name: "Беннет",
        isHave: false,
        isLegend: false),
    kaeya: Hero(
        weapon: HeroesWepons.sword,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.treasureHoarderInsignia,
              name: "Печать Похитителей сокровищ"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.silverRavenInsignia,
              name: "Печать серебряного ворона"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.goldenRavenInsignia,
              name: "Печать золотого ворона"),
          name: "Печати похитителей сокровищ",
        ),
        specialties: Fragments(
            name: "Лилия калла",
            imagePath: SpecialtiesImage.callaLily,
            count: 0),
        bossMaterial: Fragments(
            name: "Инеевое ядро",
            imagePath: BossMaterialImage.hoarfrost_Core,
            count: 0),
        bossFragment: Fragments(
            name: "Шкатулка с духом Борея",
            imagePath: BossFragmentImage.spiritLocketOfBoreas,
            count: 0),
        elementary: ElementaryFragment(
          name: "Нефрит Шивада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeSliver,
              name: "Осколок нефрита Шивада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeFragment,
              name: "Фрагмент нефрита Шивада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeChunk,
              name: "Кусок нефрита Шивада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeGemstone,
              name: "Драгоценный нефрит Шивада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Поэзии",
          lvl1: Fragments(
              name: "Учения о «Поэзии»",
              imagePath: TalentFragmentImage.teachingsOfBallad,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Поэзии»",
              imagePath: TalentFragmentImage.guideToBallad,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Поэзии»",
              imagePath: TalentFragmentImage.philosophiesOfBallad,
              count: 0),
        ),
        imagePath: HeroImage.kaeyaThumb,
        name: "Кейя",
        isHave: false,
        isLegend: false),
    razor: Hero(
        weapon: HeroesWepons.claymore,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.damagedMask,
              name: "Разбитая маска"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.stainedMask,
              name: "Грязная маска"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.ominousMask,
              name: "Зловещая маска"),
          name: "Маска хиличурла",
        ),
        specialties: Fragments(
            name: "Волчий крюк",
            imagePath: SpecialtiesImage.wolfhook,
            count: 0),
        bossMaterial: Fragments(
            name: "Призма молний",
            imagePath: BossMaterialImage.lightning_Prism,
            count: 0),
        bossFragment: Fragments(
            name: "Коготь Двалина", imagePath: BossFragmentImage.dvalinClaw, count: 0),
        elementary: ElementaryFragment(
          name: "Аметист Ваджрада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystSliver,
              name: "Осколок аметиста Ваджрада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystFragment,
              name: "Фрагмент аметиста Ваджрада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystChunk,
              name: "Кусок аметиста Ваджрада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystGemstone,
              name: "Драгоценный аметист Ваджрада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Борьбе",
          lvl1: Fragments(
              name: "Учения о «Борьбе»",
              imagePath: TalentFragmentImage.teachingsOfResistance,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Борьбе»",
              imagePath: TalentFragmentImage.guideToResistance,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Борьбе»",
              imagePath: TalentFragmentImage.philosophiesOfResistance,
              count: 0),
        ),
        imagePath: HeroImage.razorThumb,
        name: "Разор",
        isHave: false,
        isLegend: false),
    yaeMiko: Hero(
        weapon: HeroesWepons.catalyst,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.oldHandguard,
              name: "Старая гарда"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.kageuchiHandguard,
              name: "Гарда кагэути"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.famedHandguard,
              name: "Прославленная гарда"),
          name: "Гарды Нобуси",
        ),
        specialties: Fragments(
            name: "Морской гриб",
            imagePath: SpecialtiesImage.seaGanoderma,
            count: 0),
        bossMaterial: Fragments(
            name: "Ложный плавник Дракона глубин",
            imagePath: BossMaterialImage.dragonheir_False_Fin,
            count: 0),
        bossFragment: Fragments(
            name: "Смысл эонов",
            imagePath: BossFragmentImage.theMeaningOfAeons,
            count: 0),
        elementary: ElementaryFragment(
          name: "Аметист Ваджрада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystSliver,
              name: "Осколок аметиста Ваджрада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystFragment,
              name: "Фрагмент аметиста Ваджрада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystChunk,
              name: "Кусок аметиста Ваджрада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystGemstone,
              name: "Драгоценный аметист Ваджрада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Свете",
          lvl1: Fragments(
              name: "Учения о «Свете»",
              imagePath: TalentFragmentImage.teachingsOfLight,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Свете»",
              imagePath: TalentFragmentImage.guideToLight,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Свете»",
              imagePath: TalentFragmentImage.philosophiesOfLight,
              count: 0),
        ),
        imagePath: HeroImage.yaeMikoThumb,
        name: "Яэ Мико",
        isHave: false,
        isLegend: true),
    candace: Hero(
        weapon: HeroesWepons.polearm,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.fadedRedSatin,
              name: "Выцветший красный шёлк"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.trimmedRedSilk,
              name: "Окаймлённый красный шёлк"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.richRedBrocade,
              name: "Златотканый красный шёлк"),
          name: "красный шёлк",
        ),
        specialties: Fragments(
            name: "Красноплодник",
            imagePath: SpecialtiesImage.hennaBerry,
            count: 0),
        bossMaterial: Fragments(
            name: "Светопроводящий тетраэдр",
            imagePath: BossMaterialImage.light_Guiding_Tetrahedron,
            count: 0),
        bossFragment: Fragments(
            name: "Слёзы очищения божества бедствий",
            imagePath: BossFragmentImage.tearsOfTheCalamitousGod,
            count: 0),
        elementary: ElementaryFragment(
          name: "Лазурит Варунада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteSliver,
              name: "Осколок лазурита Варунада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteFragment,
              name: "Фрагментa лазурита Варунада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteChunk,
              name: "Кусок лазурита Варунада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteGemstone,
              name: "Драгоценный лазурит Варунада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Наставлениях",
          lvl1: Fragments(
              name: "Учения о «Наставлениях»",
              imagePath: TalentFragmentImage.teachingsOfAdmonition,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Наставлениях»",
              imagePath: TalentFragmentImage.guideToAdmonition,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Наставлениях»",
              imagePath: TalentFragmentImage.philosophiesOfAdmonition,
              count: 0),
        ),
        imagePath: HeroImage.candaceThumb,
        name: "Кандакия",
        isHave: false,
        isLegend: false),
    kamisatoAyaka: Hero(
        weapon: HeroesWepons.sword,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.oldHandguard,
              name: "Старая гарда"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.kageuchiHandguard,
              name: "Гарда кагэути"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.famedHandguard,
              name: "Прославленная гарда"),
          name: "Гарды Нобуси",
        ),
        specialties: Fragments(
            name: "Цвет сакуры",
            imagePath: SpecialtiesImage.sakuraBloom,
            count: 0),
        bossMaterial: Fragments(
            name: "Сердце бесконечного механизма",
            imagePath: BossMaterialImage.perpetual_Heart,
            count: 0),
        bossFragment: Fragments(
            name: "Ветвь кровавой яшмы",
            imagePath: BossFragmentImage.bloodJadeBranch,
            count: 0),
        elementary: ElementaryFragment(
          name: "Нефрит Шивада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeSliver,
              name: "Осколок нефрита Шивада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeFragment,
              name: "Фрагмент нефрита Шивада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeChunk,
              name: "Кусок нефрита Шивада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeGemstone,
              name: "Драгоценный нефрит Шивада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Изяществе",
          lvl1: Fragments(
              name: "Учения о «Изяществе»",
              imagePath: TalentFragmentImage.teachingsOfElegance,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Изяществе»",
              imagePath: TalentFragmentImage.guideToElegance,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Изяществе»",
              imagePath: TalentFragmentImage.philosophiesOfElegance,
              count: 0),
        ),
        imagePath: HeroImage.kamisatoAyakaThumb,
        name: "Аяка",
        isHave: false,
        isLegend: true),
    rosaria: Hero(
        weapon: HeroesWepons.polearm,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.recruitInsignia,
              name: "Шеврон рядового"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.sergeantInsignia,
              name: "Шеврон сержанта"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.lieutenantInsignia,
              name: "Шеврон офицера"),
          name: "Шевроны Фатуи",
        ),
        specialties: Fragments(
            name: "Валяшка", imagePath: SpecialtiesImage.valberry, count: 0),
        bossMaterial: Fragments(
            name: "Инеевое ядро",
            imagePath: BossMaterialImage.hoarfrost_Core,
            count: 0),
        bossFragment: Fragments(
            name: "Тень воина",
            imagePath: BossFragmentImage.shadowOfTheWarrior,
            count: 0),
        elementary: ElementaryFragment(
          name: "Нефрит Шивада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeSliver,
              name: "Осколок нефрита Шивада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeFragment,
              name: "Фрагмент нефрита Шивада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeChunk,
              name: "Кусок нефрита Шивада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeGemstone,
              name: "Драгоценный нефрит Шивада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Поэзии",
          lvl1: Fragments(
              name: "Учения о «Поэзии»",
              imagePath: TalentFragmentImage.teachingsOfBallad,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Поэзии»",
              imagePath: TalentFragmentImage.guideToBallad,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Поэзии»",
              imagePath: TalentFragmentImage.philosophiesOfBallad,
              count: 0),
        ),
        imagePath: HeroImage.rosariaThumb,
        name: "Розария",
        isHave: false,
        isLegend: false),
    yanfei: Hero(
        weapon: HeroesWepons.catalyst,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.treasureHoarderInsignia,
              name: "Печать Похитителей сокровищ"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.silverRavenInsignia,
              name: "Печать серебряного ворона"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.goldenRavenInsignia,
              name: "Печать золотого ворона"),
          name: "Печати похитителей сокровищ",
        ),
        specialties: Fragments(
            name: "Полуночный нефрит",
            imagePath: SpecialtiesImage.noctilucousJade,
            count: 0),
        bossMaterial: Fragments(
            name: "Незрелый хвост",
            imagePath: BossMaterialImage.juvenile_Jade,
            count: 0),
        bossFragment: Fragments(
            name: "Ветвь кровавой яшмы",
            imagePath: BossFragmentImage.bloodJadeBranch,
            count: 0),
        elementary: ElementaryFragment(
            name: "Агат Агнидус",
            lvl1: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateSliver,
                name: "Осколок агата Агнидус"),
            lvl2: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateFragment,
                name: "Фрагмент агата Агнидус"),
            lvl3: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateChunk,
                name: "Кусок агата Агнидус"),
            lvl4: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateGemstone,
                name: "Драгоценный агат Агнидус")),
        talentsFragments: TalentsFragments(
          name: "О Золоте",
          lvl1: Fragments(
              name: "Учения о «Золоте»",
              imagePath: TalentFragmentImage.teachingsOfGold,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Золоте»",
              imagePath: TalentFragmentImage.guideToGold,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Золоте»",
              imagePath: TalentFragmentImage.philosophiesOfGold,
              count: 0),
        ),
        imagePath: HeroImage.yanfeiThumb,
        name: "Янь Фэй",
        isHave: false,
        isLegend: false),
    chongyun: Hero(
        weapon: HeroesWepons.claymore,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.damagedMask,
              name: "Разбитая маска"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.stainedMask,
              name: "Грязная маска"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.ominousMask,
              name: "Зловещая маска"),
          name: "Маска хиличурла",
        ),
        specialties: Fragments(
            name: "Кор ляпис", imagePath: SpecialtiesImage.corLapis, count: 0),
        bossMaterial: Fragments(
            name: "Инеевое ядро",
            imagePath: BossMaterialImage.hoarfrost_Core,
            count: 0),
        bossFragment: Fragments(
            name: "Вздох Двалина", imagePath: BossFragmentImage.dvalinSigh, count: 0),
        elementary: ElementaryFragment(
          name: "Нефрит Шивада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeSliver,
              name: "Осколок нефрита Шивада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeFragment,
              name: "Фрагмент нефрита Шивада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeChunk,
              name: "Кусок нефрита Шивада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeGemstone,
              name: "Драгоценный нефрит Шивада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Усердии",
          lvl1: Fragments(
              name: "Учения о «Усердии»",
              imagePath: TalentFragmentImage.teachingsOfDiligence,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Усердии»",
              imagePath: TalentFragmentImage.guideToDiligence,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Усердии»",
              imagePath: TalentFragmentImage.philosophiesOfDiligence,
              count: 0),
        ),
        imagePath: HeroImage.chongyunThumb,
        name: "Чун Юнь",
        isHave: false,
        isLegend: false),
    kamisatoAyato: Hero(
        weapon: HeroesWepons.sword,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.oldHandguard,
              name: "Старая гарда"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.kageuchiHandguard,
              name: "Гарда кагэути"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.famedHandguard,
              name: "Прославленная гарда"),
          name: "Гарды Нобуси",
        ),
        specialties: Fragments(
            name: "Цвет сакуры",
            imagePath: SpecialtiesImage.sakuraBloom,
            count: 0),
        bossMaterial: Fragments(
            name: "Роса Отречения",
            imagePath: BossMaterialImage.dew_of_Repudiation,
            count: 0),
        bossFragment: Fragments(
            name: "Мудра зловещего генерала",
            imagePath: BossFragmentImage.mudraOfTheMaleficGeneral,
            count: 0),
        elementary: ElementaryFragment(
          name: "Лазурит Варунада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteSliver,
              name: "Осколок лазурита Варунада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteFragment,
              name: "Фрагментa лазурита Варунада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteChunk,
              name: "Кусок лазурита Варунада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteGemstone,
              name: "Драгоценный лазурит Варунада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Изяществе",
          lvl1: Fragments(
              name: "Учения о «Изяществе»",
              imagePath: TalentFragmentImage.teachingsOfElegance,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Изяществе»",
              imagePath: TalentFragmentImage.guideToElegance,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Изяществе»",
              imagePath: TalentFragmentImage.philosophiesOfElegance,
              count: 0),
        ),
        imagePath: HeroImage.kamisatoAyatoThumb,
        name: "Аято",
        isHave: false,
        isLegend: true),
    sangonomiyaKokomi: Hero(
        weapon: HeroesWepons.catalyst,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.spectralHusk,
              name: "Призрачная оболочка"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.spectralHeart,
              name: "Призрачное сердце"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.spectralNucleus,
              name: "Призрачное ядро"),
          name: "Призраки",
        ),
        specialties: Fragments(
            name: "Жемчужина Санго",
            imagePath: SpecialtiesImage.sangoPearl,
            count: 0),
        bossMaterial: Fragments(
            name: "Роса Отречения",
            imagePath: BossMaterialImage.dew_of_Repudiation,
            count: 0),
        bossFragment: Fragments(
            name: "Бабочка адского пламени",
            imagePath: BossFragmentImage.hellfireButterfly,
            count: 0),
        elementary: ElementaryFragment(
          name: "Лазурит Варунада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteSliver,
              name: "Осколок лазурита Варунада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteFragment,
              name: "Фрагментa лазурита Варунада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteChunk,
              name: "Кусок лазурита Варунада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteGemstone,
              name: "Драгоценный лазурит Варунада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Бренности",
          lvl1: Fragments(
              name: "Учения о «Бренности»",
              imagePath: TalentFragmentImage.teachingsOfTransience,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Бренности»",
              imagePath: TalentFragmentImage.guideToTransience,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Бренности»",
              imagePath: TalentFragmentImage.philosophiesOfTransience,
              count: 0),
        ),
        imagePath: HeroImage.sangonomiyaKokomiThumb,
        name: "Кокоми",
        isHave: false,
        isLegend: true),
    yelan: Hero(
        weapon: HeroesWepons.bow,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.recruitInsignia,
              name: "Шеврон рядового"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.sergeantInsignia,
              name: "Шеврон сержанта"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.lieutenantInsignia,
              name: "Шеврон офицера"),
          name: "Шевроны Фатуи",
        ),
        specialties: Fragments(
            name: "Звёздная ракушка",
            imagePath: SpecialtiesImage.starconch,
            count: 0),
        bossMaterial: Fragments(
            name: "Рунический клык",
            imagePath: BossMaterialImage.runic_Fang,
            count: 0),
        bossFragment: Fragments(
            name: "Позолоченная чешуя",
            imagePath: BossFragmentImage.gildedScale,
            count: 0),
        elementary: ElementaryFragment(
          name: "Лазурит Варунада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteSliver,
              name: "Осколок лазурита Варунада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteFragment,
              name: "Фрагментa лазурита Варунада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteChunk,
              name: "Кусок лазурита Варунада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteGemstone,
              name: "Драгоценный лазурит Варунада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Процветании",
          lvl1: Fragments(
              name: "Учения о «Процветании»",
              imagePath: TalentFragmentImage.teachingsOfProsperity,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Процветании»",
              imagePath: TalentFragmentImage.guideToProsperity,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Процветании»",
              imagePath: TalentFragmentImage.philosophiesOfProsperity,
              count: 0),
        ),
        imagePath: HeroImage.yelanThumb,
        name: "Е Лань",
        isHave: false,
        isLegend: true),
    collei: Hero(
        weapon: HeroesWepons.bow,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.firmArrowhead,
              name: "Прочный наконечник стрелы"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.sharpArrowhead,
              name: "Острый наконечник стрелы"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.weatheredArrowhead,
              name: "Старый наконечник стрелы"),
          name: "Наконечники стрел",
        ),
        specialties: Fragments(
            name: "Грибы руккхашава",
            imagePath: SpecialtiesImage.rukkhashavaMushrooms,
            count: 0),
        bossMaterial: Fragments(
            name: "Клюв короля плеснеков",
            imagePath: BossMaterialImage.majestic_Hooked_Beak,
            count: 0),
        bossFragment: Fragments(
            name: "Слёзы очищения божества бедствий",
            imagePath: BossFragmentImage.tearsOfTheCalamitousGod,
            count: 0),
        elementary: ElementaryFragment(
            name: "Изумруд Нагадус",
            lvl1: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.nagadusEmeraldSliver,
                name: "Осколок изумруда Нагадус"),
            lvl2: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.nagadusEmeraldFragment,
                name: "Фрагмент изумруда Нагадус"),
            lvl3: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.nagadusEmeraldChunk,
                name: "Кусок изумруда Нагадус"),
            lvl4: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.nagadusEmeraldGemstone,
                name: "Драгоценный изумруд Нагадус")),
        talentsFragments: TalentsFragments(
          name: "О Честности",
          lvl1: Fragments(
              name: "Учения о «Честности»",
              imagePath: TalentFragmentImage.teachingsOfPraxis,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Честности»",
              imagePath: TalentFragmentImage.guideToPraxis,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Честности»",
              imagePath: TalentFragmentImage.philosophiesOfPraxis,
              count: 0),
        ),
        imagePath: HeroImage.colleiThumb,
        name: "Коллеи",
        isHave: false,
        isLegend: false),
    keqing: Hero(
        weapon: HeroesWepons.sword,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.whopperflowerNectar,
              name: "Нектар попрыгуньи"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.shimmeringNectar,
              name: "Мерцающий нектар"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.energyNectar,
              name: "Элементальный нектар"),
          name: "Нектары попрыгуний",
        ),
        specialties: Fragments(
            name: "Кор ляпис", imagePath: SpecialtiesImage.corLapis, count: 0),
        bossMaterial: Fragments(
            name: "Призма молний",
            imagePath: BossMaterialImage.lightning_Prism,
            count: 0),
        bossFragment: Fragments(
            name: "Кольцо Борея", imagePath: BossFragmentImage.ringOfBoreas, count: 0),
        elementary: ElementaryFragment(
          name: "Аметист Ваджрада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystSliver,
              name: "Осколок аметиста Ваджрада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystFragment,
              name: "Фрагмент аметиста Ваджрада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystChunk,
              name: "Кусок аметиста Ваджрада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystGemstone,
              name: "Драгоценный аметист Ваджрада"),
        ),
        imagePath: HeroImage.keqingThumb,
        name: "Ке Цин",
        isHave: false,
        isLegend: true,
        talentsFragments: TalentsFragments(
          name: "О Процветании",
          lvl1: Fragments(
              name: "Учения о «Процветании»",
              imagePath: TalentFragmentImage.teachingsOfProsperity,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Процветании»",
              imagePath: TalentFragmentImage.guideToProsperity,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Процветании»",
              imagePath: TalentFragmentImage.philosophiesOfProsperity,
              count: 0),
        )),
    sayu: Hero(
      weapon: HeroesWepons.claymore,
      mobFragments: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.whopperflowerNectar,
            name: "Нектар попрыгуньи"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.shimmeringNectar,
            name: "Мерцающий нектар"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.energyNectar,
            name: "Элементальный нектар"),
        name: "Нектары попрыгуний",
      ),
      specialties: Fragments(
          name: "Кристальный костный мозг",
          imagePath: SpecialtiesImage.crystalMarrow,
          count: 0),
      bossMaterial: Fragments(
          name: "Ядро марионетки",
          imagePath: BossMaterialImage.marionette_Core,
          count: 0),
      bossFragment: Fragments(
          name: "Позолоченная чешуя",
          imagePath: BossFragmentImage.gildedScale,
          count: 0),
      elementary: ElementaryFragment(
        name: "Бирюза Вайюда",
        lvl1: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.vayudaTurquoiseSliver,
            name: "Осколок бирюзы Вайюда"),
        lvl2: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.vayudaTurquoiseFragment,
            name: "Фрагмент бирюзы Вайюда"),
        lvl3: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.vayudaTurquoiseChunk,
            name: "Кусок бирюзы Вайюда"),
        lvl4: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.vayudaTurquoiseGemstone,
            name: "Драгоценная бирюза Вайюда"),
      ),
      talentsFragments: TalentsFragments(
        name: "О Свете",
        lvl1: Fragments(
            name: "Учения о «Свете»",
            imagePath: TalentFragmentImage.teachingsOfLight,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Свете»",
            imagePath: TalentFragmentImage.guideToLight,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Свете»",
            imagePath: TalentFragmentImage.philosophiesOfLight,
            count: 0),
      ),
      imagePath: HeroImage.sayuThumb,
      name: "Саю",
      isHave: false,
      isLegend: false,
    ),
    yoimiya: Hero(
        weapon: HeroesWepons.bow,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.diviningScroll,
              name: "Свиток божественной магии"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.sealedScroll,
              name: "Свиток печати"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.forbiddenCurseScroll,
              name: "Свиток запретного проклятья"),
          name: "Свитки шамачурлов",
        ),
        specialties: Fragments(
            name: "Трава наку", imagePath: SpecialtiesImage.nakuWeed, count: 0),
        bossMaterial: Fragments(
            name: "Тлеющая жемчужина",
            imagePath: BossMaterialImage.smoldering_Pearl,
            count: 0),
        bossFragment: Fragments(
            name: "Корона лорда драконов",
            imagePath: BossFragmentImage.dragonLordCrown,
            count: 0),
        elementary: ElementaryFragment(
            name: "Агат Агнидус",
            lvl1: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateSliver,
                name: "Осколок агата Агнидус"),
            lvl2: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateFragment,
                name: "Фрагмент агата Агнидус"),
            lvl3: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateChunk,
                name: "Кусок агата Агнидус"),
            lvl4: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateGemstone,
                name: "Драгоценный агат Агнидус")),
        talentsFragments: TalentsFragments(
          name: "О Бренности",
          lvl1: Fragments(
              name: "Учения о «Бренности»",
              imagePath: TalentFragmentImage.teachingsOfTransience,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Бренности»",
              imagePath: TalentFragmentImage.guideToTransience,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Бренности»",
              imagePath: TalentFragmentImage.philosophiesOfTransience,
              count: 0),
        ),
        imagePath: HeroImage.yoimiyaThumb,
        name: "Ёимия",
        isHave: false,
        isLegend: true),
    cyno: Hero(
        weapon: HeroesWepons.polearm,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.diviningScroll,
              name: "Свиток божественной магии"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.sealedScroll,
              name: "Свиток печати"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.forbiddenCurseScroll,
              name: "Свиток запретного проклятья"),
          name: "Свитки шамачурлов",
        ),
        specialties: Fragments(
            name: "Скарабей", imagePath: SpecialtiesImage.scarab, count: 0),
        bossMaterial: Fragments(
            name: "Плод грома",
            imagePath: BossMaterialImage.thunderclap_Fruitcore,
            count: 0),
        bossFragment: Fragments(
            name: "Мудра зловещего генерала",
            imagePath: BossFragmentImage.mudraOfTheMaleficGeneral,
            count: 0),
        elementary: ElementaryFragment(
          name: "Аметист Ваджрада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystSliver,
              name: "Осколок аметиста Ваджрада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystFragment,
              name: "Фрагмент аметиста Ваджрада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystChunk,
              name: "Кусок аметиста Ваджрада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystGemstone,
              name: "Драгоценный аметист Ваджрада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Наставлениях",
          lvl1: Fragments(
              name: "Учения о «Наставлениях»",
              imagePath: TalentFragmentImage.teachingsOfAdmonition,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Наставлениях»",
              imagePath: TalentFragmentImage.guideToAdmonition,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Наставлениях»",
              imagePath: TalentFragmentImage.philosophiesOfAdmonition,
              count: 0),
        ),
        imagePath: HeroImage.cynoThumb,
        name: "Сайно",
        isHave: false,
        isLegend: true),
    klee: Hero(
      weapon: HeroesWepons.catalyst,
      mobFragments: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.diviningScroll,
            name: "Свиток божественной магии"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.sealedScroll,
            name: "Свиток печати"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.forbiddenCurseScroll,
            name: "Свиток запретного проклятья"),
        name: "Свитки шамачурлов",
      ),
      specialties: Fragments(
          name: "Гриб филанемо",
          imagePath: SpecialtiesImage.philanemoMushroom,
          count: 0),
      bossMaterial: Fragments(
          name: "Пылающее семя",
          imagePath: BossMaterialImage.everflame_Seed,
          count: 0),
      bossFragment: Fragments(
          name: "Кольцо Борея", imagePath: BossFragmentImage.ringOfBoreas, count: 0),
      elementary: ElementaryFragment(
          name: "Агат Агнидус",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.agnidusAgateSliver,
              name: "Осколок агата Агнидус"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.agnidusAgateFragment,
              name: "Фрагмент агата Агнидус"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.agnidusAgateChunk,
              name: "Кусок агата Агнидус"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.agnidusAgateGemstone,
              name: "Драгоценный агат Агнидус")),
      imagePath: HeroImage.kleeThumb,
      name: "Клии",
      isHave: false,
      isLegend: true,
      talentsFragments: TalentsFragments(
        name: "О Свободе",
        lvl1: Fragments(
            name: "Учения о «Свободе»",
            imagePath: TalentFragmentImage.teachingsOfFreedom,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Свободе»",
            imagePath: TalentFragmentImage.guideToFreedom,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Свободе»",
            imagePath: TalentFragmentImage.philosophiesOfFreedom,
            count: 0),
      ),
    ),
    shenhe: Hero(
        weapon: HeroesWepons.polearm,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.whopperflowerNectar,
              name: "Нектар попрыгуньи"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.shimmeringNectar,
              name: "Мерцающий нектар"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.energyNectar,
              name: "Элементальный нектар"),
          name: "Нектары попрыгуний",
        ),
        specialties: Fragments(
            name: "Цветок цинсинь",
            imagePath: SpecialtiesImage.qingxin,
            count: 0),
        bossMaterial: Fragments(
            name: "Ложный плавник Дракона глубин",
            imagePath: BossMaterialImage.dragonheir_False_Fin,
            count: 0),
        bossFragment: Fragments(
            name: "Бабочка адского пламени",
            imagePath: BossFragmentImage.hellfireButterfly,
            count: 0),
        elementary: ElementaryFragment(
          name: "Нефрит Шивада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeSliver,
              name: "Осколок нефрита Шивада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeFragment,
              name: "Фрагмент нефрита Шивада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeChunk,
              name: "Кусок нефрита Шивада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeGemstone,
              name: "Драгоценный нефрит Шивада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Процветании",
          lvl1: Fragments(
              name: "Учения о «Процветании»",
              imagePath: TalentFragmentImage.teachingsOfProsperity,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Процветании»",
              imagePath: TalentFragmentImage.guideToProsperity,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Процветании»",
              imagePath: TalentFragmentImage.philosophiesOfProsperity,
              count: 0),
        ),
        imagePath: HeroImage.shenheThumb,
        name: "Шэнь Хэ",
        isHave: false,
        isLegend: true),
    yunJin: Hero(
        weapon: HeroesWepons.polearm,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.damagedMask,
              name: "Разбитая маска"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.stainedMask,
              name: "Грязная маска"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.ominousMask,
              name: "Зловещая маска"),
          name: "Маска хиличурла",
        ),
        specialties: Fragments(
            name: "Глазурная лилия",
            imagePath: SpecialtiesImage.glazeLily,
            count: 0),
        bossMaterial: Fragments(
            name: "Эмблема разрыва",
            imagePath: BossMaterialImage.riftborn_Regalia,
            count: 0),
        bossFragment: Fragments(
            name: "Пепельное сердце",
            imagePath: BossFragmentImage.ashenHeart,
            count: 0),
        elementary: ElementaryFragment(
            name: "Топаз Притхива",
            lvl1: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazSliver,
                name: "Осколок топаза Притхива"),
            lvl2: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazFragment,
                name: "Фрагментa топаза Притхива"),
            lvl3: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazChunk,
                name: "Кусок топаза Притхива"),
            lvl4: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazGemstone,
                name: "Драгоценный топаз Притхива")),
        talentsFragments: TalentsFragments(
          name: "О Усердии",
          lvl1: Fragments(
              name: "Учения о «Усердии»",
              imagePath: TalentFragmentImage.teachingsOfDiligence,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Усердии»",
              imagePath: TalentFragmentImage.guideToDiligence,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Усердии»",
              imagePath: TalentFragmentImage.philosophiesOfDiligence,
              count: 0),
        ),
        imagePath: HeroImage.yunJinThumb,
        name: "Юнь Цзинь",
        isHave: false,
        isLegend: false),
    diluc: Hero(
        weapon: HeroesWepons.claymore,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.recruitInsignia,
              name: "Шеврон рядового"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.sergeantInsignia,
              name: "Шеврон сержанта"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.lieutenantInsignia,
              name: "Шеврон офицера"),
          name: "Шевроны Фатуи",
        ),
        specialties: Fragments(
            name: "Трава-светяшка",
            imagePath: SpecialtiesImage.smallLampGrass,
            count: 0),
        bossMaterial: Fragments(
            name: "Пылающее семя",
            imagePath: BossMaterialImage.everflame_Seed,
            count: 0),
        bossFragment: Fragments(
            name: "Перо из хвоста Двалина",
            imagePath: BossFragmentImage.dvalinPlume,
            count: 0),
        elementary: ElementaryFragment(
            name: "Агат Агнидус",
            lvl1: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateSliver,
                name: "Осколок агата Агнидус"),
            lvl2: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateFragment,
                name: "Фрагмент агата Агнидус"),
            lvl3: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateChunk,
                name: "Кусок агата Агнидус"),
            lvl4: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.agnidusAgateGemstone,
                name: "Драгоценный агат Агнидус")),
        talentsFragments: TalentsFragments(
          name: "О Борьбе",
          lvl1: Fragments(
              name: "Учения о «Борьбе»",
              imagePath: TalentFragmentImage.teachingsOfResistance,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Борьбе»",
              imagePath: TalentFragmentImage.guideToResistance,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Борьбе»",
              imagePath: TalentFragmentImage.philosophiesOfResistance,
              count: 0),
        ),
        imagePath: HeroImage.dilucThumb,
        name: "Дилюк",
        isHave: false,
        isLegend: true),
    kujouSara: Hero(
        weapon: HeroesWepons.bow,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.damagedMask,
              name: "Разбитая маска"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.stainedMask,
              name: "Грязная маска"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.ominousMask,
              name: "Зловещая маска"),
          name: "Маска хиличурла",
        ),
        specialties: Fragments(
            name: "Кровоцвет",
            imagePath: SpecialtiesImage.dendrobium,
            count: 0),
        bossMaterial: Fragments(
            name: "Штормовой жемчуг",
            imagePath: BossMaterialImage.storm_Beads,
            count: 0),
        bossFragment: Fragments(
            name: "Пепельное сердце",
            imagePath: BossFragmentImage.ashenHeart,
            count: 0),
        elementary: ElementaryFragment(
          name: "Аметист Ваджрада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystSliver,
              name: "Осколок аметиста Ваджрада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystFragment,
              name: "Фрагмент аметиста Ваджрада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystChunk,
              name: "Кусок аметиста Ваджрада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystGemstone,
              name: "Драгоценный аметист Ваджрада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Изяществе",
          lvl1: Fragments(
              name: "Учения о «Изяществе»",
              imagePath: TalentFragmentImage.teachingsOfElegance,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Изяществе»",
              imagePath: TalentFragmentImage.guideToElegance,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Изяществе»",
              imagePath: TalentFragmentImage.philosophiesOfElegance,
              count: 0),
        ),
        imagePath: HeroImage.kujouSaraThumb,
        name: "Сара",
        isHave: false,
        isLegend: false),
    shikanoinHeizou: Hero(
        weapon: HeroesWepons.catalyst,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.treasureHoarderInsignia,
              name: "Печать Похитителей сокровищ"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.silverRavenInsignia,
              name: "Печать серебряного ворона"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.goldenRavenInsignia,
              name: "Печать золотого ворона"),
          name: "Печати похитителей сокровищ",
        ),
        specialties: Fragments(
            name: "Оникабуто", imagePath: SpecialtiesImage.onikabuto, count: 0),
        bossMaterial: Fragments(
            name: "Рунический клык",
            imagePath: BossMaterialImage.runic_Fang,
            count: 0),
        bossFragment: Fragments(
            name: "Смысл эонов",
            imagePath: BossFragmentImage.theMeaningOfAeons,
            count: 0),
        elementary: ElementaryFragment(
          name: "Бирюза Вайюда",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseSliver,
              name: "Осколок бирюзы Вайюда"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseFragment,
              name: "Фрагмент бирюзы Вайюда"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseChunk,
              name: "Кусок бирюзы Вайюда"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseGemstone,
              name: "Драгоценная бирюза Вайюда"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Бренности",
          lvl1: Fragments(
              name: "Учения о «Бренности»",
              imagePath: TalentFragmentImage.teachingsOfTransience,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Бренности»",
              imagePath: TalentFragmentImage.guideToTransience,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Бренности»",
              imagePath: TalentFragmentImage.philosophiesOfTransience,
              count: 0),
        ),
        imagePath: HeroImage.shikanoinHeizouThumb,
        name: "Хейдзо",
        isHave: false,
        isLegend: false),
    zhongli: Hero(
        weapon: HeroesWepons.polearm,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.slimeMaxLevel,
              name: "Слизь смайла"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.slimeSecretions,
              name: "Выделения слайма"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.slimeMinLevel,
              name: "Концентрат слайма"),
          name: "Слизь",
        ),
        specialties: Fragments(
            name: "Кор ляпис", imagePath: SpecialtiesImage.corLapis, count: 0),
        bossMaterial: Fragments(
            name: "Базальтовая Колонна",
            imagePath: BossMaterialImage.basalt_Pillar,
            count: 0),
        bossFragment: Fragments(
            name: "Рог небесного кита",
            imagePath: BossFragmentImage.tuskOfMonocerosCaeli,
            count: 0),
        elementary: ElementaryFragment(
            name: "Топаз Притхива",
            lvl1: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazSliver,
                name: "Осколок топаза Притхива"),
            lvl2: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazFragment,
                name: "Фрагментa топаза Притхива"),
            lvl3: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazChunk,
                name: "Кусок топаза Притхива"),
            lvl4: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.prithivaTopazGemstone,
                name: "Драгоценный топаз Притхива")),
        talentsFragments: TalentsFragments(
          name: "О Золоте",
          lvl1: Fragments(
              name: "Учения о «Золоте»",
              imagePath: TalentFragmentImage.teachingsOfGold,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Золоте»",
              imagePath: TalentFragmentImage.guideToGold,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Золоте»",
              imagePath: TalentFragmentImage.philosophiesOfGold,
              count: 0),
        ),
        imagePath: HeroImage.zhongliThumb,
        name: "Джун Ли",
        isHave: false,
        isLegend: true),
    diona: Hero(
      weapon: HeroesWepons.bow,
      mobFragments: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.firmArrowhead,
            name: "Прочный наконечник стрелы"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.sharpArrowhead,
            name: "Острый наконечник стрелы"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.weatheredArrowhead,
            name: "Старый наконечник стрелы"),
        name: "Наконечники стрел",
      ),
      specialties: Fragments(
          name: "Лилия калла", imagePath: SpecialtiesImage.callaLily, count: 0),
      bossMaterial: Fragments(
          name: "Инеевое ядро",
          imagePath: BossMaterialImage.hoarfrost_Core,
          count: 0),
      bossFragment: Fragments(
          name: "Осколок дьявольского меча",
          imagePath: BossFragmentImage.shardFoulLegacy,
          count: 0),
      elementary: ElementaryFragment(
        name: "Нефрит Шивада",
        lvl1: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.shivadaJadeSliver,
            name: "Осколок нефрита Шивада"),
        lvl2: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.shivadaJadeFragment,
            name: "Фрагмент нефрита Шивада"),
        lvl3: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.shivadaJadeChunk,
            name: "Кусок нефрита Шивада"),
        lvl4: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.shivadaJadeGemstone,
            name: "Драгоценный нефрит Шивада"),
      ),
      imagePath: HeroImage.dionaThumb,
      name: "Диона",
      isHave: false,
      isLegend: false,
      talentsFragments: TalentsFragments(
        name: "О Свободе",
        lvl1: Fragments(
            name: "Учения о «Свободе»",
            imagePath: TalentFragmentImage.teachingsOfFreedom,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Свободе»",
            imagePath: TalentFragmentImage.guideToFreedom,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Свободе»",
            imagePath: TalentFragmentImage.philosophiesOfFreedom,
            count: 0),
      ),
    ),
    kukiShinobu: Hero(
        weapon: HeroesWepons.sword,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.spectralHusk,
              name: "Призрачная оболочка"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.spectralHeart,
              name: "Призрачное сердце"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.spectralNucleus,
              name: "Призрачное ядро"),
          name: "Призраки",
        ),
        specialties: Fragments(
            name: "Трава наку", imagePath: SpecialtiesImage.nakuWeed, count: 0),
        bossMaterial: Fragments(
            name: "Рунический клык",
            imagePath: BossMaterialImage.runic_Fang,
            count: 0),
        bossFragment: Fragments(
            name: "Слёзы очищения божества бедствий",
            imagePath: BossFragmentImage.tearsOfTheCalamitousGod,
            count: 0),
        elementary: ElementaryFragment(
          name: "Аметист Ваджрада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystSliver,
              name: "Осколок аметиста Ваджрада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystFragment,
              name: "Фрагмент аметиста Ваджрада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystChunk,
              name: "Кусок аметиста Ваджрада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystGemstone,
              name: "Драгоценный аметист Ваджрада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Изяществе",
          lvl1: Fragments(
              name: "Учения о «Изяществе»",
              imagePath: TalentFragmentImage.teachingsOfElegance,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Изяществе»",
              imagePath: TalentFragmentImage.guideToElegance,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Изяществе»",
              imagePath: TalentFragmentImage.philosophiesOfElegance,
              count: 0),
        ),
        imagePath: HeroImage.kukiShinobuThumb,
        name: "Куки",
        isHave: false,
        isLegend: false),
    sucrose: Hero(
      weapon: HeroesWepons.catalyst,
      mobFragments: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.whopperflowerNectar,
            name: "Нектар попрыгуньи"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.shimmeringNectar,
            name: "Мерцающий нектар"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.energyNectar,
            name: "Элементальный нектар"),
        name: "Нектары попрыгуний",
      ),
      specialties: Fragments(
          name: "Ветряная астра",
          imagePath: SpecialtiesImage.windwheelAster,
          count: 0),
      bossMaterial: Fragments(
          name: "Семя урагана",
          imagePath: BossMaterialImage.hurricane_Seed,
          count: 0),
      bossFragment: Fragments(
          name: "Шкатулка с духом Борея",
          imagePath: BossFragmentImage.spiritLocketOfBoreas,
          count: 0),
      elementary: ElementaryFragment(
        name: "Бирюза Вайюда",
        lvl1: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.vayudaTurquoiseSliver,
            name: "Осколок бирюзы Вайюда"),
        lvl2: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.vayudaTurquoiseFragment,
            name: "Фрагмент бирюзы Вайюда"),
        lvl3: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.vayudaTurquoiseChunk,
            name: "Кусок бирюзы Вайюда"),
        lvl4: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.vayudaTurquoiseGemstone,
            name: "Драгоценная бирюза Вайюда"),
      ),
      imagePath: HeroImage.sucroseThumb,
      name: "Сахароза",
      isHave: false,
      isLegend: false,
      talentsFragments: TalentsFragments(
        name: "О Свободе",
        lvl1: Fragments(
            name: "Учения о «Свободе»",
            imagePath: TalentFragmentImage.teachingsOfFreedom,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Свободе»",
            imagePath: TalentFragmentImage.guideToFreedom,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Свободе»",
            imagePath: TalentFragmentImage.philosophiesOfFreedom,
            count: 0),
      ),
    ),
    dori: Hero(
        weapon: HeroesWepons.claymore,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.fadedRedSatin,
              name: "Выцветший красный шёлк"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.trimmedRedSilk,
              name: "Окаймлённый красный шёлк"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.richRedBrocade,
              name: "Златотканый красный шёлк"),
          name: "красный шёлк",
        ),
        specialties: Fragments(
            name: "Лотос кальпалата",
            imagePath: SpecialtiesImage.kalpalataLotus,
            count: 0),
        bossMaterial: Fragments(
            name: "Плод грома",
            imagePath: BossMaterialImage.thunderclap_Fruitcore,
            count: 0),
        bossFragment: Fragments(
            name: "Ветвь кровавой яшмы",
            imagePath: BossFragmentImage.bloodJadeBranch,
            count: 0),
        elementary: ElementaryFragment(
          name: "Аметист Ваджрада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystSliver,
              name: "Осколок аметиста Ваджрада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystFragment,
              name: "Фрагмент аметиста Ваджрада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystChunk,
              name: "Кусок аметиста Ваджрада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vajradaAmethystGemstone,
              name: "Драгоценный аметист Ваджрада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Остроумии",
          lvl1: Fragments(
              name: "Учения о «Остроумии»",
              imagePath: TalentFragmentImage.teachingsOfIngenuity,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Остроумии»",
              imagePath: TalentFragmentImage.guideToIngenuity,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Остроумии»",
              imagePath: TalentFragmentImage.philosophiesOfIngenuity,
              count: 0),
        ),
        imagePath: HeroImage.doriThumb,
        name: "Дори",
        isHave: false,
        isLegend: false),
    layla: Hero(
        weapon: HeroesWepons.sword,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.diviningScroll,
              name: "Свиток божественной магии"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.sealedScroll,
              name: "Свиток печати"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.forbiddenCurseScroll,
              name: "Свиток запретного проклятья"),
          name: "Свитки шамачурлов",
        ),
        specialties: Fragments(
            name: "Лотос нилотпала",
            imagePath: SpecialtiesImage.nilotpalaLotus,
            count: 0),
        bossMaterial: Fragments(
            name: "Вечный механизм",
            imagePath: BossMaterialImage.perpetual_Caliber,
            count: 0),
        bossFragment: Fragments(
            name: "Зеркало Мусин",
            imagePath: BossFragmentImage.mirrorOfMushin,
            count: 0),
        elementary: ElementaryFragment(
          name: "Нефрит Шивада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeSliver,
              name: "Осколок нефрита Шивада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeFragment,
              name: "Фрагмент нефрита Шивада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeChunk,
              name: "Кусок нефрита Шивада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeGemstone,
              name: "Драгоценный нефрит Шивада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Остроумии",
          lvl1: Fragments(
              name: "Учения о «Остроумии»",
              imagePath: TalentFragmentImage.teachingsOfIngenuity,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Остроумии»",
              imagePath: TalentFragmentImage.guideToIngenuity,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Остроумии»",
              imagePath: TalentFragmentImage.philosophiesOfIngenuity,
              count: 0),
        ),
        imagePath: HeroImage.laylaThumb,
        name: "Лайла",
        isHave: false,
        isLegend: false),
    tartaglia: Hero(
      weapon: HeroesWepons.bow,
      mobFragments: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.recruitInsignia,
            name: "Шеврон рядового"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.sergeantInsignia,
            name: "Шеврон сержанта"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.lieutenantInsignia,
            name: "Шеврон офицера"),
        name: "Шевроны Фатуи",
      ),
      specialties: Fragments(
          name: "Звёздная ракушка",
          imagePath: SpecialtiesImage.starconch,
          count: 0),
      bossMaterial: Fragments(
          name: "Очищающее сердце",
          imagePath: BossMaterialImage.cleansing_Heart,
          count: 0),
      bossFragment: Fragments(
          name: "Осколок дьявольского меча",
          imagePath: BossFragmentImage.shardFoulLegacy,
          count: 0),
      elementary: ElementaryFragment(
        name: "Лазурит Варунада",
        lvl1: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.varunadaLazuriteSliver,
            name: "Осколок лазурита Варунада"),
        lvl2: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.varunadaLazuriteFragment,
            name: "Фрагментa лазурита Варунада"),
        lvl3: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.varunadaLazuriteChunk,
            name: "Кусок лазурита Варунада"),
        lvl4: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.varunadaLazuriteGemstone,
            name: "Драгоценный лазурит Варунада"),
      ),
      imagePath: HeroImage.tartagliaThumb,
      name: "Тарталья",
      isHave: false,
      isLegend: true,
      talentsFragments: TalentsFragments(
        name: "О Свободе",
        lvl1: Fragments(
            name: "Учения о «Свободе»",
            imagePath: TalentFragmentImage.teachingsOfFreedom,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Свободе»",
            imagePath: TalentFragmentImage.guideToFreedom,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Свободе»",
            imagePath: TalentFragmentImage.philosophiesOfFreedom,
            count: 0),
      ),
    ),
    eula: Hero(
        weapon: HeroesWepons.claymore,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.damagedMask,
              name: "Разбитая маска"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.stainedMask,
              name: "Грязная маска"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.ominousMask,
              name: "Зловещая маска"),
          name: "Маска хиличурла",
        ),
        specialties: Fragments(
            name: "Семена одуванчика",
            imagePath: SpecialtiesImage.dandelionSeed,
            count: 0),
        bossMaterial: Fragments(
            name: "Цветение кристалла",
            imagePath: BossMaterialImage.crystalline_Bloom,
            count: 0),
        bossFragment: Fragments(
            name: "Корона лорда драконов",
            imagePath: BossFragmentImage.dragonLordCrown,
            count: 0),
        elementary: ElementaryFragment(
          name: "Нефрит Шивада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeSliver,
              name: "Осколок нефрита Шивада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeFragment,
              name: "Фрагмент нефрита Шивада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeChunk,
              name: "Кусок нефрита Шивада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.shivadaJadeGemstone,
              name: "Драгоценный нефрит Шивада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Борьбе",
          lvl1: Fragments(
              name: "Учения о «Борьбе»",
              imagePath: TalentFragmentImage.teachingsOfResistance,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Борьбе»",
              imagePath: TalentFragmentImage.guideToResistance,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Борьбе»",
              imagePath: TalentFragmentImage.philosophiesOfResistance,
              count: 0),
        ),
        imagePath: HeroImage.eulaThumb,
        name: "Еола",
        isHave: false,
        isLegend: true),
    lisa: Hero(
      weapon: HeroesWepons.catalyst,
      mobFragments: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.slimeMaxLevel,
            name: "Слизь смайла"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.slimeSecretions,
            name: "Выделения слайма"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.slimeMinLevel,
            name: "Концентрат слайма"),
        name: "Слизь",
      ),
      specialties: Fragments(
          name: "Валяшка", imagePath: SpecialtiesImage.valberry, count: 0),
      bossMaterial: Fragments(
          name: "Призма молний",
          imagePath: BossMaterialImage.lightning_Prism,
          count: 0),
      bossFragment: Fragments(
          name: "Коготь Двалина", imagePath: BossFragmentImage.dvalinClaw, count: 0),
      elementary: ElementaryFragment(
        name: "Аметист Ваджрада",
        lvl1: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.vajradaAmethystSliver,
            name: "Осколок аметиста Ваджрада"),
        lvl2: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.vajradaAmethystFragment,
            name: "Фрагмент аметиста Ваджрада"),
        lvl3: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.vajradaAmethystChunk,
            name: "Кусок аметиста Ваджрада"),
        lvl4: Fragments(
            count: 0,
            imagePath: ElementaryFragmentsImage.vajradaAmethystGemstone,
            name: "Драгоценный аметист Ваджрада"),
      ),
      talentsFragments: TalentsFragments(
        name: "О Поэзии",
        lvl1: Fragments(
            name: "Учения о «Поэзии»",
            imagePath: TalentFragmentImage.teachingsOfBallad,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Поэзии»",
            imagePath: TalentFragmentImage.guideToBallad,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Поэзии»",
            imagePath: TalentFragmentImage.philosophiesOfBallad,
            count: 0),
      ),
      imagePath: HeroImage.lisaThumb,
      name: "Лиза",
      isHave: false,
      isLegend: false,
    ),
    thoma: Hero(
      weapon: HeroesWepons.polearm,
      mobFragments: MobFragments(
        lvl1: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.treasureHoarderInsignia,
            name: "Печать Похитителей сокровищ"),
        lvl2: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.silverRavenInsignia,
            name: "Печать серебряного ворона"),
        lvl3: Fragments(
            count: 0,
            imagePath: MobFragmentsImage.goldenRavenInsignia,
            name: "Печать золотого ворона"),
        name: "Печати похитителей сокровищ",
      ),
      specialties: Fragments(
          name: "Светящийся гриб",
          imagePath: SpecialtiesImage.fluorescentFungus,
          count: 0),
      bossMaterial: Fragments(
          name: "Тлеющая жемчужина",
          imagePath: BossMaterialImage.smoldering_Pearl,
          count: 0),
      bossFragment: Fragments(
          name: "Бабочка адского пламени",
          imagePath: BossFragmentImage.hellfireButterfly,
          count: 0),
      elementary: ElementaryFragment(
          name: "Агат Агнидус",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.agnidusAgateSliver,
              name: "Осколок агата Агнидус"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.agnidusAgateFragment,
              name: "Фрагмент агата Агнидус"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.agnidusAgateChunk,
              name: "Кусок агата Агнидус"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.agnidusAgateGemstone,
              name: "Драгоценный агат Агнидус")),
      talentsFragments: TalentsFragments(
        name: "О Бренности",
        lvl1: Fragments(
            name: "Учения о «Бренности»",
            imagePath: TalentFragmentImage.teachingsOfTransience,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Бренности»",
            imagePath: TalentFragmentImage.guideToTransience,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Бренности»",
            imagePath: TalentFragmentImage.philosophiesOfTransience,
            count: 0),
      ),
      imagePath: HeroImage.thomaThumb,
      name: "Тома",
      isHave: false,
      isLegend: false,
    ),
    faruzan: Hero(
        weapon: HeroesWepons.bow,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.fadedRedSatin,
              name: "Выцветший красный шёлк"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.trimmedRedSilk,
              name: "Окаймлённый красный шёлк"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.richRedBrocade,
              name: "Златотканый красный шёлк"),
          name: "красный шёлк",
        ),
        specialties: Fragments(
            name: "Красноплодник",
            imagePath: SpecialtiesImage.hennaBerry,
            count: 0),
        bossMaterial: Fragments(
            name: "Светопроводящий тетраэдр",
            imagePath: BossMaterialImage.light_Guiding_Tetrahedron,
            count: 0),
        bossFragment: Fragments(
            name: "Нити марионетки",
            imagePath: BossFragmentImage.puppetStrings,
            count: 0),
        elementary: ElementaryFragment(
          name: "Бирюза Вайюда",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseSliver,
              name: "Осколок бирюзы Вайюда"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseFragment,
              name: "Фрагмент бирюзы Вайюда"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseChunk,
              name: "Кусок бирюзы Вайюда"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.vayudaTurquoiseGemstone,
              name: "Драгоценная бирюза Вайюда"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Наставлениях",
          lvl1: Fragments(
              name: "Учения о «Наставлениях»",
              imagePath: TalentFragmentImage.teachingsOfAdmonition,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Наставлениях»",
              imagePath: TalentFragmentImage.guideToAdmonition,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Наставлениях»",
              imagePath: TalentFragmentImage.philosophiesOfAdmonition,
              count: 0),
        ),
        imagePath: HeroImage.faruzanThumb,
        name: "Фарузан",
        isHave: false,
        isLegend: false),
    mona: Hero(
        weapon: HeroesWepons.catalyst,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.whopperflowerNectar,
              name: "Нектар попрыгуньи"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.shimmeringNectar,
              name: "Мерцающий нектар"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.energyNectar,
              name: "Элементальный нектар"),
          name: "Нектары попрыгуний",
        ),
        specialties: Fragments(
            name: "Гриб филанемо",
            imagePath: SpecialtiesImage.philanemoMushroom,
            count: 0),
        bossMaterial: Fragments(
            name: "Очищающее сердце",
            imagePath: BossMaterialImage.cleansing_Heart,
            count: 0),
        bossFragment: Fragments(
            name: "Кольцо Борея", imagePath: BossFragmentImage.ringOfBoreas, count: 0),
        elementary: ElementaryFragment(
          name: "Лазурит Варунада",
          lvl1: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteSliver,
              name: "Осколок лазурита Варунада"),
          lvl2: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteFragment,
              name: "Фрагментa лазурита Варунада"),
          lvl3: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteChunk,
              name: "Кусок лазурита Варунада"),
          lvl4: Fragments(
              count: 0,
              imagePath: ElementaryFragmentsImage.varunadaLazuriteGemstone,
              name: "Драгоценный лазурит Варунада"),
        ),
        talentsFragments: TalentsFragments(
          name: "О Борьбе",
          lvl1: Fragments(
              name: "Учения о «Борьбе»",
              imagePath: TalentFragmentImage.teachingsOfResistance,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Борьбе»",
              imagePath: TalentFragmentImage.guideToResistance,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Борьбе»",
              imagePath: TalentFragmentImage.philosophiesOfResistance,
              count: 0),
        ),
        imagePath: HeroImage.monaThumb,
        name: "Мона",
        isHave: false,
        isLegend: true),
    tighnari: Hero(
        weapon: HeroesWepons.bow,
        mobFragments: MobFragments(
          lvl1: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.fungalSpores,
              name: "Споры плесенника"),
          lvl2: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.luminescentPollen,
              name: "Светящаяся пыльца"),
          lvl3: Fragments(
              count: 0,
              imagePath: MobFragmentsImage.crystallineCystDust,
              name: "Пыль кристаллоцистов"),
          name: "Порошок плесенников",
        ),
        specialties: Fragments(
            name: "Лотос нилотпала",
            imagePath: SpecialtiesImage.nilotpalaLotus,
            count: 0),
        bossMaterial: Fragments(
            name: "Клюв короля плеснеков",
            imagePath: BossMaterialImage.majestic_Hooked_Beak,
            count: 0),
        bossFragment: Fragments(
            name: "Смысл эонов",
            imagePath: BossFragmentImage.theMeaningOfAeons,
            count: 0),
        elementary: ElementaryFragment(
            name: "Изумруд Нагадус",
            lvl1: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.nagadusEmeraldSliver,
                name: "Осколок изумруда Нагадус"),
            lvl2: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.nagadusEmeraldFragment,
                name: "Фрагмент изумруда Нагадус"),
            lvl3: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.nagadusEmeraldChunk,
                name: "Кусок изумруда Нагадус"),
            lvl4: Fragments(
                count: 0,
                imagePath: ElementaryFragmentsImage.nagadusEmeraldGemstone,
                name: "Драгоценный изумруд Нагадус")),
        talentsFragments: TalentsFragments(
          name: "О Наставлениях",
          lvl1: Fragments(
              name: "Учения о «Наставлениях»",
              imagePath: TalentFragmentImage.teachingsOfAdmonition,
              count: 0),
          lvl2: Fragments(
              name: "Указания о «Наставлениях»",
              imagePath: TalentFragmentImage.guideToAdmonition,
              count: 0),
          lvl3: Fragments(
              name: "Философия о «Наставлениях»",
              imagePath: TalentFragmentImage.philosophiesOfAdmonition,
              count: 0),
        ),
        imagePath: HeroImage.tighnariThumb,
        name: "Тигнари",
        isHave: false,
        isLegend: true),
  ),
  talentsFragments: AllTalentsFragments(
      freedom: TalentsFragments(
        name: "О Свободе",
        lvl1: Fragments(
            name: "Учения о «Свободе»",
            imagePath: TalentFragmentImage.teachingsOfFreedom,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Свободе»",
            imagePath: TalentFragmentImage.guideToFreedom,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Свободе»",
            imagePath: TalentFragmentImage.philosophiesOfFreedom,
            count: 0),
      ),
      resistance: TalentsFragments(
        name: "О Борьбе",
        lvl1: Fragments(
            name: "Учения о «Борьбе»",
            imagePath: TalentFragmentImage.teachingsOfResistance,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Борьбе»",
            imagePath: TalentFragmentImage.guideToResistance,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Борьбе»",
            imagePath: TalentFragmentImage.philosophiesOfResistance,
            count: 0),
      ),
      ballad: TalentsFragments(
        name: "О Поэзии",
        lvl1: Fragments(
            name: "Учения о «Поэзии»",
            imagePath: TalentFragmentImage.teachingsOfBallad,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Поэзии»",
            imagePath: TalentFragmentImage.guideToBallad,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Поэзии»",
            imagePath: TalentFragmentImage.philosophiesOfBallad,
            count: 0),
      ),
      prosperity: TalentsFragments(
        name: "О Процветании",
        lvl1: Fragments(
            name: "Учения о «Процветании»",
            imagePath: TalentFragmentImage.teachingsOfProsperity,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Процветании»",
            imagePath: TalentFragmentImage.guideToProsperity,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Процветании»",
            imagePath: TalentFragmentImage.philosophiesOfProsperity,
            count: 0),
      ),
      diligence: TalentsFragments(
        name: "О Усердии",
        lvl1: Fragments(
            name: "Учения о «Усердии»",
            imagePath: TalentFragmentImage.teachingsOfDiligence,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Усердии»",
            imagePath: TalentFragmentImage.guideToDiligence,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Усердии»",
            imagePath: TalentFragmentImage.philosophiesOfDiligence,
            count: 0),
      ),
      gold: TalentsFragments(
        name: "О Золоте",
        lvl1: Fragments(
            name: "Учения о «Золоте»",
            imagePath: TalentFragmentImage.teachingsOfGold,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Золоте»",
            imagePath: TalentFragmentImage.guideToGold,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Золоте»",
            imagePath: TalentFragmentImage.philosophiesOfGold,
            count: 0),
      ),
      transience: TalentsFragments(
        name: "О Бренности",
        lvl1: Fragments(
            name: "Учения о «Бренности»",
            imagePath: TalentFragmentImage.teachingsOfTransience,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Бренности»",
            imagePath: TalentFragmentImage.guideToTransience,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Бренности»",
            imagePath: TalentFragmentImage.philosophiesOfTransience,
            count: 0),
      ),
      elegance: TalentsFragments(
        name: "О Изяществе",
        lvl1: Fragments(
            name: "Учения о «Изяществе»",
            imagePath: TalentFragmentImage.teachingsOfElegance,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Изяществе»",
            imagePath: TalentFragmentImage.guideToElegance,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Изяществе»",
            imagePath: TalentFragmentImage.philosophiesOfElegance,
            count: 0),
      ),
      light: TalentsFragments(
        name: "О Свете",
        lvl1: Fragments(
            name: "Учения о «Свете»",
            imagePath: TalentFragmentImage.teachingsOfLight,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Свете»",
            imagePath: TalentFragmentImage.guideToLight,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Свете»",
            imagePath: TalentFragmentImage.philosophiesOfLight,
            count: 0),
      ),
      admonition: TalentsFragments(
        name: "О Наставлениях",
        lvl1: Fragments(
            name: "Учения о «Наставлениях»",
            imagePath: TalentFragmentImage.teachingsOfAdmonition,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Наставлениях»",
            imagePath: TalentFragmentImage.guideToAdmonition,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Наставлениях»",
            imagePath: TalentFragmentImage.philosophiesOfAdmonition,
            count: 0),
      ),
      ingenuity: TalentsFragments(
        name: "О Остроумии",
        lvl1: Fragments(
            name: "Учения о «Остроумии»",
            imagePath: TalentFragmentImage.teachingsOfIngenuity,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Остроумии»",
            imagePath: TalentFragmentImage.guideToIngenuity,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Остроумии»",
            imagePath: TalentFragmentImage.philosophiesOfIngenuity,
            count: 0),
      ),
      praxis: TalentsFragments(
        name: "О Честности",
        lvl1: Fragments(
            name: "Учения о «Честности»",
            imagePath: TalentFragmentImage.teachingsOfPraxis,
            count: 0),
        lvl2: Fragments(
            name: "Указания о «Честности»",
            imagePath: TalentFragmentImage.guideToPraxis,
            count: 0),
        lvl3: Fragments(
            name: "Философия о «Честности»",
            imagePath: TalentFragmentImage.philosophiesOfPraxis,
            count: 0),
      )),
  specialties: AllSpecialties(
    sandGreasePupa: Fragments(
        name: "Личинка песчаного жировика",
        imagePath: SpecialtiesImage.sandGreasePupa,
        count: 0),
    amakumoFruit: Fragments(
        name: "Плод облачной травы",
        imagePath: SpecialtiesImage.amakumoFruit,
        count: 0),
    callaLily: Fragments(
        name: "Лилия калла", imagePath: SpecialtiesImage.callaLily, count: 0),
    cecilia: Fragments(
        name: "Сесилия", imagePath: SpecialtiesImage.cecilia, count: 0),
    corLapis: Fragments(
        name: "Кор ляпис", imagePath: SpecialtiesImage.corLapis, count: 0),
    crystalMarrow: Fragments(
        name: "Кристальный костный мозг",
        imagePath: SpecialtiesImage.crystalMarrow,
        count: 0),
    dandelionSeed: Fragments(
        name: "Семена одуванчика",
        imagePath: SpecialtiesImage.dandelionSeed,
        count: 0),
    dendrobium: Fragments(
        name: "Кровоцвет", imagePath: SpecialtiesImage.dendrobium, count: 0),
    fluorescentFungus: Fragments(
        name: "Светящийся гриб",
        imagePath: SpecialtiesImage.fluorescentFungus,
        count: 0),
    glazeLily: Fragments(
        name: "Глазурная лилия",
        imagePath: SpecialtiesImage.glazeLily,
        count: 0),
    hennaBerry: Fragments(
        name: "Красноплодник",
        imagePath: SpecialtiesImage.hennaBerry,
        count: 0),
    jueyunChili: Fragments(
        name: "Заоблочный перчик",
        imagePath: SpecialtiesImage.jueyunChili,
        count: 0),
    kalpalataLotus: Fragments(
        name: "Лотос кальпалата",
        imagePath: SpecialtiesImage.kalpalataLotus,
        count: 0),
    nakuWeed: Fragments(
        name: "Трава наку", imagePath: SpecialtiesImage.nakuWeed, count: 0),
    nilotpalaLotus: Fragments(
        name: "Лотос нилотпала",
        imagePath: SpecialtiesImage.nilotpalaLotus,
        count: 0),
    noctilucousJade: Fragments(
        name: "Полуночный нефрит",
        imagePath: SpecialtiesImage.noctilucousJade,
        count: 0),
    onikabuto: Fragments(
        name: "Оникабуто", imagePath: SpecialtiesImage.onikabuto, count: 0),
    philanemoMushroom: Fragments(
        name: "Гриб филанемо",
        imagePath: SpecialtiesImage.philanemoMushroom,
        count: 0),
    qingxin: Fragments(
        name: "Цветок цинсинь", imagePath: SpecialtiesImage.qingxin, count: 0),
    rukkhashavaMushrooms: Fragments(
        name: "Грибы руккхашава",
        imagePath: SpecialtiesImage.rukkhashavaMushrooms,
        count: 0),
    sakuraBloom: Fragments(
        name: "Цвет сакуры", imagePath: SpecialtiesImage.sakuraBloom, count: 0),
    sangoPearl: Fragments(
        name: "Жемчужина Санго",
        imagePath: SpecialtiesImage.sangoPearl,
        count: 0),
    scarab: Fragments(
        name: "Скарабей", imagePath: SpecialtiesImage.scarab, count: 0),
    seaGanoderma: Fragments(
        name: "Морской гриб",
        imagePath: SpecialtiesImage.seaGanoderma,
        count: 0),
    silkFlower: Fragments(
        name: "Шелковица", imagePath: SpecialtiesImage.silkFlower, count: 0),
    smallLampGrass: Fragments(
        name: "Трава-светяшка",
        imagePath: SpecialtiesImage.smallLampGrass,
        count: 0),
    starconch: Fragments(
        name: "Звёздная ракушка",
        imagePath: SpecialtiesImage.starconch,
        count: 0),
    valberry: Fragments(
        name: "Валяшка", imagePath: SpecialtiesImage.valberry, count: 0),
    violetgrass: Fragments(
        name: "Стеклянные колокольчики",
        imagePath: SpecialtiesImage.violetgrass,
        count: 0),
    windwheelAster: Fragments(
        name: "Ветряная астра",
        imagePath: SpecialtiesImage.windwheelAster,
        count: 0),
    wolfhook: Fragments(
        name: "Волчий крюк", imagePath: SpecialtiesImage.wolfhook, count: 0),
    padisarah: Fragments(
        name: "Падисара", imagePath: SpecialtiesImage.padisarah, count: 0),
  ),
);
