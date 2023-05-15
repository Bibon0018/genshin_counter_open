import 'dart:convert';

import 'package:genshin_counter/data/user_data.dart';
import 'package:genshin_counter/models/fragment_counter.dart';
import 'package:genshin_counter/models/hero.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Fragments {
  String name;
  String imagePath;
  int count;
  Fragments({
    required this.name,
    required this.imagePath,
    required this.count,
  });

  bool isCompleted(bool? showNeeded,List<Fragments> haveFragments) {
    final have = haveFragments
        .where((element) => element.name == name)
        .first;
    final remainder = have.count - count;
    final isCompleteTalent = remainder >= 0;
    return showNeeded == null ||
        (showNeeded && !isCompleteTalent) ||
        (!showNeeded && isCompleteTalent);
  }

  Fragments copyWith({
    String? name,
    String? imagePath,
    int? count,
  }) {
    return Fragments(
      name: name ?? this.name,
      imagePath: imagePath ?? this.imagePath,
      count: count ?? this.count,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'imagePath': imagePath});
    result.addAll({'count': count});

    return result;
  }

  factory Fragments.fromMap(Map<String, dynamic> map) {
    return Fragments(
      name: map['name'] ?? '',
      imagePath: map['imagePath'] ?? '',
      count: map['count']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Fragments.fromJson(String source) =>
      Fragments.fromMap(json.decode(source));

  @override
  String toString() =>
      'Fragments(name: $name, imagePath: $imagePath, count: $count)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Fragments &&
        other.name == name &&
        other.imagePath == imagePath &&
        other.count == count;
  }

  @override
  int get hashCode => name.hashCode ^ imagePath.hashCode ^ count.hashCode;
}
