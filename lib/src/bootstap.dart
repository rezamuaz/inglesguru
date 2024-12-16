import 'dart:async';
import 'dart:convert';
import 'package:encrypt_shared_preferences/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sysbit/src/core/flavor/flavor_config.dart';
import 'package:flutter/material.dart';
import 'package:sysbit/src/core/local_storage/key_storage/key_storage.dart';
import 'package:sysbit/src/core/local_storage/shared_pref/shared_pref.dart';
import 'package:sysbit/src/core/notification/notif_api.dart';
import 'package:sysbit/src/settings/settings_controller.dart';
import 'package:sysbit/src/settings/settings_service.dart';

Future<void> bootstrap(
  FutureOr<Widget> Function(SettingsController) builder, {
  Flavor? flavor,
}) async {
  final settingsController = SettingsController(SettingsService());
  // FlavorConfig.appFlavor = flavor;
  // await Firebase.initializeApp();
  // Initialize Firebase
  // await FirebaseMessaging.instance.setAutoInitEnabled(true);

  // Register the background message handler
  // FirebaseMessaging.onBackgroundMessage(_backgroundMessageHandler);
  NotifApi.init();
  runApp(await builder(settingsController));
}
