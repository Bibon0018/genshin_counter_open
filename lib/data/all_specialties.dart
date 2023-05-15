// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:genshin_counter/models/fragments.dart';

class AllSpecialties {
  Fragments amakumoFruit;
  Fragments callaLily;
  Fragments cecilia;
  Fragments corLapis;
  Fragments crystalMarrow;
  Fragments dandelionSeed;
  Fragments dendrobium;
  Fragments fluorescentFungus;
  Fragments glazeLily;
  Fragments hennaBerry;
  Fragments jueyunChili;
  Fragments kalpalataLotus;
  Fragments nakuWeed;
  Fragments nilotpalaLotus;
  Fragments noctilucousJade;
  Fragments onikabuto;
  Fragments philanemoMushroom;
  Fragments qingxin;
  Fragments rukkhashavaMushrooms;
  Fragments sakuraBloom;
  Fragments sangoPearl;
  Fragments scarab;
  Fragments seaGanoderma;
  Fragments silkFlower;
  Fragments smallLampGrass;
  Fragments starconch;
  Fragments valberry;
  Fragments violetgrass;
  Fragments windwheelAster;
  Fragments wolfhook;
  Fragments padisarah;
  Fragments sandGreasePupa;
  AllSpecialties({
    required this.amakumoFruit,
    required this.callaLily,
    required this.cecilia,
    required this.corLapis,
    required this.crystalMarrow,
    required this.dandelionSeed,
    required this.dendrobium,
    required this.fluorescentFungus,
    required this.glazeLily,
    required this.hennaBerry,
    required this.jueyunChili,
    required this.kalpalataLotus,
    required this.nakuWeed,
    required this.nilotpalaLotus,
    required this.noctilucousJade,
    required this.onikabuto,
    required this.philanemoMushroom,
    required this.qingxin,
    required this.rukkhashavaMushrooms,
    required this.sakuraBloom,
    required this.sangoPearl,
    required this.scarab,
    required this.seaGanoderma,
    required this.silkFlower,
    required this.smallLampGrass,
    required this.starconch,
    required this.valberry,
    required this.violetgrass,
    required this.windwheelAster,
    required this.wolfhook,
    required this.padisarah,
    required this.sandGreasePupa,
  });
  
 List<Fragments> allSpecialties() {
    return [
      amakumoFruit,
      callaLily,
      cecilia,
      corLapis,
      crystalMarrow,
      dandelionSeed,
      dendrobium,
      fluorescentFungus,
      glazeLily,
      hennaBerry,
      jueyunChili,
      kalpalataLotus,
      nakuWeed,
      nilotpalaLotus,
      noctilucousJade,
      onikabuto,
      philanemoMushroom,
      qingxin,
      rukkhashavaMushrooms,
      sakuraBloom,
      sangoPearl,
      scarab,
      seaGanoderma,
      silkFlower,
      smallLampGrass,
      starconch,
      valberry,
      violetgrass,
      windwheelAster,
      wolfhook,
      padisarah,
      sandGreasePupa,
    ];
  }
  AllSpecialties copyWith({
    Fragments? amakumoFruit,
    Fragments? callaLily,
    Fragments? cecilia,
    Fragments? corLapis,
    Fragments? crystalMarrow,
    Fragments? dandelionSeed,
    Fragments? dendrobium,
    Fragments? fluorescentFungus,
    Fragments? glazeLily,
    Fragments? hennaBerry,
    Fragments? jueyunChili,
    Fragments? kalpalataLotus,
    Fragments? nakuWeed,
    Fragments? nilotpalaLotus,
    Fragments? noctilucousJade,
    Fragments? onikabuto,
    Fragments? philanemoMushroom,
    Fragments? qingxin,
    Fragments? rukkhashavaMushrooms,
    Fragments? sakuraBloom,
    Fragments? sangoPearl,
    Fragments? scarab,
    Fragments? seaGanoderma,
    Fragments? silkFlower,
    Fragments? smallLampGrass,
    Fragments? starconch,
    Fragments? valberry,
    Fragments? violetgrass,
    Fragments? windwheelAster,
    Fragments? wolfhook,
    Fragments? padisarah,
    Fragments? sandGreasePupa,
  }) {
    return AllSpecialties(
      amakumoFruit: amakumoFruit ?? this.amakumoFruit,
      callaLily: callaLily ?? this.callaLily,
      cecilia: cecilia ?? this.cecilia,
      corLapis: corLapis ?? this.corLapis,
      crystalMarrow: crystalMarrow ?? this.crystalMarrow,
      dandelionSeed: dandelionSeed ?? this.dandelionSeed,
      dendrobium: dendrobium ?? this.dendrobium,
      fluorescentFungus: fluorescentFungus ?? this.fluorescentFungus,
      glazeLily: glazeLily ?? this.glazeLily,
      hennaBerry: hennaBerry ?? this.hennaBerry,
      jueyunChili: jueyunChili ?? this.jueyunChili,
      kalpalataLotus: kalpalataLotus ?? this.kalpalataLotus,
      nakuWeed: nakuWeed ?? this.nakuWeed,
      nilotpalaLotus: nilotpalaLotus ?? this.nilotpalaLotus,
      noctilucousJade: noctilucousJade ?? this.noctilucousJade,
      onikabuto: onikabuto ?? this.onikabuto,
      philanemoMushroom: philanemoMushroom ?? this.philanemoMushroom,
      qingxin: qingxin ?? this.qingxin,
      rukkhashavaMushrooms: rukkhashavaMushrooms ?? this.rukkhashavaMushrooms,
      sakuraBloom: sakuraBloom ?? this.sakuraBloom,
      sangoPearl: sangoPearl ?? this.sangoPearl,
      scarab: scarab ?? this.scarab,
      seaGanoderma: seaGanoderma ?? this.seaGanoderma,
      silkFlower: silkFlower ?? this.silkFlower,
      smallLampGrass: smallLampGrass ?? this.smallLampGrass,
      starconch: starconch ?? this.starconch,
      valberry: valberry ?? this.valberry,
      violetgrass: violetgrass ?? this.violetgrass,
      windwheelAster: windwheelAster ?? this.windwheelAster,
      wolfhook: wolfhook ?? this.wolfhook,
      padisarah: padisarah ?? this.padisarah,
      sandGreasePupa: sandGreasePupa ?? this.sandGreasePupa,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amakumoFruit': amakumoFruit.toMap(),
      'callaLily': callaLily.toMap(),
      'cecilia': cecilia.toMap(),
      'corLapis': corLapis.toMap(),
      'crystalMarrow': crystalMarrow.toMap(),
      'dandelionSeed': dandelionSeed.toMap(),
      'dendrobium': dendrobium.toMap(),
      'fluorescentFungus': fluorescentFungus.toMap(),
      'glazeLily': glazeLily.toMap(),
      'hennaBerry': hennaBerry.toMap(),
      'jueyunChili': jueyunChili.toMap(),
      'kalpalataLotus': kalpalataLotus.toMap(),
      'nakuWeed': nakuWeed.toMap(),
      'nilotpalaLotus': nilotpalaLotus.toMap(),
      'noctilucousJade': noctilucousJade.toMap(),
      'onikabuto': onikabuto.toMap(),
      'philanemoMushroom': philanemoMushroom.toMap(),
      'qingxin': qingxin.toMap(),
      'rukkhashavaMushrooms': rukkhashavaMushrooms.toMap(),
      'sakuraBloom': sakuraBloom.toMap(),
      'sangoPearl': sangoPearl.toMap(),
      'scarab': scarab.toMap(),
      'seaGanoderma': seaGanoderma.toMap(),
      'silkFlower': silkFlower.toMap(),
      'smallLampGrass': smallLampGrass.toMap(),
      'starconch': starconch.toMap(),
      'valberry': valberry.toMap(),
      'violetgrass': violetgrass.toMap(),
      'windwheelAster': windwheelAster.toMap(),
      'wolfhook': wolfhook.toMap(),
      'padisarah': padisarah.toMap(),
      'sandGreasePupa': sandGreasePupa.toMap(),
    };
  }

  factory AllSpecialties.fromMap(Map<String, dynamic> map) {
    return AllSpecialties(
      amakumoFruit: Fragments.fromMap(map['amakumoFruit'] as Map<String,dynamic>),
      callaLily: Fragments.fromMap(map['callaLily'] as Map<String,dynamic>),
      cecilia: Fragments.fromMap(map['cecilia'] as Map<String,dynamic>),
      corLapis: Fragments.fromMap(map['corLapis'] as Map<String,dynamic>),
      crystalMarrow: Fragments.fromMap(map['crystalMarrow'] as Map<String,dynamic>),
      dandelionSeed: Fragments.fromMap(map['dandelionSeed'] as Map<String,dynamic>),
      dendrobium: Fragments.fromMap(map['dendrobium'] as Map<String,dynamic>),
      fluorescentFungus: Fragments.fromMap(map['fluorescentFungus'] as Map<String,dynamic>),
      glazeLily: Fragments.fromMap(map['glazeLily'] as Map<String,dynamic>),
      hennaBerry: Fragments.fromMap(map['hennaBerry'] as Map<String,dynamic>),
      jueyunChili: Fragments.fromMap(map['jueyunChili'] as Map<String,dynamic>),
      kalpalataLotus: Fragments.fromMap(map['kalpalataLotus'] as Map<String,dynamic>),
      nakuWeed: Fragments.fromMap(map['nakuWeed'] as Map<String,dynamic>),
      nilotpalaLotus: Fragments.fromMap(map['nilotpalaLotus'] as Map<String,dynamic>),
      noctilucousJade: Fragments.fromMap(map['noctilucousJade'] as Map<String,dynamic>),
      onikabuto: Fragments.fromMap(map['onikabuto'] as Map<String,dynamic>),
      philanemoMushroom: Fragments.fromMap(map['philanemoMushroom'] as Map<String,dynamic>),
      qingxin: Fragments.fromMap(map['qingxin'] as Map<String,dynamic>),
      rukkhashavaMushrooms: Fragments.fromMap(map['rukkhashavaMushrooms'] as Map<String,dynamic>),
      sakuraBloom: Fragments.fromMap(map['sakuraBloom'] as Map<String,dynamic>),
      sangoPearl: Fragments.fromMap(map['sangoPearl'] as Map<String,dynamic>),
      scarab: Fragments.fromMap(map['scarab'] as Map<String,dynamic>),
      seaGanoderma: Fragments.fromMap(map['seaGanoderma'] as Map<String,dynamic>),
      silkFlower: Fragments.fromMap(map['silkFlower'] as Map<String,dynamic>),
      smallLampGrass: Fragments.fromMap(map['smallLampGrass'] as Map<String,dynamic>),
      starconch: Fragments.fromMap(map['starconch'] as Map<String,dynamic>),
      valberry: Fragments.fromMap(map['valberry'] as Map<String,dynamic>),
      violetgrass: Fragments.fromMap(map['violetgrass'] as Map<String,dynamic>),
      windwheelAster: Fragments.fromMap(map['windwheelAster'] as Map<String,dynamic>),
      wolfhook: Fragments.fromMap(map['wolfhook'] as Map<String,dynamic>),
      padisarah: Fragments.fromMap(map['padisarah'] as Map<String,dynamic>),
      sandGreasePupa: Fragments.fromMap(map['sandGreasePupa'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory AllSpecialties.fromJson(String source) => AllSpecialties.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AllSpecialties(amakumoFruit: $amakumoFruit, callaLily: $callaLily, cecilia: $cecilia, corLapis: $corLapis, crystalMarrow: $crystalMarrow, dandelionSeed: $dandelionSeed, dendrobium: $dendrobium, fluorescentFungus: $fluorescentFungus, glazeLily: $glazeLily, hennaBerry: $hennaBerry, jueyunChili: $jueyunChili, kalpalataLotus: $kalpalataLotus, nakuWeed: $nakuWeed, nilotpalaLotus: $nilotpalaLotus, noctilucousJade: $noctilucousJade, onikabuto: $onikabuto, philanemoMushroom: $philanemoMushroom, qingxin: $qingxin, rukkhashavaMushrooms: $rukkhashavaMushrooms, sakuraBloom: $sakuraBloom, sangoPearl: $sangoPearl, scarab: $scarab, seaGanoderma: $seaGanoderma, silkFlower: $silkFlower, smallLampGrass: $smallLampGrass, starconch: $starconch, valberry: $valberry, violetgrass: $violetgrass, windwheelAster: $windwheelAster, wolfhook: $wolfhook, padisarah: $padisarah, sandGreasePupa: $sandGreasePupa)';
  }

  @override
  bool operator ==(covariant AllSpecialties other) {
    if (identical(this, other)) return true;
  
    return 
      other.amakumoFruit == amakumoFruit &&
      other.callaLily == callaLily &&
      other.cecilia == cecilia &&
      other.corLapis == corLapis &&
      other.crystalMarrow == crystalMarrow &&
      other.dandelionSeed == dandelionSeed &&
      other.dendrobium == dendrobium &&
      other.fluorescentFungus == fluorescentFungus &&
      other.glazeLily == glazeLily &&
      other.hennaBerry == hennaBerry &&
      other.jueyunChili == jueyunChili &&
      other.kalpalataLotus == kalpalataLotus &&
      other.nakuWeed == nakuWeed &&
      other.nilotpalaLotus == nilotpalaLotus &&
      other.noctilucousJade == noctilucousJade &&
      other.onikabuto == onikabuto &&
      other.philanemoMushroom == philanemoMushroom &&
      other.qingxin == qingxin &&
      other.rukkhashavaMushrooms == rukkhashavaMushrooms &&
      other.sakuraBloom == sakuraBloom &&
      other.sangoPearl == sangoPearl &&
      other.scarab == scarab &&
      other.seaGanoderma == seaGanoderma &&
      other.silkFlower == silkFlower &&
      other.smallLampGrass == smallLampGrass &&
      other.starconch == starconch &&
      other.valberry == valberry &&
      other.violetgrass == violetgrass &&
      other.windwheelAster == windwheelAster &&
      other.wolfhook == wolfhook &&
      other.padisarah == padisarah
      &&other.sandGreasePupa == sandGreasePupa
      
      ;
  }

  @override
  int get hashCode {
    return amakumoFruit.hashCode ^
      callaLily.hashCode ^
      cecilia.hashCode ^
      corLapis.hashCode ^
      crystalMarrow.hashCode ^
      dandelionSeed.hashCode ^
      dendrobium.hashCode ^
      fluorescentFungus.hashCode ^
      glazeLily.hashCode ^
      hennaBerry.hashCode ^
      jueyunChili.hashCode ^
      kalpalataLotus.hashCode ^
      nakuWeed.hashCode ^
      nilotpalaLotus.hashCode ^
      noctilucousJade.hashCode ^
      onikabuto.hashCode ^
      philanemoMushroom.hashCode ^
      qingxin.hashCode ^
      rukkhashavaMushrooms.hashCode ^
      sakuraBloom.hashCode ^
      sangoPearl.hashCode ^
      scarab.hashCode ^
      seaGanoderma.hashCode ^
      silkFlower.hashCode ^
      smallLampGrass.hashCode ^
      starconch.hashCode ^
      valberry.hashCode ^
      violetgrass.hashCode ^
      windwheelAster.hashCode ^
      wolfhook.hashCode ^
      padisarah.hashCode
      ^sandGreasePupa.hashCode
      ;
  }
}
