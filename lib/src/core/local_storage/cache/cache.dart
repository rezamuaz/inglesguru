import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'package:sysbit/src/core/local_storage/hive/hive_service.dart';
import 'package:sysbit/src/core/local_storage/model/file_cache.dart';

class UnicornCache {
  UnicornCache();
  
  static Future<File?> getFile({String? url}) async {
   
    var preference = const HiveService();
    if (url != null) {
      var cache =
          await preference.read<CacheHive>(boxName: "vaultCache", key: url);
      Directory documentDirectory = await getApplicationDocumentsDirectory();
      if (cache != null) {
       
        File file = File(cache.location!);
        if (await file.exists()) {
        
          // Return the content of the file
          return file;
        } else {
          try {
            var response = await http.get(Uri.parse(url));
            if (response.statusCode == 200) {
              // Write the downloaded file to local storage
              await file.writeAsBytes(response.bodyBytes);
              // Optionally, update the cache location
              // cache.location = filePath; // Uncomment if needed
              // await preference.write<CacheHive>(boxName: "vaultCache", key: url, value: cache); // Uncomment to save updated cache
              return file;
            } else {
              throw Exception(
                  'Failed to download file: ${response.statusCode}');
            }
          } catch (e) {
            return null; // Return null if there was an error
          }
        }
      } else {
        try {
          var response = await http.get(Uri.parse(url));
          if (response.statusCode == 200) {
            String filepath =
                path.join(documentDirectory.path, path.basename(url));
            File file = File(filepath);
            // Write the downloaded file to local storage
            await file.writeAsBytes(response.bodyBytes);
            CacheHive value = CacheHive(
              location: filepath,
              createdAt: DateTime.now().toUtc().millisecondsSinceEpoch,
            );
            await preference.write<CacheHive>(
                boxName: "vaultCache", key: url, value: value);
            // Optionally, update the cache location
            // cache.location = filePath; // Uncomment if needed
            // await preference.write<CacheHive>(boxName: "vaultCache", key: url, value: cache); // Uncomment to save updated cache
            return file;
          } else {
            throw Exception('Failed to download file: ${response.statusCode}');
          }
        } catch (e) {
          return null; // Return null if there was an error
        }
      }
    }
    return null;
  }
}
