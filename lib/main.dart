import 'dart:convert';

import 'package:encrypt_shared_preferences/provider.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sysbit/src/app.dart';
import 'package:sysbit/src/core/local_storage/model/file_cache.dart';
import 'package:sysbit/src/core/local_storage/model/user_hive.dart';
import 'package:sysbit/src/settings/settings_controller.dart';
import 'package:sysbit/src/settings/settings_service.dart';

void main() async {
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  WidgetsFlutterBinding.ensureInitialized();
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  await initHive();
  runApp(MyApp(settingsController: settingsController));
}

Future<void> initHive() async {
  // const secureStorage = FlutterSecureStorage();
  // // if key not exists return null
  // final encryptionKeyString = await secureStorage.read(key: 'key');
  // if (encryptionKeyString == null) {
  //   final key = Hive.generateSecureKey();
  //   await secureStorage.write(
  //     key: 'key',
  //     value: base64UrlEncode(key),
  //   );
  // }
   const keyGb = '9sg9YSFuKan44NSc';
  await EncryptedSharedPreferences.initialize(keyGb);
  var sharedPref = EncryptedSharedPreferences.getInstance();
  // if key not exists return null
  final encryptionKeyString = sharedPref.getString('key');
  if (encryptionKeyString == null){
      final key = Hive.generateSecureKey();
      await sharedPref.setString('key', base64UrlEncode(key));
  }
  final key = sharedPref.getString('key');
  final encryptionKeyUint8List = base64Url.decode(key!);
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  
  Hive.registerAdapter(UserHiveAdapter());
  Hive.registerAdapter(CacheHiveAdapter());
  await Hive.openBox<UserHive>('vaultUser',
      encryptionCipher: HiveAesCipher(encryptionKeyUint8List));
  await Hive.openBox<CacheHive>('vaultCache',
      encryptionCipher: HiveAesCipher(encryptionKeyUint8List));

}
