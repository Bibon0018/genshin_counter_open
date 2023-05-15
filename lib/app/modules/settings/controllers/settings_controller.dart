import 'dart:io';

import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:file_picker/file_picker.dart';
import 'package:genshin_counter/app/controllers/storage.dart';
import 'package:genshin_counter/data/user_data.dart';
import 'package:path_provider/path_provider.dart' as PP;
import 'package:share_plus/share_plus.dart';

class SettingsController extends GetxController {
  shareSettings() async {
    final status = await Permission.storage.status;
    if (status.isDenied) {
      await Permission.storage.request();
    }

    String fileName = "${(await PP.getTemporaryDirectory()).path}/data.json";

    var file = await File(fileName).writeAsString(userData.toJson());

    Share.shareFiles([file.path]);
  }

  setSettings() async {
    final status = await Permission.storage.status;
    if (status.isDenied) {
      await Permission.storage.request();
    }
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ['json']);

    if (result?.files.single.path != null) {
      File file = File(result!.files.single.path!);
      storageUserData.getUserData(data: await file.readAsString());
    }
  }
}
