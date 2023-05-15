// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:genshin_counter/data/user_data.dart';
import 'package:genshin_counter/models/fragment_counter.dart';
import 'package:genshin_counter/models/fragments.dart';
import 'package:genshin_counter/models/hero.dart';

class AllMobFragments {
  MobFragments slime;
  MobFragments hilichurlMasks;
  MobFragments samachurlScrolls;
  MobFragments hilichurlArrowheads;
  MobFragments fatuiInsignia;
  MobFragments treasureHoarderInsignias;
  MobFragments whopperflowerNectars;
  MobFragments nobushiHandguards;
  MobFragments spectralCores;
  MobFragments fungalSporePowder;
  MobFragments redCloth;
  MobFragments hilichurlHorns;
  MobFragments leyLineBranches;
  MobFragments chaosParts;
  MobFragments mistGrasses;
  MobFragments sacrificialKnives;
  MobFragments boneShards;
  MobFragments sentinelChaosParts;
  MobFragments mirrorMaidenPrisms;
  MobFragments concealedRiftwolfClaws;
  MobFragments statuettes;
  MobFragments fungalNuclei;
  MobFragments drakeChaosParts;
  MobFragments primalConstructPrisms;
  AllMobFragments({
    required this.slime,
    required this.hilichurlMasks,
    required this.samachurlScrolls,
    required this.hilichurlArrowheads,
    required this.fatuiInsignia,
    required this.treasureHoarderInsignias,
    required this.whopperflowerNectars,
    required this.nobushiHandguards,
    required this.spectralCores,
    required this.fungalSporePowder,
    required this.redCloth,
    required this.hilichurlHorns,
    required this.leyLineBranches,
    required this.chaosParts,
    required this.mistGrasses,
    required this.sacrificialKnives,
    required this.boneShards,
    required this.sentinelChaosParts,
    required this.mirrorMaidenPrisms,
    required this.concealedRiftwolfClaws,
    required this.statuettes,
    required this.fungalNuclei,
    required this.drakeChaosParts,
    required this.primalConstructPrisms,
  });

  List<MobFragments> allMobFragments() {
    return [
      slime,
      hilichurlMasks,
      samachurlScrolls,
      hilichurlArrowheads,
      fatuiInsignia,
      treasureHoarderInsignias,
      whopperflowerNectars,
      nobushiHandguards,
      spectralCores,
      fungalSporePowder,
      redCloth,
      hilichurlHorns,
      leyLineBranches,
      chaosParts,
      mistGrasses,
      sacrificialKnives,
      boneShards,
      sentinelChaosParts,
      mirrorMaidenPrisms,
      concealedRiftwolfClaws,
      statuettes,
      fungalNuclei,
      drakeChaosParts,
      primalConstructPrisms
    ];
  }

  AllMobFragments copyWith({
    MobFragments? slime,
    MobFragments? hilichurlMasks,
    MobFragments? samachurlScrolls,
    MobFragments? hilichurlArrowheads,
    MobFragments? fatuiInsignia,
    MobFragments? treasureHoarderInsignias,
    MobFragments? whopperflowerNectars,
    MobFragments? nobushiHandguards,
    MobFragments? spectralCores,
    MobFragments? fungalSporePowder,
    MobFragments? redCloth,
    MobFragments? hilichurlHorns,
    MobFragments? leyLineBranches,
    MobFragments? chaosParts,
    MobFragments? mistGrasses,
    MobFragments? sacrificialKnives,
    MobFragments? boneShards,
    MobFragments? sentinelChaosParts,
    MobFragments? mirrorMaidenPrisms,
    MobFragments? concealedRiftwolfClaws,
    MobFragments? statuettes,
    MobFragments? fungalNuclei,
    MobFragments? drakeChaosParts,
    MobFragments? primalConstructPrisms,
  }) {
    return AllMobFragments(
      slime: slime ?? this.slime,
      hilichurlMasks: hilichurlMasks ?? this.hilichurlMasks,
      samachurlScrolls: samachurlScrolls ?? this.samachurlScrolls,
      hilichurlArrowheads: hilichurlArrowheads ?? this.hilichurlArrowheads,
      fatuiInsignia: fatuiInsignia ?? this.fatuiInsignia,
      treasureHoarderInsignias:
          treasureHoarderInsignias ?? this.treasureHoarderInsignias,
      whopperflowerNectars: whopperflowerNectars ?? this.whopperflowerNectars,
      nobushiHandguards: nobushiHandguards ?? this.nobushiHandguards,
      spectralCores: spectralCores ?? this.spectralCores,
      fungalSporePowder: fungalSporePowder ?? this.fungalSporePowder,
      redCloth: redCloth ?? this.redCloth,
      hilichurlHorns: hilichurlHorns ?? this.hilichurlHorns,
      leyLineBranches: leyLineBranches ?? this.leyLineBranches,
      chaosParts: chaosParts ?? this.chaosParts,
      mistGrasses: mistGrasses ?? this.mistGrasses,
      sacrificialKnives: sacrificialKnives ?? this.sacrificialKnives,
      boneShards: boneShards ?? this.boneShards,
      sentinelChaosParts: sentinelChaosParts ?? this.sentinelChaosParts,
      mirrorMaidenPrisms: mirrorMaidenPrisms ?? this.mirrorMaidenPrisms,
      concealedRiftwolfClaws:
          concealedRiftwolfClaws ?? this.concealedRiftwolfClaws,
      statuettes: statuettes ?? this.statuettes,
      fungalNuclei: fungalNuclei ?? this.fungalNuclei,
      drakeChaosParts: drakeChaosParts ?? this.drakeChaosParts,
      primalConstructPrisms:
          primalConstructPrisms ?? this.primalConstructPrisms,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slime': slime.toMap(),
      'hilichurlMasks': hilichurlMasks.toMap(),
      'samachurlScrolls': samachurlScrolls.toMap(),
      'hilichurlArrowheads': hilichurlArrowheads.toMap(),
      'fatuiInsignia': fatuiInsignia.toMap(),
      'treasureHoarderInsignias': treasureHoarderInsignias.toMap(),
      'whopperflowerNectars': whopperflowerNectars.toMap(),
      'nobushiHandguards': nobushiHandguards.toMap(),
      'spectralCores': spectralCores.toMap(),
      'fungalSporePowder': fungalSporePowder.toMap(),
      'redCloth': redCloth.toMap(),
      'hilichurlHorns': hilichurlHorns.toMap(),
      'leyLineBranches': leyLineBranches.toMap(),
      'chaosParts': chaosParts.toMap(),
      'mistGrasses': mistGrasses.toMap(),
      'sacrificialKnives': sacrificialKnives.toMap(),
      'boneShards': boneShards.toMap(),
      'sentinelChaosParts': sentinelChaosParts.toMap(),
      'mirrorMaidenPrisms': mirrorMaidenPrisms.toMap(),
      'concealedRiftwolfClaws': concealedRiftwolfClaws.toMap(),
      'statuettes': statuettes.toMap(),
      'fungalNuclei': fungalNuclei.toMap(),
      'drakeChaosParts': drakeChaosParts.toMap(),
      'primalConstructPrisms': primalConstructPrisms.toMap(),
    };
  }

  factory AllMobFragments.fromMap(Map<String, dynamic> map) {
    return AllMobFragments(
      slime: MobFragments.fromMap(map['slime'] as Map<String, dynamic>),
      hilichurlMasks:
          MobFragments.fromMap(map['hilichurlMasks'] as Map<String, dynamic>),
      samachurlScrolls:
          MobFragments.fromMap(map['samachurlScrolls'] as Map<String, dynamic>),
      hilichurlArrowheads: MobFragments.fromMap(
          map['hilichurlArrowheads'] as Map<String, dynamic>),
      fatuiInsignia:
          MobFragments.fromMap(map['fatuiInsignia'] as Map<String, dynamic>),
      treasureHoarderInsignias: MobFragments.fromMap(
          map['treasureHoarderInsignias'] as Map<String, dynamic>),
      whopperflowerNectars: MobFragments.fromMap(
          map['whopperflowerNectars'] as Map<String, dynamic>),
      nobushiHandguards: MobFragments.fromMap(
          map['nobushiHandguards'] as Map<String, dynamic>),
      spectralCores:
          MobFragments.fromMap(map['spectralCores'] as Map<String, dynamic>),
      fungalSporePowder: MobFragments.fromMap(
          map['fungalSporePowder'] as Map<String, dynamic>),
      redCloth: MobFragments.fromMap(map['redCloth'] as Map<String, dynamic>),
      hilichurlHorns:
          MobFragments.fromMap(map['hilichurlHorns'] as Map<String, dynamic>),
      leyLineBranches:
          MobFragments.fromMap(map['leyLineBranches'] as Map<String, dynamic>),
      chaosParts:
          MobFragments.fromMap(map['chaosParts'] as Map<String, dynamic>),
      mistGrasses:
          MobFragments.fromMap(map['mistGrasses'] as Map<String, dynamic>),
      sacrificialKnives: MobFragments.fromMap(
          map['sacrificialKnives'] as Map<String, dynamic>),
      boneShards:
          MobFragments.fromMap(map['boneShards'] as Map<String, dynamic>),
      sentinelChaosParts: MobFragments.fromMap(
          map['sentinelChaosParts'] as Map<String, dynamic>),
      mirrorMaidenPrisms: MobFragments.fromMap(
          map['mirrorMaidenPrisms'] as Map<String, dynamic>),
      concealedRiftwolfClaws: MobFragments.fromMap(
          map['concealedRiftwolfClaws'] as Map<String, dynamic>),
      statuettes:
          MobFragments.fromMap(map['statuettes'] as Map<String, dynamic>),
      fungalNuclei:
          MobFragments.fromMap(map['fungalNuclei'] as Map<String, dynamic>),
      drakeChaosParts:
          MobFragments.fromMap(map['drakeChaosParts'] as Map<String, dynamic>),
      primalConstructPrisms: MobFragments.fromMap(
          map['primalConstructPrisms'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory AllMobFragments.fromJson(String source) =>
      AllMobFragments.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AllMobFragments(slime: $slime, hilichurlMasks: $hilichurlMasks, samachurlScrolls: $samachurlScrolls, hilichurlArrowheads: $hilichurlArrowheads, fatuiInsignia: $fatuiInsignia, treasureHoarderInsignias: $treasureHoarderInsignias, whopperflowerNectars: $whopperflowerNectars, nobushiHandguards: $nobushiHandguards, spectralCores: $spectralCores, fungalSporePowder: $fungalSporePowder, redCloth: $redCloth, hilichurlHorns: $hilichurlHorns, leyLineBranches: $leyLineBranches, chaosParts: $chaosParts, mistGrasses: $mistGrasses, sacrificialKnives: $sacrificialKnives, boneShards: $boneShards, sentinelChaosParts: $sentinelChaosParts, mirrorMaidenPrisms: $mirrorMaidenPrisms, concealedRiftwolfClaws: $concealedRiftwolfClaws, statuettes: $statuettes, fungalNuclei: $fungalNuclei, drakeChaosParts: $drakeChaosParts, primalConstructPrisms: $primalConstructPrisms)';
  }

  @override
  bool operator ==(covariant AllMobFragments other) {
    if (identical(this, other)) return true;

    return other.slime == slime &&
        other.hilichurlMasks == hilichurlMasks &&
        other.samachurlScrolls == samachurlScrolls &&
        other.hilichurlArrowheads == hilichurlArrowheads &&
        other.fatuiInsignia == fatuiInsignia &&
        other.treasureHoarderInsignias == treasureHoarderInsignias &&
        other.whopperflowerNectars == whopperflowerNectars &&
        other.nobushiHandguards == nobushiHandguards &&
        other.spectralCores == spectralCores &&
        other.fungalSporePowder == fungalSporePowder &&
        other.redCloth == redCloth &&
        other.hilichurlHorns == hilichurlHorns &&
        other.leyLineBranches == leyLineBranches &&
        other.chaosParts == chaosParts &&
        other.mistGrasses == mistGrasses &&
        other.sacrificialKnives == sacrificialKnives &&
        other.boneShards == boneShards &&
        other.sentinelChaosParts == sentinelChaosParts &&
        other.mirrorMaidenPrisms == mirrorMaidenPrisms &&
        other.concealedRiftwolfClaws == concealedRiftwolfClaws &&
        other.statuettes == statuettes &&
        other.fungalNuclei == fungalNuclei &&
        other.drakeChaosParts == drakeChaosParts &&
        other.primalConstructPrisms == primalConstructPrisms;
  }

  @override
  int get hashCode {
    return slime.hashCode ^
        hilichurlMasks.hashCode ^
        samachurlScrolls.hashCode ^
        hilichurlArrowheads.hashCode ^
        fatuiInsignia.hashCode ^
        treasureHoarderInsignias.hashCode ^
        whopperflowerNectars.hashCode ^
        nobushiHandguards.hashCode ^
        spectralCores.hashCode ^
        fungalSporePowder.hashCode ^
        redCloth.hashCode ^
        hilichurlHorns.hashCode ^
        leyLineBranches.hashCode ^
        chaosParts.hashCode ^
        mistGrasses.hashCode ^
        sacrificialKnives.hashCode ^
        boneShards.hashCode ^
        sentinelChaosParts.hashCode ^
        mirrorMaidenPrisms.hashCode ^
        concealedRiftwolfClaws.hashCode ^
        statuettes.hashCode ^
        fungalNuclei.hashCode ^
        drakeChaosParts.hashCode ^
        primalConstructPrisms.hashCode;
  }
}

class MobFragments {
  Fragments lvl1;
  Fragments lvl2;
  Fragments lvl3;
  String name;
  MobFragments({
    required this.lvl1,
    required this.lvl2,
    required this.lvl3,
    required this.name,
  });

  bool isCompleted(bool? showNeeded) {
    final have = userData.value.mobFragments
        .allMobFragments()
        .where((element) => element.name == name)
        .first;
    final remainderLvl1 = have.lvl1.count - lvl1.count;
    final remainderLvl2 = (have.lvl2.count + (remainderLvl1 ~/ 3)) - lvl2.count;
    final remainderLvl3 = (have.lvl3.count + (remainderLvl2 ~/ 3)) - lvl3.count;
    final isCompleteMobFragment =
        remainderLvl1 >= 0 && remainderLvl2 >= 0 && remainderLvl3 >= 0;

    return showNeeded == null ||
        (showNeeded && !isCompleteMobFragment) ||
        (!showNeeded && isCompleteMobFragment);
  }

  MobFragments copyWith({
    Fragments? lvl1,
    Fragments? lvl2,
    Fragments? lvl3,
    String? name,
  }) {
    return MobFragments(
      lvl1: lvl1 ?? this.lvl1,
      lvl2: lvl2 ?? this.lvl2,
      lvl3: lvl3 ?? this.lvl3,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lvl1': lvl1.toMap(),
      'lvl2': lvl2.toMap(),
      'lvl3': lvl3.toMap(),
      'name': name,
    };
  }

  factory MobFragments.fromMap(Map<String, dynamic> map) {
    return MobFragments(
      lvl1: Fragments.fromMap(map['lvl1'] as Map<String, dynamic>),
      lvl2: Fragments.fromMap(map['lvl2'] as Map<String, dynamic>),
      lvl3: Fragments.fromMap(map['lvl3'] as Map<String, dynamic>),
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MobFragments.fromJson(String source) =>
      MobFragments.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MobFragments(lvl1: $lvl1, lvl2: $lvl2, lvl3: $lvl3, name: $name)';
  }

  @override
  bool operator ==(covariant MobFragments other) {
    if (identical(this, other)) return true;

    return other.lvl1 == lvl1 &&
        other.lvl2 == lvl2 &&
        other.lvl3 == lvl3 &&
        other.name == name;
  }

  @override
  int get hashCode {
    return lvl1.hashCode ^ lvl2.hashCode ^ lvl3.hashCode ^ name.hashCode;
  }
}
