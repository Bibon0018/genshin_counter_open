// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:genshin_counter/models/fragments.dart';

class AllExp {
  String name;
  Fragments lvl1;
  Fragments lvl2;
  Fragments lvl3;
  AllExp({
    required this.name,
    required this.lvl1,
    required this.lvl2,
    required this.lvl3,
  });
  
  int expSumm() {
    return (lvl1.count * 1000) + (lvl2.count * 5000) + (lvl3.count * 20000);
  }

  AllExp copyWith({
    String? name,
    Fragments? lvl1,
    Fragments? lvl2,
    Fragments? lvl3,
  }) {
    return AllExp(
      name: name ?? this.name,
      lvl1: lvl1 ?? this.lvl1,
      lvl2: lvl2 ?? this.lvl2,
      lvl3: lvl3 ?? this.lvl3,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'lvl1': lvl1.toMap(),
      'lvl2': lvl2.toMap(),
      'lvl3': lvl3.toMap(),
    };
  }

  factory AllExp.fromMap(Map<String, dynamic> map) {
    return AllExp(
      name: map['name'] as String,
      lvl1: Fragments.fromMap(map['lvl1'] as Map<String, dynamic>),
      lvl2: Fragments.fromMap(map['lvl2'] as Map<String, dynamic>),
      lvl3: Fragments.fromMap(map['lvl3'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory AllExp.fromJson(String source) =>
      AllExp.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AllExp(name: $name, lvl1: $lvl1, lvl2: $lvl2, lvl3: $lvl3)';
  }

  @override
  bool operator ==(covariant AllExp other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.lvl1 == lvl1 &&
        other.lvl2 == lvl2 &&
        other.lvl3 == lvl3;
  }

  @override
  int get hashCode {
    return name.hashCode ^ lvl1.hashCode ^ lvl2.hashCode ^ lvl3.hashCode;
  }
}
