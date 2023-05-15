import 'dart:convert';

import 'package:genshin_counter/models/fragments.dart';
import 'package:genshin_counter/resourses/images/boss_material_image.dart';

class AllBossMaterial {
  Fragments basaltPillar;
  Fragments cleansingHeart;
  Fragments crystallineBloom;
  Fragments dewOfRepudiation;
  Fragments dragonheirFalseFin;
  Fragments everflameSeed;
  Fragments hoarfrostCore;
  Fragments hurricaneSeed;
  Fragments juvenileJade;
  Fragments lightningPrism;
  Fragments lightGuidingTetrahedron;
  Fragments majesticHookedBeak;
  Fragments marionetteCore;
  Fragments perpetualCaliber;
  Fragments perpetualHeart;
  Fragments quelledCreeper;
  Fragments riftbornRegalia;
  Fragments runicFang;
  Fragments smolderingPearl;
  Fragments stormBeads;
  Fragments thunderclapFruitcore;
  Fragments pseudoStamens;
  AllBossMaterial({
    required this.basaltPillar,
    required this.cleansingHeart,
    required this.crystallineBloom,
    required this.dewOfRepudiation,
    required this.dragonheirFalseFin,
    required this.everflameSeed,
    required this.hoarfrostCore,
    required this.hurricaneSeed,
    required this.juvenileJade,
    required this.lightningPrism,
    required this.lightGuidingTetrahedron,
    required this.majesticHookedBeak,
    required this.marionetteCore,
    required this.perpetualCaliber,
    required this.perpetualHeart,
    required this.quelledCreeper,
    required this.riftbornRegalia,
    required this.runicFang,
    required this.smolderingPearl,
    required this.stormBeads,
    required this.thunderclapFruitcore,
    required this.pseudoStamens,
  });

  List<Fragments> allBossMaterials() {
    return [
      basaltPillar,
      cleansingHeart,
      crystallineBloom,
      dewOfRepudiation,
      dragonheirFalseFin,
      everflameSeed,
      hoarfrostCore,
      hurricaneSeed,
      juvenileJade,
      lightningPrism,
      lightGuidingTetrahedron,
      majesticHookedBeak,
      marionetteCore,
      perpetualCaliber,
      perpetualHeart,
      quelledCreeper,
      riftbornRegalia,
      runicFang,
      smolderingPearl,
      stormBeads,
      thunderclapFruitcore,
      pseudoStamens,
    ];
  }

  AllBossMaterial copyWith({
    Fragments? basaltPillar,
    Fragments? cleansingHeart,
    Fragments? crystallineBloom,
    Fragments? dewOfRepudiation,
    Fragments? dragonheirFalseFin,
    Fragments? everflameSeed,
    Fragments? hoarfrostCore,
    Fragments? hurricaneSeed,
    Fragments? juvenileJade,
    Fragments? lightningPrism,
    Fragments? lightGuidingTetrahedron,
    Fragments? majesticHookedBeak,
    Fragments? marionetteCore,
    Fragments? perpetualCaliber,
    Fragments? perpetualHeart,
    Fragments? quelledCreeper,
    Fragments? riftbornRegalia,
    Fragments? runicFang,
    Fragments? smolderingPearl,
    Fragments? stormBeads,
    Fragments? thunderclapFruitcore,
    Fragments? pseudoStamens,
  }) {
    return AllBossMaterial(
      basaltPillar: basaltPillar ?? this.basaltPillar,
      cleansingHeart: cleansingHeart ?? this.cleansingHeart,
      crystallineBloom: crystallineBloom ?? this.crystallineBloom,
      dewOfRepudiation: dewOfRepudiation ?? this.dewOfRepudiation,
      dragonheirFalseFin: dragonheirFalseFin ?? this.dragonheirFalseFin,
      everflameSeed: everflameSeed ?? this.everflameSeed,
      hoarfrostCore: hoarfrostCore ?? this.hoarfrostCore,
      hurricaneSeed: hurricaneSeed ?? this.hurricaneSeed,
      juvenileJade: juvenileJade ?? this.juvenileJade,
      lightningPrism: lightningPrism ?? this.lightningPrism,
      lightGuidingTetrahedron:
          lightGuidingTetrahedron ?? this.lightGuidingTetrahedron,
      majesticHookedBeak: majesticHookedBeak ?? this.majesticHookedBeak,
      marionetteCore: marionetteCore ?? this.marionetteCore,
      perpetualCaliber: perpetualCaliber ?? this.perpetualCaliber,
      perpetualHeart: perpetualHeart ?? this.perpetualHeart,
      quelledCreeper: quelledCreeper ?? this.quelledCreeper,
      riftbornRegalia: riftbornRegalia ?? this.riftbornRegalia,
      runicFang: runicFang ?? this.runicFang,
      smolderingPearl: smolderingPearl ?? this.smolderingPearl,
      stormBeads: stormBeads ?? this.stormBeads,
      thunderclapFruitcore: thunderclapFruitcore ?? this.thunderclapFruitcore,
      pseudoStamens: pseudoStamens ?? this.pseudoStamens,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'basaltPillar': basaltPillar.toMap()});
    result.addAll({'cleansingHeart': cleansingHeart.toMap()});
    result.addAll({'crystallineBloom': crystallineBloom.toMap()});
    result.addAll({'dewOfRepudiation': dewOfRepudiation.toMap()});
    result.addAll({'dragonheirFalseFin': dragonheirFalseFin.toMap()});
    result.addAll({'everflameSeed': everflameSeed.toMap()});
    result.addAll({'hoarfrostCore': hoarfrostCore.toMap()});
    result.addAll({'hurricaneSeed': hurricaneSeed.toMap()});
    result.addAll({'juvenileJade': juvenileJade.toMap()});
    result.addAll({'lightningPrism': lightningPrism.toMap()});
    result.addAll({'lightGuidingTetrahedron': lightGuidingTetrahedron.toMap()});
    result.addAll({'majesticHookedBeak': majesticHookedBeak.toMap()});
    result.addAll({'marionetteCore': marionetteCore.toMap()});
    result.addAll({'perpetualCaliber': perpetualCaliber.toMap()});
    result.addAll({'perpetualHeart': perpetualHeart.toMap()});
    result.addAll({'quelledCreeper': quelledCreeper.toMap()});
    result.addAll({'riftbornRegalia': riftbornRegalia.toMap()});
    result.addAll({'runicFang': runicFang.toMap()});
    result.addAll({'smolderingPearl': smolderingPearl.toMap()});
    result.addAll({'stormBeads': stormBeads.toMap()});
    result.addAll({'thunderclapFruitcore': thunderclapFruitcore.toMap()});
    result.addAll({'pseudoStamens': pseudoStamens.toMap()});

    return result;
  }

  factory AllBossMaterial.fromMap(Map<String, dynamic> map) {
    return AllBossMaterial(
      basaltPillar: Fragments.fromMap(map['basaltPillar']),
      cleansingHeart: Fragments.fromMap(map['cleansingHeart']),
      crystallineBloom: Fragments.fromMap(map['crystallineBloom']),
      dewOfRepudiation: Fragments.fromMap(map['dewOfRepudiation']),
      dragonheirFalseFin: Fragments.fromMap(map['dragonheirFalseFin']),
      everflameSeed: Fragments.fromMap(map['everflameSeed']),
      hoarfrostCore: Fragments.fromMap(map['hoarfrostCore']),
      hurricaneSeed: Fragments.fromMap(map['hurricaneSeed']),
      juvenileJade: Fragments.fromMap(map['juvenileJade']),
      lightningPrism: Fragments.fromMap(map['lightningPrism']),
      lightGuidingTetrahedron:
          Fragments.fromMap(map['lightGuidingTetrahedron']),
      majesticHookedBeak: Fragments.fromMap(map['majesticHookedBeak']),
      marionetteCore: Fragments.fromMap(map['marionetteCore']),
      perpetualCaliber: Fragments.fromMap(map['perpetualCaliber']),
      perpetualHeart: Fragments.fromMap(map['perpetualHeart']),
      quelledCreeper: Fragments.fromMap(map['quelledCreeper']),
      riftbornRegalia: Fragments.fromMap(map['riftbornRegalia']),
      runicFang: Fragments.fromMap(map['runicFang']),
      smolderingPearl: Fragments.fromMap(map['smolderingPearl']),
      stormBeads: Fragments.fromMap(map['stormBeads']),
      thunderclapFruitcore: Fragments.fromMap(map['thunderclapFruitcore']),
      pseudoStamens: Fragments.fromMap(map['pseudoStamens']),
    );
  }

  String toJson() => json.encode(toMap());

  factory AllBossMaterial.fromJson(String source) =>
      AllBossMaterial.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AllBossMaterial(basaltPillar: $basaltPillar, cleansingHeart: $cleansingHeart, crystallineBloom: $crystallineBloom, dewOfRepudiation: $dewOfRepudiation, dragonheirFalseFin: $dragonheirFalseFin, everflameSeed: $everflameSeed, hoarfrostCore: $hoarfrostCore, hurricaneSeed: $hurricaneSeed, juvenileJade: $juvenileJade, lightningPrism: $lightningPrism, lightGuidingTetrahedron: $lightGuidingTetrahedron, majesticHookedBeak: $majesticHookedBeak, marionetteCore: $marionetteCore, perpetualCaliber: $perpetualCaliber, perpetualHeart: $perpetualHeart, quelledCreeper: $quelledCreeper, riftbornRegalia: $riftbornRegalia, runicFang: $runicFang, smolderingPearl: $smolderingPearl, stormBeads: $stormBeads, thunderclapFruitcore: $thunderclapFruitcore, pseudoStamens: $pseudoStamens)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AllBossMaterial &&
        other.basaltPillar == basaltPillar &&
        other.cleansingHeart == cleansingHeart &&
        other.crystallineBloom == crystallineBloom &&
        other.dewOfRepudiation == dewOfRepudiation &&
        other.dragonheirFalseFin == dragonheirFalseFin &&
        other.everflameSeed == everflameSeed &&
        other.hoarfrostCore == hoarfrostCore &&
        other.hurricaneSeed == hurricaneSeed &&
        other.juvenileJade == juvenileJade &&
        other.lightningPrism == lightningPrism &&
        other.lightGuidingTetrahedron == lightGuidingTetrahedron &&
        other.majesticHookedBeak == majesticHookedBeak &&
        other.marionetteCore == marionetteCore &&
        other.perpetualCaliber == perpetualCaliber &&
        other.perpetualHeart == perpetualHeart &&
        other.quelledCreeper == quelledCreeper &&
        other.riftbornRegalia == riftbornRegalia &&
        other.runicFang == runicFang &&
        other.smolderingPearl == smolderingPearl &&
        other.stormBeads == stormBeads &&
        other.thunderclapFruitcore == thunderclapFruitcore &&
        other.pseudoStamens == pseudoStamens;
  }

  @override
  int get hashCode {
    return basaltPillar.hashCode ^
        cleansingHeart.hashCode ^
        crystallineBloom.hashCode ^
        dewOfRepudiation.hashCode ^
        dragonheirFalseFin.hashCode ^
        everflameSeed.hashCode ^
        hoarfrostCore.hashCode ^
        hurricaneSeed.hashCode ^
        juvenileJade.hashCode ^
        lightningPrism.hashCode ^
        lightGuidingTetrahedron.hashCode ^
        majesticHookedBeak.hashCode ^
        marionetteCore.hashCode ^
        perpetualCaliber.hashCode ^
        perpetualHeart.hashCode ^
        quelledCreeper.hashCode ^
        riftbornRegalia.hashCode ^
        runicFang.hashCode ^
        smolderingPearl.hashCode ^
        stormBeads.hashCode ^
        thunderclapFruitcore.hashCode ^
        pseudoStamens.hashCode;
  }
}
