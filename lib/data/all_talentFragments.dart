import 'dart:convert';

import 'package:genshin_counter/models/fragments.dart';
import 'package:genshin_counter/models/talant_fragments.dart';
import 'package:genshin_counter/resourses/images/talent_images.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class AllTalentsFragments {
  TalentsFragments freedom;
  TalentsFragments resistance;
  TalentsFragments ballad;
  TalentsFragments prosperity;
  TalentsFragments diligence;
  TalentsFragments gold;
  TalentsFragments transience;
  TalentsFragments elegance;
  TalentsFragments light;
  TalentsFragments admonition;
  TalentsFragments ingenuity;
  TalentsFragments praxis;
  AllTalentsFragments({
    required this.freedom,
    required this.resistance,
    required this.ballad,
    required this.prosperity,
    required this.diligence,
    required this.gold,
    required this.transience,
    required this.elegance,
    required this.light,
    required this.admonition,
    required this.ingenuity,
    required this.praxis,
  });
  RxList<TalentsFragments> allTalentsFragments() {
    return [
      freedom,
      resistance,
      ballad,
      prosperity,
      diligence,
      gold,
      transience,
      elegance,
      light,
      admonition,
      ingenuity,
      praxis,
    ].obs;
  }

  AllTalentsFragments copyWith({
    TalentsFragments? freedom,
    TalentsFragments? resistance,
    TalentsFragments? ballad,
    TalentsFragments? prosperity,
    TalentsFragments? diligence,
    TalentsFragments? gold,
    TalentsFragments? transience,
    TalentsFragments? elegance,
    TalentsFragments? light,
    TalentsFragments? admonition,
    TalentsFragments? ingenuity,
    TalentsFragments? praxis,
  }) {
    return AllTalentsFragments(
      freedom: freedom ?? this.freedom,
      resistance: resistance ?? this.resistance,
      ballad: ballad ?? this.ballad,
      prosperity: prosperity ?? this.prosperity,
      diligence: diligence ?? this.diligence,
      gold: gold ?? this.gold,
      transience: transience ?? this.transience,
      elegance: elegance ?? this.elegance,
      light: light ?? this.light,
      admonition: admonition ?? this.admonition,
      ingenuity: ingenuity ?? this.ingenuity,
      praxis: praxis ?? this.praxis,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'freedom': freedom.toMap()});
    result.addAll({'resistance': resistance.toMap()});
    result.addAll({'ballad': ballad.toMap()});
    result.addAll({'prosperity': prosperity.toMap()});
    result.addAll({'diligence': diligence.toMap()});
    result.addAll({'gold': gold.toMap()});
    result.addAll({'transience': transience.toMap()});
    result.addAll({'elegance': elegance.toMap()});
    result.addAll({'light': light.toMap()});
    result.addAll({'admonition': admonition.toMap()});
    result.addAll({'ingenuity': ingenuity.toMap()});
    result.addAll({'praxis': praxis.toMap()});

    return result;
  }

  factory AllTalentsFragments.fromMap(Map<String, dynamic> map) {
    return AllTalentsFragments(
      freedom: TalentsFragments.fromMap(map['freedom']),
      resistance: TalentsFragments.fromMap(map['resistance']),
      ballad: TalentsFragments.fromMap(map['ballad']),
      prosperity: TalentsFragments.fromMap(map['prosperity']),
      diligence: TalentsFragments.fromMap(map['diligence']),
      gold: TalentsFragments.fromMap(map['gold']),
      transience: TalentsFragments.fromMap(map['transience']),
      elegance: TalentsFragments.fromMap(map['elegance']),
      light: TalentsFragments.fromMap(map['light']),
      admonition: TalentsFragments.fromMap(map['admonition']),
      ingenuity: TalentsFragments.fromMap(map['ingenuity']),
      praxis: TalentsFragments.fromMap(map['praxis']),
    );
  }

  String toJson() => json.encode(toMap());

  factory AllTalentsFragments.fromJson(String source) =>
      AllTalentsFragments.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AllTalentsFragments(freedom: $freedom, resistance: $resistance, ballad: $ballad, prosperity: $prosperity, diligence: $diligence, gold: $gold, transience: $transience, elegance: $elegance, light: $light, admonition: $admonition, ingenuity: $ingenuity, praxis: $praxis)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AllTalentsFragments &&
        other.freedom == freedom &&
        other.resistance == resistance &&
        other.ballad == ballad &&
        other.prosperity == prosperity &&
        other.diligence == diligence &&
        other.gold == gold &&
        other.transience == transience &&
        other.elegance == elegance &&
        other.light == light &&
        other.admonition == admonition &&
        other.ingenuity == ingenuity &&
        other.praxis == praxis;
  }

  @override
  int get hashCode {
    return freedom.hashCode ^
        resistance.hashCode ^
        ballad.hashCode ^
        prosperity.hashCode ^
        diligence.hashCode ^
        gold.hashCode ^
        transience.hashCode ^
        elegance.hashCode ^
        light.hashCode ^
        admonition.hashCode ^
        ingenuity.hashCode ^
        praxis.hashCode;
  }
}

AllTalentsFragments allTalentsFragments = AllTalentsFragments(
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
    ));
