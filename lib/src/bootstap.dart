import 'dart:async';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'package:sysbit/src/core/flavor/flavor_config.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

Future<void> bootstrap(
  FutureOr<Widget> Function() builder, {
  required Flavor flavor,
}) async {
  WidgetsFlutterBinding.ensureInitialized();
  FlavorConfig.appFlavor = flavor;
  

  runApp(await builder());
}

