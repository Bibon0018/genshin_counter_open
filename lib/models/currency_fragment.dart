// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:genshin_counter/models/all_exp.dart';
import 'package:genshin_counter/models/fragments.dart';
import 'package:genshin_counter/resourses/images/rarity_image.dart';

class CurrencyFragment {
  String name;
  AllExp allExp;
  Fragments crown;
  Fragments mora;
  CurrencyFragment({
    required this.name,
    required this.allExp,
    required this.crown,
    required this.mora,
  });
  static String getBackground(String name) {
    if (name == "Опыт странника") {
      return RarityImage.green.rarityImagePath();
    } else if (name == "Опыт искателя приключений") {
      return RarityImage.blue.rarityImagePath();
    } else if (name == "Опыт героя") {
      return RarityImage.purple.rarityImagePath();
    } else if (name == "Корона прозрения") {
      return RarityImage.orange.rarityImagePath();
    } else {
      return RarityImage.blue.rarityImagePath();
    }
  }

  static String getExpKey(String name) {
    if (name == "Опыт странника") {
      return "lvl1";
    } else if (name == "Опыт искателя приключений") {
      return "lvl2";
    } else {
      return "lvl3";
    }
  }

  static bool isExp(String name) {
    return name == "Опыт странника" ||
        name == "Опыт искателя приключений" ||
        name == "Опыт героя";
  }

  List<Fragments> allCurrencyFragment() {
    return [
      allExp.lvl1,
      allExp.lvl2,
      allExp.lvl3,
      crown,
      mora,
    ];
  }

  bool isCompleted(AllExp neded, bool? showNeeded) {
    final isCompleteTalent = allExp.expSumm() >= neded.expSumm();
    return showNeeded == null ||
        (showNeeded && !isCompleteTalent) ||
        (!showNeeded && isCompleteTalent);
  }

  CurrencyFragment copyWith({
    String? name,
    AllExp? allExp,
    Fragments? crown,
    Fragments? mora,
  }) {
    return CurrencyFragment(
      name: name ?? this.name,
      allExp: allExp ?? this.allExp,
      crown: crown ?? this.crown,
      mora: mora ?? this.mora,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'allExp': allExp.toMap(),
      'crown': crown.toMap(),
      'mora': mora.toMap(),
    };
  }

  factory CurrencyFragment.fromMap(Map<String, dynamic> map) {
    return CurrencyFragment(
      name: map['name'] as String,
      allExp: AllExp.fromMap(map['allExp'] as Map<String, dynamic>),
      crown: Fragments.fromMap(map['crown'] as Map<String, dynamic>),
      mora: Fragments.fromMap(map['mora'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory CurrencyFragment.fromJson(String source) =>
      CurrencyFragment.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CurrencyFragment(name: $name, allExp: $allExp, crown: $crown, mora: $mora)';
  }

  @override
  bool operator ==(covariant CurrencyFragment other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.allExp == allExp &&
        other.crown == crown &&
        other.mora == mora;
  }

  @override
  int get hashCode {
    return name.hashCode ^ allExp.hashCode ^ crown.hashCode ^ mora.hashCode;
  }
}
