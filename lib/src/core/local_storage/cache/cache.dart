import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class UnicornCache {
  UnicornCache();
  static const key = 'customCacheKey';
  static CacheManager instance = CacheManager(
    Config(
      key,
      maxNrOfCacheObjects: 1000,
      repo: JsonCacheInfoRepository(databaseName: key),
      fileSystem: IOFileSystem(key),
      fileService: HttpFileService(),
    ),
  );

  // Future<File?> getFilesCacheNoProgress(
  //     {required String url,
  //     bool withProgress = false,
  //     Function(double)? progress}) async {
  //   final dio = Dio();

  //   var preference = const HiveService();
  //   var cache =
  //       await preference.read<CacheHive>(boxName: "vaultCache", key: url);
  //   Directory directory = await getApplicationCacheDirectory();
  //   String filename = path.basename(url);

  //   String filePath = path.join(directory.path, filename);
  //   try {
  //     //File exist in cache
  //     if (cache != null && cache.location.isNotEmpty) {
  //       File file = File(filePath);
  //       //Return file when exist
  //       if (file.existsSync()) {
  //         return file;
  //         // Download nonexist file
  //       } else {
  //         try {
  //           await preference.deleteKey<CacheHive>(
  //               boxName: "vaultCache", key: url);
  //           var response = await dio.get(url,
  //               options: Options(
  //                 responseType: ResponseType.bytes,
  //                 receiveTimeout: const Duration(seconds: 15),
  //               ));

  //           //Save when status ok
  //           if (response.statusCode == 200) {
  //             await file.writeAsBytes(response.data);
  //             //Check FileExist

  //             await const HiveService().write<CacheHive>(
  //                 boxName: "vaultCache",
  //                 key: url,
  //                 value: CacheHive(location: filename, etag: "", updatedAt: 0));
  //             return file;
  //           } else {
  //             throw Exception(
  //                 'Failed to download file: ${response.statusCode}');
  //           }
  //         } catch (e) {
  //           if (kDebugMode) {
  //             print("Error: $e");
  //           }
  //           return Future.error(e); // Return null if there was an error
  //         }
  //       }
  //       //File nonexist in cache
  //     } else {
  //       //File Not Available in cache
  //       Directory directory = await getApplicationCacheDirectory();
  //       String filename = path.basename(url);

  //       String filePath = path.join(directory.path, filename);

  //       try {
  //         var response = await dio.get(
  //           url,
  //           options: Options(
  //             responseType: ResponseType.bytes,
  //             receiveTimeout: const Duration(seconds: 15),
  //           ),
  //         );
  //         if (response.statusCode == 200) {
  //           File file = File(filePath);
  //           await file.writeAsBytes(response.data);
  //           //Check FileExist

  //           await const HiveService().write<CacheHive>(
  //               boxName: "vaultCache",
  //               key: url,
  //               value: CacheHive(location: filename, etag: "", updatedAt: 0));
  //           return file;
  //         } else {
  //           throw Exception('Failed to download file: ${response.statusCode}');
  //         }
  //       } catch (e) {
  //         return Future.error(e); // Return null if there was an error
  //       }
  //     }
  //   } catch (e) {
  //     throw Exception("Error accessing file: $e");
  //   }
  // }

  Future<File?> getFilesCacheManager({
    required String url,
  }) async {
    FileInfo? cache = await instance.getFileFromCache(key);
    try {
      //File exist in cache
      if (cache != null) {
        //Return file when exist
        if (cache.file.existsSync()) {
          return cache.file;
          // Download nonexist file
        } else {
          try {
            return await instance.getSingleFile(url);
          } catch (e) {
            return Future.error(e); // Return null if there was an error
          }
        }
        //File nonexist in cache
      } else {
        try {
          return await instance.getSingleFile(url);
        } catch (e) {
          return Future.error(e); // Return null if there was an error
        }
      }
    } catch (e) {
      throw Exception("Error accessing file: $e");
    }
  }
}
