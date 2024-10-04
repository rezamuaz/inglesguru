import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:sysbit/src/core/local_storage/hive/hive_service.dart';
import 'package:sysbit/src/core/local_storage/model/file_cache.dart';

class MultiDownloadFile extends StatefulWidget {
  const MultiDownloadFile({super.key, this.urls = const []});
  final List<String> urls;
  @override
  MultiDownloadFileState createState() =>
      MultiDownloadFileState();
}

class MultiDownloadFileState extends State<MultiDownloadFile> {
  late List<String> urls;

  double _totalProgress = 0.0;
  int _totalBytes = 0;
  int _receivedBytes = 0;
  bool _checking = false;
  ValueNotifier<bool>  _isDownloading = ValueNotifier<bool>(false);

  @override
  void initState() {
    setState(() {
      urls = widget.urls;
    });
     _isDownloading.addListener(() {
      if (!_isDownloading.value) {
        Navigator.of(context).pop(true);
      }
    });
    super.initState();
  }

  Future<void> downloadFiles() async {
    setState(() {
      _checking = true;
      _isDownloading.value = true;
      _totalProgress = 0.0;
      _receivedBytes = 0;
      _totalBytes = 0;
    });

    http.Client client = http.Client();
    List<String> donwloadList = [];
    // Check existing files in cache and calculate total size
    for (var url in urls) {
      FileInfo? fileInfo = await DefaultCacheManager().getFileFromCache(url);
      if (fileInfo == null) {
        // If the file is not in cache, get its size and headers
        http.Response response = await client.head(Uri.parse(url));

        _totalBytes += int.parse(response.headers['content-length'] ?? '0');

        // Extract maxAge and ETag from Cache-Control and ETag headers
        // Duration? maxAge = _parseCacheControl(response.headers['cache-control']);
        String? eTag = response.headers['etag'];
        donwloadList.add(url);
        // print("Max Age for $url: ${maxAge?.inSeconds ?? 'not specified'} seconds");
        print("ETag for $url: $eTag");
      } else {
        // Check ETag if file exists in cache
        await _checkEtagAndUpdate(
          client,
          url,
          (urlVal) {
            donwloadList.add(urlVal);
          },
        );
      }
    }
    setState(() {
      _checking = false;
    });
    if (donwloadList.isNotEmpty) {
      for (var url in donwloadList) {
        await _downloadFileToCache(client, url);
      }
    }
    setState(() {
      _isDownloading.value = false;
    });

  }

  Future<void> _downloadFileToCache(http.Client client, String url,
      {String? newEtag}) async {
    String fileName = url.split('/').last;
    Directory tempDir = await getTemporaryDirectory();
    String filePath = '${tempDir.path}/$fileName';
    File tempFile = File(filePath);

    // Send GET request and handle the response stream
    http.StreamedResponse response =
        await client.send(http.Request('GET', Uri.parse(url)));
    late int received = 0;

    // Track the progress of download
    await response.stream.listen((chunk) {
      tempFile.writeAsBytesSync(chunk, mode: FileMode.append);
      received += chunk.length;

      setState(() {
        _receivedBytes += chunk.length;
        _totalProgress = _receivedBytes / _totalBytes;
      });
    }).asFuture();

    // Extract maxAge and ETag from headers
    // Duration? maxAgeDuration =
    //     _parseCacheControl(response.headers['cache-control']);
    // int maxAgeInSeconds =
    //     maxAgeDuration?.inSeconds ?? 7 * 24 * 60 * 60; // Default to 7 days
    String? eTag = newEtag ?? response.headers['etag'];

    // Save the downloaded file to cache with ETag as metadata
    await DefaultCacheManager().putFile(
      url,
      tempFile.readAsBytesSync(),
      fileExtension: fileName.split('.').last,
      maxAge: const Duration(days: 180),
      eTag: eTag, // Store ETag in cache manager
    );
    await const HiveService()
        .write<CacheHive>(boxName: "vaultCache", key: url, value: CacheHive(etag: eTag));
    File('${tempDir.path}/$fileName').deleteSync();
    print("File cached successfully: $filePath, ETag: $eTag");
  }

  // Helper function to parse max-age from Cache-Control header
  // Duration? _parseCacheControl(String? cacheControl) {
  //   if (cacheControl == null) return null;

  //   List<String> directives = cacheControl.split(',');
  //   for (String directive in directives) {
  //     directive = directive.trim();
  //     if (directive.startsWith('max-age=')) {
  //       int? maxAge = int.tryParse(directive.split('=')[1].trim());
  //       if (maxAge != null) {
  //         return Duration(seconds: maxAge);
  //       }
  //     }
  //   }
  //   return null;
  // }

  // Check ETag for existing cached file and re-download if the ETag differs
  Future<void> _checkEtagAndUpdate(
      http.Client client, String url, Function(String) callback) async {
    http.Response response = await client.head(Uri.parse(url));
    String? newEtag = response.headers['etag'];

    // Get the current cached ETag
    var cachedEtag = await const HiveService()
        .read<CacheHive>(boxName: "vaultCache", key: url);

    if (newEtag != null && cachedEtag != null && newEtag == cachedEtag.etag) {
      print("ETag matches, skipping download for: $url");
    } else {
      print("ETag differs or not present, re-downloading: $url");
      callback(url);
    }
  }

  @override
  void didChangeDependencies() {
    downloadFiles();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Multi File Download Progress")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _checking? 1 :0 ,
              duration: Duration(milliseconds: 800),
              curve: Curves.linear,
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                  Text("Checking File",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(width: 5),
                  LoadingAnimationWidget.threeRotatingDots(color: Colors.blue, size: 20)
                ],),
              ),
            ),
            // ElevatedButton(
            //   onPressed: _isDownloading.value ? null : downloadFiles,
            //   child: const Text("Start Download"),
            // ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _clearCache,
              child: const Text("Clear Cache"),
            ),
            Text(
                'Download Progress: ${(_totalProgress * 100).toStringAsFixed(0)}%'),
            const SizedBox(height: 20),
            LinearProgressIndicator(value: _totalProgress),
          ],
        ),
      ),
    );
  }

  void _clearCache() {
    DefaultCacheManager().emptyCache();
  }
}
