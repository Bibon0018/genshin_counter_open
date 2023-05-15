import 'package:flutter/material.dart';
import 'package:genshin_counter/app/controllers/storage.dart';
import 'package:genshin_counter/app/widgets/fragment_cards.dart';
import 'package:genshin_counter/app/widgets/fragment_edit.dart';
import 'package:genshin_counter/data/user_data.dart';
import 'package:genshin_counter/models/currency_fragment.dart';
import 'package:genshin_counter/models/fragments.dart';
import 'package:genshin_counter/resourses/colors/colors.dart';
import 'package:genshin_counter/resourses/images/currency.dart';

import 'package:get/get.dart';

import '../controllers/currency_fragment_controller.dart';

class CurrencyFragmentView extends GetView<CurrencyFragmentController> {
  const CurrencyFragmentView({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        title: const Text('Универсальные материалы'),
        centerTitle: true,
        backgroundColor: AppColors.darkBackGroundColor,
      ),
      body: Obx(() => GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1,
            children: [
              for (var currency
                  in userData.value.currencyFragment.allCurrencyFragment())
                FragmentCard(
                  backgroundImage:
                      CurrencyFragment.getBackground(currency.name),
                  title: currency.name,
                  counter: currency.count,
                  imagePath: currency.imagePath.currencyImagePath(),
                  isButton: true,
                  onTap: () => addTalent(currency),
                  minus: () => removeTalent(currency),
                  onEdit: () async {
                    final result = await showEditFragment(context, currency,
                        CurrencyFragment.getBackground(currency.name),
                        isMora: currency.name == "Мора");
                    if (result != null) {
                      editSpecialty(currency, result.count);
                    }
                  },
                )
            ],
          )).paddingSymmetric(horizontal: 16, vertical: 16),
    );
  }

  editSpecialty(Fragments fragment, int count) {
    final data = userData.value.toMap();

    final keys = data['currencyFragment'].keys.toList();
    if (CurrencyFragment.isExp(fragment.name)) {
      data['currencyFragment']["allExp"]
          [CurrencyFragment.getExpKey(fragment.name)]['count'] = count;
    } else {
      for (var key in keys) {
        if (key != "allExp" && key != "name") {
          if (data['currencyFragment'][key]['name'] == fragment.name) {
            data['currencyFragment'][key]['count'] = count;
          }
        }
      }
    }
    userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
    storageUserData.setUserData();
  }

  addTalent(
    Fragments fragment,
  ) {
    final data = userData.value.toMap();

    final keys = data['currencyFragment'].keys.toList();
    if (CurrencyFragment.isExp(fragment.name)) {
      data['currencyFragment']["allExp"]
          [CurrencyFragment.getExpKey(fragment.name)]['count'] += 1;
    } else {
      for (var key in keys) {
        if (key != "allExp" && key != "name") {
          if (data['currencyFragment'][key]['name'] == fragment.name) {
            data['currencyFragment'][key]['count'] += 1;
          }
        }
      }
    }
    userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
    storageUserData.setUserData();
  }

  removeTalent(
    Fragments fragment,
  ) {
    final data = userData.value.toMap();

    final keys = data['currencyFragment'].keys.toList();
    if (CurrencyFragment.isExp(fragment.name)) {
      data['currencyFragment']["allExp"]
          [CurrencyFragment.getExpKey(fragment.name)]['count'] -= 1;
    } else {
      for (var key in keys) {
        if (key != "allExp" && key != "name") {
          if (data['currencyFragment'][key]['name'] == fragment.name) {
            data['currencyFragment'][key]['count'] -= 1;
          }
        }
      }
    }
    userData.value = UserData.fromMap(Map<String, dynamic>.from(data));
    storageUserData.setUserData();
  }
}
