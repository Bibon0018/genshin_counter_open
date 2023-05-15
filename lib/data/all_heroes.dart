// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:genshin_counter/data/user_data.dart';
import 'package:genshin_counter/models/fragments.dart';
import 'package:genshin_counter/models/hero.dart';
import 'package:genshin_counter/resourses/images/hero_image.dart';
import 'package:get/get.dart';

class AllHeroes {
  Hero albedo;
  Hero fischl;
  Hero nahida;
  Hero venti;
  Hero aloy;
  Hero ganyu;
  Hero nilou;
  Hero wanderer;
  Hero amber;
  Hero gorou;
  Hero ningguang;
  Hero xiangling;
  Hero aratakiItto;
  Hero huTao;
  Hero noelle;
  Hero xiao;
  Hero barbara;
  Hero jean;
  Hero qiqi;
  Hero xingqiu;
  Hero beidou;
  Hero kaedeharaKazuha;
  Hero raidenShogun;
  Hero xinyan;
  Hero bennett;
  Hero kaeya;
  Hero razor;
  Hero yaeMiko;
  Hero candace;
  Hero kamisatoAyaka;
  Hero rosaria;
  Hero yanfei;
  Hero chongyun;
  Hero kamisatoAyato;
  Hero sangonomiyaKokomi;
  Hero yelan;
  Hero collei;
  Hero keqing;
  Hero sayu;
  Hero yoimiya;
  Hero cyno;
  Hero klee;
  Hero shenhe;
  Hero yunJin;
  Hero diluc;
  Hero kujouSara;
  Hero shikanoinHeizou;
  Hero zhongli;
  Hero diona;
  Hero kukiShinobu;
  Hero sucrose;
  Hero dori;
  Hero layla;
  Hero tartaglia;
  Hero eula;
  Hero lisa;
  Hero thoma;
  Hero faruzan;
  Hero mona;
  Hero tighnari;
  Hero alhatham;

  AllHeroes({
    required this.albedo,
    required this.fischl,
    required this.nahida,
    required this.venti,
    required this.aloy,
    required this.ganyu,
    required this.nilou,
    required this.wanderer,
    required this.amber,
    required this.gorou,
    required this.ningguang,
    required this.xiangling,
    required this.aratakiItto,
    required this.huTao,
    required this.noelle,
    required this.xiao,
    required this.barbara,
    required this.jean,
    required this.qiqi,
    required this.xingqiu,
    required this.beidou,
    required this.kaedeharaKazuha,
    required this.raidenShogun,
    required this.xinyan,
    required this.bennett,
    required this.kaeya,
    required this.razor,
    required this.yaeMiko,
    required this.candace,
    required this.kamisatoAyaka,
    required this.rosaria,
    required this.yanfei,
    required this.chongyun,
    required this.kamisatoAyato,
    required this.sangonomiyaKokomi,
    required this.yelan,
    required this.collei,
    required this.keqing,
    required this.sayu,
    required this.yoimiya,
    required this.cyno,
    required this.klee,
    required this.shenhe,
    required this.yunJin,
    required this.diluc,
    required this.kujouSara,
    required this.shikanoinHeizou,
    required this.zhongli,
    required this.diona,
    required this.kukiShinobu,
    required this.sucrose,
    required this.dori,
    required this.layla,
    required this.tartaglia,
    required this.eula,
    required this.lisa,
    required this.thoma,
    required this.faruzan,
    required this.mona,
    required this.tighnari,
    required this.alhatham,
  });

  RxList<Hero> allHero() {
    List<Hero> heroes = [
      albedo,
      fischl,
      nahida,
      venti,
      aloy,
      ganyu,
      nilou,
      wanderer,
      amber,
      gorou,
      ningguang,
      xiangling,
      aratakiItto,
      huTao,
      noelle,
      xiao,
      barbara,
      jean,
      qiqi,
      xingqiu,
      beidou,
      kaedeharaKazuha,
      raidenShogun,
      xinyan,
      bennett,
      kaeya,
      razor,
      yaeMiko,
      candace,
      kamisatoAyaka,
      rosaria,
      yanfei,
      chongyun,
      kamisatoAyato,
      sangonomiyaKokomi,
      yelan,
      collei,
      keqing,
      sayu,
      yoimiya,
      cyno,
      klee,
      shenhe,
      yunJin,
      diluc,
      kujouSara,
      shikanoinHeizou,
      zhongli,
      diona,
      kukiShinobu,
      sucrose,
      dori,
      layla,
      tartaglia,
      eula,
      lisa,
      thoma,
      faruzan,
      mona,
      tighnari,
      alhatham,
    ];
    return [
      ...heroes.where((e) => e.isHave == true),
      ...heroes.where((e) => e.isHave == false),
    ].obs;
  }

  AllHeroes copyWith({
    Hero? albedo,
    Hero? fischl,
    Hero? nahida,
    Hero? venti,
    Hero? aloy,
    Hero? ganyu,
    Hero? nilou,
    Hero? wanderer,
    Hero? amber,
    Hero? gorou,
    Hero? ningguang,
    Hero? xiangling,
    Hero? aratakiItto,
    Hero? huTao,
    Hero? noelle,
    Hero? xiao,
    Hero? barbara,
    Hero? jean,
    Hero? qiqi,
    Hero? xingqiu,
    Hero? beidou,
    Hero? kaedeharaKazuha,
    Hero? raidenShogun,
    Hero? xinyan,
    Hero? bennett,
    Hero? kaeya,
    Hero? razor,
    Hero? yaeMiko,
    Hero? candace,
    Hero? kamisatoAyaka,
    Hero? rosaria,
    Hero? yanfei,
    Hero? chongyun,
    Hero? kamisatoAyato,
    Hero? sangonomiyaKokomi,
    Hero? yelan,
    Hero? collei,
    Hero? keqing,
    Hero? sayu,
    Hero? yoimiya,
    Hero? cyno,
    Hero? klee,
    Hero? shenhe,
    Hero? yunJin,
    Hero? diluc,
    Hero? kujouSara,
    Hero? shikanoinHeizou,
    Hero? zhongli,
    Hero? diona,
    Hero? kukiShinobu,
    Hero? sucrose,
    Hero? dori,
    Hero? layla,
    Hero? tartaglia,
    Hero? eula,
    Hero? lisa,
    Hero? thoma,
    Hero? faruzan,
    Hero? mona,
    Hero? tighnari,
    Hero? alhatham,
  }) {
    return AllHeroes(
      albedo: albedo ?? this.albedo,
      fischl: fischl ?? this.fischl,
      nahida: nahida ?? this.nahida,
      venti: venti ?? this.venti,
      aloy: aloy ?? this.aloy,
      ganyu: ganyu ?? this.ganyu,
      nilou: nilou ?? this.nilou,
      wanderer: wanderer ?? this.wanderer,
      amber: amber ?? this.amber,
      gorou: gorou ?? this.gorou,
      ningguang: ningguang ?? this.ningguang,
      xiangling: xiangling ?? this.xiangling,
      aratakiItto: aratakiItto ?? this.aratakiItto,
      huTao: huTao ?? this.huTao,
      noelle: noelle ?? this.noelle,
      xiao: xiao ?? this.xiao,
      barbara: barbara ?? this.barbara,
      jean: jean ?? this.jean,
      qiqi: qiqi ?? this.qiqi,
      xingqiu: xingqiu ?? this.xingqiu,
      beidou: beidou ?? this.beidou,
      kaedeharaKazuha: kaedeharaKazuha ?? this.kaedeharaKazuha,
      raidenShogun: raidenShogun ?? this.raidenShogun,
      xinyan: xinyan ?? this.xinyan,
      bennett: bennett ?? this.bennett,
      kaeya: kaeya ?? this.kaeya,
      razor: razor ?? this.razor,
      yaeMiko: yaeMiko ?? this.yaeMiko,
      candace: candace ?? this.candace,
      kamisatoAyaka: kamisatoAyaka ?? this.kamisatoAyaka,
      rosaria: rosaria ?? this.rosaria,
      yanfei: yanfei ?? this.yanfei,
      chongyun: chongyun ?? this.chongyun,
      kamisatoAyato: kamisatoAyato ?? this.kamisatoAyato,
      sangonomiyaKokomi: sangonomiyaKokomi ?? this.sangonomiyaKokomi,
      yelan: yelan ?? this.yelan,
      collei: collei ?? this.collei,
      keqing: keqing ?? this.keqing,
      sayu: sayu ?? this.sayu,
      yoimiya: yoimiya ?? this.yoimiya,
      cyno: cyno ?? this.cyno,
      klee: klee ?? this.klee,
      shenhe: shenhe ?? this.shenhe,
      yunJin: yunJin ?? this.yunJin,
      diluc: diluc ?? this.diluc,
      kujouSara: kujouSara ?? this.kujouSara,
      shikanoinHeizou: shikanoinHeizou ?? this.shikanoinHeizou,
      zhongli: zhongli ?? this.zhongli,
      diona: diona ?? this.diona,
      kukiShinobu: kukiShinobu ?? this.kukiShinobu,
      sucrose: sucrose ?? this.sucrose,
      dori: dori ?? this.dori,
      layla: layla ?? this.layla,
      tartaglia: tartaglia ?? this.tartaglia,
      eula: eula ?? this.eula,
      lisa: lisa ?? this.lisa,
      thoma: thoma ?? this.thoma,
      faruzan: faruzan ?? this.faruzan,
      mona: mona ?? this.mona,
      tighnari: tighnari ?? this.tighnari,
      alhatham: alhatham ?? this.alhatham,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'albedo': albedo.toMap(),
      'fischl': fischl.toMap(),
      'nahida': nahida.toMap(),
      'venti': venti.toMap(),
      'aloy': aloy.toMap(),
      'ganyu': ganyu.toMap(),
      'nilou': nilou.toMap(),
      'wanderer': wanderer.toMap(),
      'amber': amber.toMap(),
      'gorou': gorou.toMap(),
      'ningguang': ningguang.toMap(),
      'xiangling': xiangling.toMap(),
      'aratakiItto': aratakiItto.toMap(),
      'huTao': huTao.toMap(),
      'noelle': noelle.toMap(),
      'xiao': xiao.toMap(),
      'barbara': barbara.toMap(),
      'jean': jean.toMap(),
      'qiqi': qiqi.toMap(),
      'xingqiu': xingqiu.toMap(),
      'beidou': beidou.toMap(),
      'kaedeharaKazuha': kaedeharaKazuha.toMap(),
      'raidenShogun': raidenShogun.toMap(),
      'xinyan': xinyan.toMap(),
      'bennett': bennett.toMap(),
      'kaeya': kaeya.toMap(),
      'razor': razor.toMap(),
      'yaeMiko': yaeMiko.toMap(),
      'candace': candace.toMap(),
      'kamisatoAyaka': kamisatoAyaka.toMap(),
      'rosaria': rosaria.toMap(),
      'yanfei': yanfei.toMap(),
      'chongyun': chongyun.toMap(),
      'kamisatoAyato': kamisatoAyato.toMap(),
      'sangonomiyaKokomi': sangonomiyaKokomi.toMap(),
      'yelan': yelan.toMap(),
      'collei': collei.toMap(),
      'keqing': keqing.toMap(),
      'sayu': sayu.toMap(),
      'yoimiya': yoimiya.toMap(),
      'cyno': cyno.toMap(),
      'klee': klee.toMap(),
      'shenhe': shenhe.toMap(),
      'yunJin': yunJin.toMap(),
      'diluc': diluc.toMap(),
      'kujouSara': kujouSara.toMap(),
      'shikanoinHeizou': shikanoinHeizou.toMap(),
      'zhongli': zhongli.toMap(),
      'diona': diona.toMap(),
      'kukiShinobu': kukiShinobu.toMap(),
      'sucrose': sucrose.toMap(),
      'dori': dori.toMap(),
      'layla': layla.toMap(),
      'tartaglia': tartaglia.toMap(),
      'eula': eula.toMap(),
      'lisa': lisa.toMap(),
      'thoma': thoma.toMap(),
      'faruzan': faruzan.toMap(),
      'mona': mona.toMap(),
      'tighnari': tighnari.toMap(),
    };
  }

  factory AllHeroes.fromMap(Map<String, dynamic> map) {
    return AllHeroes(
      albedo: Hero.fromMap(map['albedo'] as Map<String, dynamic>),
      fischl: Hero.fromMap(map['fischl'] as Map<String, dynamic>),
      nahida: Hero.fromMap(map['nahida'] as Map<String, dynamic>),
      venti: Hero.fromMap(map['venti'] as Map<String, dynamic>),
      aloy: Hero.fromMap(map['aloy'] as Map<String, dynamic>),
      ganyu: Hero.fromMap(map['ganyu'] as Map<String, dynamic>),
      nilou: Hero.fromMap(map['nilou'] as Map<String, dynamic>),
      wanderer: Hero.fromMap(map['wanderer'] as Map<String, dynamic>),
      amber: Hero.fromMap(map['amber'] as Map<String, dynamic>),
      gorou: Hero.fromMap(map['gorou'] as Map<String, dynamic>),
      ningguang: Hero.fromMap(map['ningguang'] as Map<String, dynamic>),
      xiangling: Hero.fromMap(map['xiangling'] as Map<String, dynamic>),
      aratakiItto: Hero.fromMap(map['aratakiItto'] as Map<String, dynamic>),
      huTao: Hero.fromMap(map['huTao'] as Map<String, dynamic>),
      noelle: Hero.fromMap(map['noelle'] as Map<String, dynamic>),
      xiao: Hero.fromMap(map['xiao'] as Map<String, dynamic>),
      barbara: Hero.fromMap(map['barbara'] as Map<String, dynamic>),
      jean: Hero.fromMap(map['jean'] as Map<String, dynamic>),
      qiqi: Hero.fromMap(map['qiqi'] as Map<String, dynamic>),
      xingqiu: Hero.fromMap(map['xingqiu'] as Map<String, dynamic>),
      beidou: Hero.fromMap(map['beidou'] as Map<String, dynamic>),
      kaedeharaKazuha:
          Hero.fromMap(map['kaedeharaKazuha'] as Map<String, dynamic>),
      raidenShogun: Hero.fromMap(map['raidenShogun'] as Map<String, dynamic>),
      xinyan: Hero.fromMap(map['xinyan'] as Map<String, dynamic>),
      bennett: Hero.fromMap(map['bennett'] as Map<String, dynamic>),
      kaeya: Hero.fromMap(map['kaeya'] as Map<String, dynamic>),
      razor: Hero.fromMap(map['razor'] as Map<String, dynamic>),
      yaeMiko: Hero.fromMap(map['yaeMiko'] as Map<String, dynamic>),
      candace: Hero.fromMap(map['candace'] as Map<String, dynamic>),
      kamisatoAyaka: Hero.fromMap(map['kamisatoAyaka'] as Map<String, dynamic>),
      rosaria: Hero.fromMap(map['rosaria'] as Map<String, dynamic>),
      yanfei: Hero.fromMap(map['yanfei'] as Map<String, dynamic>),
      chongyun: Hero.fromMap(map['chongyun'] as Map<String, dynamic>),
      kamisatoAyato: Hero.fromMap(map['kamisatoAyato'] as Map<String, dynamic>),
      sangonomiyaKokomi:
          Hero.fromMap(map['sangonomiyaKokomi'] as Map<String, dynamic>),
      yelan: Hero.fromMap(map['yelan'] as Map<String, dynamic>),
      collei: Hero.fromMap(map['collei'] as Map<String, dynamic>),
      keqing: Hero.fromMap(map['keqing'] as Map<String, dynamic>),
      sayu: Hero.fromMap(map['sayu'] as Map<String, dynamic>),
      yoimiya: Hero.fromMap(map['yoimiya'] as Map<String, dynamic>),
      cyno: Hero.fromMap(map['cyno'] as Map<String, dynamic>),
      klee: Hero.fromMap(map['klee'] as Map<String, dynamic>),
      shenhe: Hero.fromMap(map['shenhe'] as Map<String, dynamic>),
      yunJin: Hero.fromMap(map['yunJin'] as Map<String, dynamic>),
      diluc: Hero.fromMap(map['diluc'] as Map<String, dynamic>),
      kujouSara: Hero.fromMap(map['kujouSara'] as Map<String, dynamic>),
      shikanoinHeizou:
          Hero.fromMap(map['shikanoinHeizou'] as Map<String, dynamic>),
      zhongli: Hero.fromMap(map['zhongli'] as Map<String, dynamic>),
      diona: Hero.fromMap(map['diona'] as Map<String, dynamic>),
      kukiShinobu: Hero.fromMap(map['kukiShinobu'] as Map<String, dynamic>),
      sucrose: Hero.fromMap(map['sucrose'] as Map<String, dynamic>),
      dori: Hero.fromMap(map['dori'] as Map<String, dynamic>),
      layla: Hero.fromMap(map['layla'] as Map<String, dynamic>),
      tartaglia: Hero.fromMap(map['tartaglia'] as Map<String, dynamic>),
      eula: Hero.fromMap(map['eula'] as Map<String, dynamic>),
      lisa: Hero.fromMap(map['lisa'] as Map<String, dynamic>),
      thoma: Hero.fromMap(map['thoma'] as Map<String, dynamic>),
      faruzan: Hero.fromMap(map['faruzan'] as Map<String, dynamic>),
      mona: Hero.fromMap(map['mona'] as Map<String, dynamic>),
      tighnari: Hero.fromMap(map['tighnari'] as Map<String, dynamic>),
      alhatham: map['alhatham'] == null
          ? baseData.heroes.alhatham
          : Hero.fromMap(map['alhatham'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory AllHeroes.fromJson(String source) =>
      AllHeroes.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AllHeroes(albedo: $albedo, fischl: $fischl, nahida: $nahida, venti: $venti, aloy: $aloy, ganyu: $ganyu, nilou: $nilou, wanderer: $wanderer, amber: $amber, gorou: $gorou, ningguang: $ningguang, xiangling: $xiangling, aratakiItto: $aratakiItto, huTao: $huTao, noelle: $noelle, xiao: $xiao, barbara: $barbara, jean: $jean, qiqi: $qiqi, xingqiu: $xingqiu, beidou: $beidou, kaedeharaKazuha: $kaedeharaKazuha, raidenShogun: $raidenShogun, xinyan: $xinyan, bennett: $bennett, kaeya: $kaeya, razor: $razor, yaeMiko: $yaeMiko, candace: $candace, kamisatoAyaka: $kamisatoAyaka, rosaria: $rosaria, yanfei: $yanfei, chongyun: $chongyun, kamisatoAyato: $kamisatoAyato, sangonomiyaKokomi: $sangonomiyaKokomi, yelan: $yelan, collei: $collei, keqing: $keqing, sayu: $sayu, yoimiya: $yoimiya, cyno: $cyno, klee: $klee, shenhe: $shenhe, yunJin: $yunJin, diluc: $diluc, kujouSara: $kujouSara, shikanoinHeizou: $shikanoinHeizou, zhongli: $zhongli, diona: $diona, kukiShinobu: $kukiShinobu, sucrose: $sucrose, dori: $dori, layla: $layla, tartaglia: $tartaglia, eula: $eula, lisa: $lisa, thoma: $thoma, faruzan: $faruzan, mona: $mona, tighnari: $tighnari, alhatham: $alhatham)';
  }

  @override
  bool operator ==(covariant AllHeroes other) {
    if (identical(this, other)) return true;

    return other.albedo == albedo &&
        other.fischl == fischl &&
        other.nahida == nahida &&
        other.venti == venti &&
        other.aloy == aloy &&
        other.ganyu == ganyu &&
        other.nilou == nilou &&
        other.wanderer == wanderer &&
        other.amber == amber &&
        other.gorou == gorou &&
        other.ningguang == ningguang &&
        other.xiangling == xiangling &&
        other.aratakiItto == aratakiItto &&
        other.huTao == huTao &&
        other.noelle == noelle &&
        other.xiao == xiao &&
        other.barbara == barbara &&
        other.jean == jean &&
        other.qiqi == qiqi &&
        other.xingqiu == xingqiu &&
        other.beidou == beidou &&
        other.kaedeharaKazuha == kaedeharaKazuha &&
        other.raidenShogun == raidenShogun &&
        other.xinyan == xinyan &&
        other.bennett == bennett &&
        other.kaeya == kaeya &&
        other.razor == razor &&
        other.yaeMiko == yaeMiko &&
        other.candace == candace &&
        other.kamisatoAyaka == kamisatoAyaka &&
        other.rosaria == rosaria &&
        other.yanfei == yanfei &&
        other.chongyun == chongyun &&
        other.kamisatoAyato == kamisatoAyato &&
        other.sangonomiyaKokomi == sangonomiyaKokomi &&
        other.yelan == yelan &&
        other.collei == collei &&
        other.keqing == keqing &&
        other.sayu == sayu &&
        other.yoimiya == yoimiya &&
        other.cyno == cyno &&
        other.klee == klee &&
        other.shenhe == shenhe &&
        other.yunJin == yunJin &&
        other.diluc == diluc &&
        other.kujouSara == kujouSara &&
        other.shikanoinHeizou == shikanoinHeizou &&
        other.zhongli == zhongli &&
        other.diona == diona &&
        other.kukiShinobu == kukiShinobu &&
        other.sucrose == sucrose &&
        other.dori == dori &&
        other.layla == layla &&
        other.tartaglia == tartaglia &&
        other.eula == eula &&
        other.lisa == lisa &&
        other.thoma == thoma &&
        other.faruzan == faruzan &&
        other.mona == mona &&
        other.tighnari == tighnari &&
        other.alhatham == alhatham;
  }

  @override
  int get hashCode {
    return albedo.hashCode ^
        fischl.hashCode ^
        nahida.hashCode ^
        venti.hashCode ^
        aloy.hashCode ^
        ganyu.hashCode ^
        nilou.hashCode ^
        wanderer.hashCode ^
        amber.hashCode ^
        gorou.hashCode ^
        ningguang.hashCode ^
        xiangling.hashCode ^
        aratakiItto.hashCode ^
        huTao.hashCode ^
        noelle.hashCode ^
        xiao.hashCode ^
        barbara.hashCode ^
        jean.hashCode ^
        qiqi.hashCode ^
        xingqiu.hashCode ^
        beidou.hashCode ^
        kaedeharaKazuha.hashCode ^
        raidenShogun.hashCode ^
        xinyan.hashCode ^
        bennett.hashCode ^
        kaeya.hashCode ^
        razor.hashCode ^
        yaeMiko.hashCode ^
        candace.hashCode ^
        kamisatoAyaka.hashCode ^
        rosaria.hashCode ^
        yanfei.hashCode ^
        chongyun.hashCode ^
        kamisatoAyato.hashCode ^
        sangonomiyaKokomi.hashCode ^
        yelan.hashCode ^
        collei.hashCode ^
        keqing.hashCode ^
        sayu.hashCode ^
        yoimiya.hashCode ^
        cyno.hashCode ^
        klee.hashCode ^
        shenhe.hashCode ^
        yunJin.hashCode ^
        diluc.hashCode ^
        kujouSara.hashCode ^
        shikanoinHeizou.hashCode ^
        zhongli.hashCode ^
        diona.hashCode ^
        kukiShinobu.hashCode ^
        sucrose.hashCode ^
        dori.hashCode ^
        layla.hashCode ^
        tartaglia.hashCode ^
        eula.hashCode ^
        lisa.hashCode ^
        thoma.hashCode ^
        faruzan.hashCode ^
        mona.hashCode ^
        tighnari.hashCode ^
        alhatham.hashCode;
  }
}


// AllHeroes allHeroes = AllHeroes(
//   albedo: Hero(
//       imagePath: HeroImage.albedoThumb,
//       name: "albedo",
//       isHave: false,
//       isLegend: true),
//   fischl: Hero(
//       imagePath: HeroImage.fischlThumb,
//       name: "fischl",
//       isHave: false,
//       isLegend: false),
//   nahida: Hero(
//       imagePath: HeroImage.nahidaThumb,
//       name: "nahida",
//       isHave: false,
//       isLegend: true),
//   venti: Hero(
//       imagePath: HeroImage.ventiThumb,
//       name: "venti",
//       isHave: false,
//       isLegend: true),
//   aloy: Hero(
//       imagePath: HeroImage.aloyThumb,
//       name: "aloy",
//       isHave: false,
//       isLegend: true),
//   ganyu: Hero(
//       imagePath: HeroImage.ganyuThumb,
//       name: "ganyu",
//       isHave: false,
//       isLegend: true),
//   nilou: Hero(
//       imagePath: HeroImage.nilouThumb,
//       name: "nilou",
//       isHave: false,
//       isLegend: true),
//   wanderer: Hero(
//       imagePath: HeroImage.wandererThumb,
//       name: "wanderer",
//       isHave: false,
//       isLegend: true),
//   amber: Hero(
//       imagePath: HeroImage.amberThumb,
//       name: "amber",
//       isHave: false,
//       isLegend: false),
//   gorou: Hero(
//       imagePath: HeroImage.gorouThumb,
//       name: "gorou",
//       isHave: false,
//       isLegend: false),
//   ningguang: Hero(
//       imagePath: HeroImage.ningguangThumb,
//       name: "ningguang",
//       isHave: false,
//       isLegend: false),
//   xiangling: Hero(
//       imagePath: HeroImage.xianglingThumb,
//       name: "xiangling",
//       isHave: false,
//       isLegend: false),
//   aratakiItto: Hero(
//       imagePath: HeroImage.aratakiIttoThumb,
//       name: "aratakiItto",
//       isHave: false,
//       isLegend: true),
//   huTao: Hero(
//       imagePath: HeroImage.huTaoThumb,
//       name: "huTao",
//       isHave: false,
//       isLegend: true),
//   noelle: Hero(
//       imagePath: HeroImage.noelleThumb,
//       name: "noelle",
//       isHave: false,
//       isLegend: false),
//   xiao: Hero(
//       imagePath: HeroImage.xiaoThumb,
//       name: "xiao",
//       isHave: false,
//       isLegend: true),
//   barbara: Hero(
//       imagePath: HeroImage.barbaraThumb,
//       name: "barbara",
//       isHave: false,
//       isLegend: false),
//   jean: Hero(
//       imagePath: HeroImage.jeanThumb,
//       name: "jean",
//       isHave: false,
//       isLegend: true),
//   qiqi: Hero(
//       imagePath: HeroImage.qiqiThumb,
//       name: "qiqi",
//       isHave: false,
//       isLegend: true),
//   xingqiu: Hero(
//       imagePath: HeroImage.xingqiuThumb,
//       name: "xingqiu",
//       isHave: false,
//       isLegend: false),
//   beidou: Hero(
//       imagePath: HeroImage.beidouThumb,
//       name: "beidou",
//       isHave: false,
//       isLegend: false),
//   kaedeharaKazuha: Hero(
//       imagePath: HeroImage.kaedeharaKazuhaThumb,
//       name: "kaedeharaKazuha",
//       isHave: false,
//       isLegend: true),
//   raidenShogun: Hero(
//       imagePath: HeroImage.raidenShogunThumb,
//       name: "raidenShogun",
//       isHave: false,
//       isLegend: true),
//   xinyan: Hero(
//       imagePath: HeroImage.xinyanThumb,
//       name: "xinyan",
//       isHave: false,
//       isLegend: false),
//   bennett: Hero(
//       imagePath: HeroImage.bennettThumb,
//       name: "bennett",
//       isHave: false,
//       isLegend: false),
//   kaeya: Hero(
//       imagePath: HeroImage.kaeyaThumb,
//       name: "kaeya",
//       isHave: false,
//       isLegend: false),
//   razor: Hero(
//       imagePath: HeroImage.razorThumb,
//       name: "razor",
//       isHave: false,
//       isLegend: false),
//   yaeMiko: Hero(
//       imagePath: HeroImage.yaeMikoThumb,
//       name: "yaeMiko",
//       isHave: false,
//       isLegend: true),
//   candace: Hero(
//       imagePath: HeroImage.candaceThumb,
//       name: "candace",
//       isHave: false,
//       isLegend: false),
//   kamisatoAyaka: Hero(
//       imagePath: HeroImage.kamisatoAyakaThumb,
//       name: "kamisatoAyaka",
//       isHave: false,
//       isLegend: true),
//   rosaria: Hero(
//       imagePath: HeroImage.rosariaThumb,
//       name: "rosaria",
//       isHave: false,
//       isLegend: false),
//   yanfei: Hero(
//       imagePath: HeroImage.yanfeiThumb,
//       name: "yanfei",
//       isHave: false,
//       isLegend: false),
//   chongyun: Hero(
//       imagePath: HeroImage.chongyunThumb,
//       name: "chongyun",
//       isHave: false,
//       isLegend: false),
//   kamisatoAyato: Hero(
//       imagePath: HeroImage.kamisatoAyatoThumb,
//       name: "kamisatoAyato",
//       isHave: false,
//       isLegend: true),
//   sangonomiyaKokomi: Hero(
//       imagePath: HeroImage.sangonomiyaKokomiThumb,
//       name: "sangonomiyaKokomi",
//       isHave: false,
//       isLegend: true),
//   yelan: Hero(
//       imagePath: HeroImage.yelanThumb,
//       name: "yelan",
//       isHave: false,
//       isLegend: true),
//   collei: Hero(
//       imagePath: HeroImage.colleiThumb,
//       name: "collei",
//       isHave: false,
//       isLegend: false),
//   keqing: Hero(
//       imagePath: HeroImage.keqingThumb,
//       name: "keqing",
//       isHave: false,
//       isLegend: true),
//   sayu: Hero(
//     imagePath: HeroImage.sayuThumb,
//     name: "sayu",
//     isHave: false,
//     isLegend: false,
//   ),
//   yoimiya: Hero(
//       imagePath: HeroImage.yoimiyaThumb,
//       name: "yoimiya",
//       isHave: false,
//       isLegend: true),
//   cyno: Hero(
//       imagePath: HeroImage.cynoThumb,
//       name: "cyno",
//       isHave: false,
//       isLegend: true),
//   klee: Hero(
//       imagePath: HeroImage.kleeThumb,
//       name: "klee",
//       isHave: false,
//       isLegend: true),
//   shenhe: Hero(
//       imagePath: HeroImage.shenheThumb,
//       name: "shenhe",
//       isHave: false,
//       isLegend: true),
//   yunJin: Hero(
//       imagePath: HeroImage.yunJinThumb,
//       name: "yunJin",
//       isHave: false,
//       isLegend: false),
//   diluc: Hero(
//       imagePath: HeroImage.dilucThumb,
//       name: "diluc",
//       isHave: false,
//       isLegend: true),
//   kujouSara: Hero(
//       imagePath: HeroImage.kujouSaraThumb,
//       name: "kujouSara",
//       isHave: false,
//       isLegend: false),
//   shikanoinHeizou: Hero(
//       imagePath: HeroImage.shikanoinHeizouThumb,
//       name: "shikanoinHeizou",
//       isHave: false,
//       isLegend: false),
//   zhongli: Hero(
//       imagePath: HeroImage.zhongliThumb,
//       name: "zhongli",
//       isHave: false,
//       isLegend: true),
//   diona: Hero(
//       imagePath: HeroImage.dionaThumb,
//       name: "diona",
//       isHave: false,
//       isLegend: false),
//   kukiShinobu: Hero(
//       imagePath: HeroImage.kukiShinobuThumb,
//       name: "kukiShinobu",
//       isHave: false,
//       isLegend: false),
//   sucrose: Hero(
//       imagePath: HeroImage.sucroseThumb,
//       name: "sucrose",
//       isHave: false,
//       isLegend: false),
//   ard: Hero(
//       imagePath: HeroImage.ardThumb,
//       name: "ard",
//       isHave: false,
//       isLegend: true),
//   dori: Hero(
//       imagePath: HeroImage.doriThumb,
//       name: "dori",
//       isHave: false,
//       isLegend: false),
//   layla: Hero(
//       imagePath: HeroImage.laylaThumb,
//       name: "layla",
//       isHave: false,
//       isLegend: false),
//   tartaglia: Hero(
//       imagePath: HeroImage.tartagliaThumb,
//       name: "tartaglia",
//       isHave: false,
//       isLegend: true),
//   eula: Hero(
//       imagePath: HeroImage.eulaThumb,
//       name: "eula",
//       isHave: false,
//       isLegend: true),
//   lisa: Hero(
//     imagePath: HeroImage.lisaThumb,
//     name: "lisa",
//     isHave: false,
//     isLegend: false,
//   ),
//   thoma: Hero(
//     imagePath: HeroImage.thomaThumb,
//     name: "thoma",
//     isHave: false,
//     isLegend: false,
//   ),
//   faruzan: Hero(
//       imagePath: HeroImage.faruzanThumb,
//       name: "faruzan",
//       isHave: false,
//       isLegend: false),
//   mona: Hero(
//       imagePath: HeroImage.monaThumb,
//       name: "mona",
//       isHave: false,
//       isLegend: true),
//   tighnari: Hero(
//       imagePath: HeroImage.tighnariThumb,
//       name: "tighnari",
//       isHave: false,
//       isLegend: true),
// );
