import 'package:hive_ce/hive.dart';

class HiveService {
  const HiveService();
    final String authBox = "vaultUser";
    final String authKey = "auth";
    Future<void> write<T>({required String boxName,required String key,required dynamic value})async {
      var box = Hive.box<T>(boxName);
      box.put(key, value);
    }

    Future<T?> read<T>({required String boxName,required String key})async{
         var box = Hive.box<T>(boxName);
         return box.get(key);
    }

     Future<void> clear<T>({required String boxName,required String key})async{
         var box = Hive.box<T>(boxName);
         box.clear();
    }

    Future<bool> isKeyExist<T>({required String boxName,required String key})async{
         var box = Hive.box<T>(boxName);
         return box.containsKey(key);
    }

  
    
}