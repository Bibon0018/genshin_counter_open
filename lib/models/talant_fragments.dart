// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:genshin_counter/data/user_data.dart';
import 'package:genshin_counter/models/fragment_counter.dart';
import 'package:genshin_counter/models/fragments.dart';
import 'package:genshin_counter/models/hero.dart';

class TalentsFragments {
  Fragments lvl1;
  Fragments lvl2;
  Fragments lvl3;
  String name;
  TalentsFragments({
    required this.lvl1,
    required this.lvl2,
    required this.lvl3,
    required this.name,
  });

  bool isCompleted(bool? showNeeded) {
    final have = userData.value.talentsFragments
        .allTalentsFragments()
        .where((element) =>
            element.name == name)
        .first;
    final remainderLvl1 = have.lvl1.count - lvl1.count;
    final remainderLvl2 = (have.lvl2.count + (remainderLvl1 ~/ 3)) - lvl2.count;
    final remainderLvl3 = (have.lvl3.count + (remainderLvl2 ~/ 3)) - lvl3.count;
    final isCompleteTalent = remainderLvl1 >= 0 && remainderLvl2 >= 0&&remainderLvl3 >= 0;
    return showNeeded == null ||
        (showNeeded && !isCompleteTalent) ||
        (!showNeeded && isCompleteTalent);
  }

  TalentsFragments copyWith({
    Fragments? lvl1,
    Fragments? lvl2,
    Fragments? lvl3,
    String? name,
  }) {
    return TalentsFragments(
      lvl1: lvl1 ?? this.lvl1,
      lvl2: lvl2 ?? this.lvl2,
      lvl3: lvl3 ?? this.lvl3,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'lvl1': lvl1.toMap()});
    result.addAll({'lvl2': lvl2.toMap()});
    result.addAll({'lvl3': lvl3.toMap()});
    result.addAll({'name': name});

    return result;
  }

  factory TalentsFragments.fromMap(Map<String, dynamic> map) {
    return TalentsFragments(
      lvl1: Fragments.fromMap(map['lvl1']),
      lvl2: Fragments.fromMap(map['lvl2']),
      lvl3: Fragments.fromMap(map['lvl3']),
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TalentsFragments.fromJson(String source) =>
      TalentsFragments.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TalentsFragments(lvl1: $lvl1, lvl2: $lvl2, lvl3: $lvl3, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TalentsFragments &&
        other.lvl1 == lvl1 &&
        other.lvl2 == lvl2 &&
        other.lvl3 == lvl3 &&
        other.name == name;
  }

  @override
  int get hashCode {
    return lvl1.hashCode ^ lvl2.hashCode ^ lvl3.hashCode ^ name.hashCode;
  }
}
