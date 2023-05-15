// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:genshin_counter/data/user_data.dart';
import 'package:genshin_counter/models/fragment_counter.dart';
import 'package:genshin_counter/models/fragments.dart';
import 'package:genshin_counter/models/hero.dart';

class AllElementaryFragments {
  ElementaryFragment agnidus;
  ElementaryFragment brilliant;
  ElementaryFragment nagadus;
  ElementaryFragment prithiva;
  ElementaryFragment shivada;
  ElementaryFragment vajrada;
  ElementaryFragment varunada;
  ElementaryFragment vayuda;
  AllElementaryFragments({
    required this.agnidus,
    required this.brilliant,
    required this.nagadus,
    required this.prithiva,
    required this.shivada,
    required this.vajrada,
    required this.varunada,
    required this.vayuda,
  });

  List<ElementaryFragment> allElementaryFragments() {
    return [
      agnidus,
      brilliant,
      nagadus,
      prithiva,
      shivada,
      vajrada,
      varunada,
      vayuda
    ];
  }

  AllElementaryFragments copyWith({
    ElementaryFragment? agnidus,
    ElementaryFragment? brilliant,
    ElementaryFragment? nagadus,
    ElementaryFragment? prithiva,
    ElementaryFragment? shivada,
    ElementaryFragment? vajrada,
    ElementaryFragment? varunada,
    ElementaryFragment? vayuda,
  }) {
    return AllElementaryFragments(
      agnidus: agnidus ?? this.agnidus,
      brilliant: brilliant ?? this.brilliant,
      nagadus: nagadus ?? this.nagadus,
      prithiva: prithiva ?? this.prithiva,
      shivada: shivada ?? this.shivada,
      vajrada: vajrada ?? this.vajrada,
      varunada: varunada ?? this.varunada,
      vayuda: vayuda ?? this.vayuda,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agnidus': agnidus.toMap(),
      'brilliant': brilliant.toMap(),
      'nagadus': nagadus.toMap(),
      'prithiva': prithiva.toMap(),
      'shivada': shivada.toMap(),
      'vajrada': vajrada.toMap(),
      'varunada': varunada.toMap(),
      'vayuda': vayuda.toMap(),
    };
  }

  factory AllElementaryFragments.fromMap(Map<String, dynamic> map) {
    return AllElementaryFragments(
      agnidus:
          ElementaryFragment.fromMap(map['agnidus'] as Map<String, dynamic>),
      brilliant:
          ElementaryFragment.fromMap(map['brilliant'] as Map<String, dynamic>),
      nagadus:
          ElementaryFragment.fromMap(map['nagadus'] as Map<String, dynamic>),
      prithiva:
          ElementaryFragment.fromMap(map['prithiva'] as Map<String, dynamic>),
      shivada:
          ElementaryFragment.fromMap(map['shivada'] as Map<String, dynamic>),
      vajrada:
          ElementaryFragment.fromMap(map['vajrada'] as Map<String, dynamic>),
      varunada:
          ElementaryFragment.fromMap(map['varunada'] as Map<String, dynamic>),
      vayuda: ElementaryFragment.fromMap(map['vayuda'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory AllElementaryFragments.fromJson(String source) =>
      AllElementaryFragments.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AllElementaryFragments(agnidus: $agnidus, brilliant: $brilliant, nagadus: $nagadus, prithiva: $prithiva, shivada: $shivada, vajrada: $vajrada, varunada: $varunada, vayuda: $vayuda)';
  }

  @override
  bool operator ==(covariant AllElementaryFragments other) {
    if (identical(this, other)) return true;

    return other.agnidus == agnidus &&
        other.brilliant == brilliant &&
        other.nagadus == nagadus &&
        other.prithiva == prithiva &&
        other.shivada == shivada &&
        other.vajrada == vajrada &&
        other.varunada == varunada &&
        other.vayuda == vayuda;
  }

  @override
  int get hashCode {
    return agnidus.hashCode ^
        brilliant.hashCode ^
        nagadus.hashCode ^
        prithiva.hashCode ^
        shivada.hashCode ^
        vajrada.hashCode ^
        varunada.hashCode ^
        vayuda.hashCode;
  }
}

class ElementaryFragment {
  Fragments lvl1;
  Fragments lvl2;
  Fragments lvl3;
  Fragments lvl4;
  String name;
  ElementaryFragment({
    required this.lvl1,
    required this.lvl2,
    required this.lvl3,
    required this.lvl4,
    required this.name,
  });

  bool isCompleted( bool? showNeeded) {
    final have = userData.value.elementaryFragment
        .allElementaryFragments()
        .where((element) =>
            element.name == name)
        .first;
    final remainderLvl1 = have.lvl1.count - lvl1.count;
    final remainderLvl2 = (have.lvl2.count + (remainderLvl1 ~/ 3)) - lvl2.count;
    final remainderLvl3 = (have.lvl3.count + (remainderLvl2 ~/ 3)) - lvl3.count;
    final remainderLvl4 = (have.lvl4.count + (remainderLvl3 ~/ 3)) - lvl4.count;
    final isCompleteElementaryFragment = remainderLvl1 >= 0 &&
        remainderLvl2 >= 0 &&
        remainderLvl3 >= 0 &&
        remainderLvl4 >= 0;
    return showNeeded == null ||
        (showNeeded && !isCompleteElementaryFragment) ||
        (!showNeeded && isCompleteElementaryFragment);
  }

  ElementaryFragment copyWith({
    Fragments? lvl1,
    Fragments? lvl2,
    Fragments? lvl3,
    Fragments? lvl4,
    String? name,
  }) {
    return ElementaryFragment(
      lvl1: lvl1 ?? this.lvl1,
      lvl2: lvl2 ?? this.lvl2,
      lvl3: lvl3 ?? this.lvl3,
      lvl4: lvl4 ?? this.lvl4,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lvl1': lvl1.toMap(),
      'lvl2': lvl2.toMap(),
      'lvl3': lvl3.toMap(),
      'lvl4': lvl4.toMap(),
      'name': name,
    };
  }

  factory ElementaryFragment.fromMap(Map<String, dynamic> map) {
    return ElementaryFragment(
      lvl1: Fragments.fromMap(map['lvl1'] as Map<String, dynamic>),
      lvl2: Fragments.fromMap(map['lvl2'] as Map<String, dynamic>),
      lvl3: Fragments.fromMap(map['lvl3'] as Map<String, dynamic>),
      lvl4: Fragments.fromMap(map['lvl4'] as Map<String, dynamic>),
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ElementaryFragment.fromJson(String source) =>
      ElementaryFragment.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ElementaryFragment(lvl1: $lvl1, lvl2: $lvl2, lvl3: $lvl3, lvl4: $lvl4, name: $name)';
  }

  @override
  bool operator ==(covariant ElementaryFragment other) {
    if (identical(this, other)) return true;

    return other.lvl1 == lvl1 &&
        other.lvl2 == lvl2 &&
        other.lvl3 == lvl3 &&
        other.lvl4 == lvl4 &&
        other.name == name;
  }

  @override
  int get hashCode {
    return lvl1.hashCode ^
        lvl2.hashCode ^
        lvl3.hashCode ^
        lvl4.hashCode ^
        name.hashCode;
  }
}
