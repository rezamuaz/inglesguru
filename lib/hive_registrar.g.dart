import 'package:hive_ce/hive.dart';
import 'package:sysbit/src/core/local_storage/model/file_cache.dart';
import 'package:sysbit/src/core/local_storage/model/user_hive.dart';

extension HiveRegistrar on HiveInterface {
  void registerAdapters() {
    registerAdapter(CacheHiveAdapter());
    registerAdapter(UserHiveAdapter());
  }
}
