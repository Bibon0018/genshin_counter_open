import 'dart:convert';
import 'dart:developer';
import 'package:genshin_counter/data/all_BossMaterial.dart';
import 'package:genshin_counter/data/all_bossFragments.dart';
import 'package:genshin_counter/data/all_elementaryFragments.dart';
import 'package:genshin_counter/data/all_heroes.dart';
import 'package:genshin_counter/data/all_mob_fragments.dart';
import 'package:genshin_counter/data/all_specialties.dart';
import 'package:genshin_counter/data/all_talentFragments.dart';
import 'package:genshin_counter/data/user_data.dart';
import 'package:get_storage/get_storage.dart';

final storageUserData = Storage();

class Storage {
  String key = 'user_data';
  final box = GetStorage();

  getUserData({String? data}) async {
    data ??= await box.read(key);
    if (data != null) {
      final _data = jsonDecode(data);

      final cashData = Map<String, dynamic>.from(_data);

      editHeroes(cashData['heroes']);

      editBossFragments(cashData['bossFragment']);

      editBossMaterial(cashData['bossMaterial']);

      editCurrencyFragment(cashData['currencyFragment']);

      editTalentFragment(cashData['talentsFragments']);

      editSpecialties(cashData['specialties']);

      editElementaryFragment(cashData['elementaryFragment']);

      editMobFragment(cashData['mobFragments']);
    }
  }

  Future<void> setUserData() async {
    await box.write(key, userData);
  }

  editBossMaterial(Map<String, dynamic> cacheData) {
    final data = userData.value.bossMaterial.toMap();
    Map<String, dynamic> result = {};

    data.forEach((key, value) {
      result
          .addEntries(<String, dynamic>{key: cacheData[key] ?? value}.entries);
    });

    final _data = AllBossMaterial.fromMap(result);
    userData.value.bossMaterial = _data;
    storageUserData.setUserData();
  }

  editCurrencyFragment(Map<String, dynamic> fragment) {
    final data = userData.value.toMap();

    data['currencyFragment']["crown"]['count'] = fragment["crown"]['count'];
    data['currencyFragment']["mora"]['count'] = fragment["mora"]['count'];
    data['currencyFragment']["allExp"]['lvl1']['count'] =
        fragment["allExp"]['lvl1']['count'];
    data['currencyFragment']["allExp"]['lvl2']['count'] =
        fragment["allExp"]['lvl2']['count'];
    data['currencyFragment']["allExp"]['lvl3']['count'] =
        fragment["allExp"]['lvl3']['count'];

    userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
    storageUserData.setUserData();
  }

  editHeroes(Map<String, dynamic> cacheData) {
    final data = userData.value.heroes.toMap();
    Map<String, dynamic> result = {};

    data.forEach((key, value) {
      result
          .addEntries(<String, dynamic>{key: cacheData[key] ?? value}.entries);
    });

    final _data = AllHeroes.fromMap(result);
    userData.value.heroes = _data;
    storageUserData.setUserData();
  }

  editBossFragments(Map<String, dynamic> cacheData) {
    final data = userData.value.bossFragment.toMap();
    Map<String, dynamic> result = {};

    data.forEach((key, value) {
      result
          .addEntries(<String, dynamic>{key: cacheData[key] ?? value}.entries);
    });

    final _data = AllBossFragment.fromMap(result);
    userData.value.bossFragment = _data;
    storageUserData.setUserData();
  }

  editMobFragment(Map<String, dynamic> cacheData) {
    final data = userData.value.mobFragments.toMap();
    Map<String, dynamic> result = {};

    data.forEach((key, value) {
      result
          .addEntries(<String, dynamic>{key: cacheData[key] ?? value}.entries);
    });

    final _data = AllMobFragments.fromMap(result);
    userData.value.mobFragments = _data;
    storageUserData.setUserData();
  }

  editTalentFragment(Map<String, dynamic> cacheData) {
    final data = userData.value.talentsFragments.toMap();
    Map<String, dynamic> result = {};

    data.forEach((key, value) {
      result
          .addEntries(<String, dynamic>{key: cacheData[key] ?? value}.entries);
    });

    final _data = AllTalentsFragments.fromMap(result);
    userData.value.talentsFragments = _data;
    storageUserData.setUserData();
  }

  editElementaryFragment(Map<String, dynamic> cacheData) {
    final data = userData.value.elementaryFragment.toMap();
    Map<String, dynamic> result = {};

    data.forEach((key, value) {
      result
          .addEntries(<String, dynamic>{key: cacheData[key] ?? value}.entries);
    });

    final _data = AllElementaryFragments.fromMap(result);
    userData.value.elementaryFragment = _data;
    storageUserData.setUserData();
  }

  editSpecialties(Map<String, dynamic> cacheData) {
    final data = userData.value.specialties.toMap();
    Map<String, dynamic> result = {};

    data.forEach((key, value) {
      result
          .addEntries(<String, dynamic>{key: cacheData[key] ?? value}.entries);
    });

    final _data = AllSpecialties.fromMap(result);
    userData.value.specialties = _data;
    storageUserData.setUserData();
  }
}
