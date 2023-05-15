import 'package:flutter/material.dart';
import 'package:genshin_counter/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/controllers/storage.dart';

Future<void> main() async {
  await GetStorage.init();
  storageUserData.getUserData();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.HOME_PAGE,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
