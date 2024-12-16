import 'dart:convert';

import 'package:intl/intl.dart';
import 'package:path/path.dart' as p;
import 'package:crypto/crypto.dart';

// extension FileTypeExtension on String {
//   DirType get dirtype {
//     final extension = p.extension(this).toLowerCase();

//     switch (extension) {
//       case '.jpg':
//       case '.jpeg':
//       case '.png':
//       case '.webp':
//         return DirType.photo;
//       case '.mp4':
//       case '.mkv':
//         return DirType.video;
//       case '.mp3':
//       case '.wav':
//       case '.ogg':
//         return DirType.audio;
//       case '.pdf':
//       case '.txt':
//         return DirType.download;
//       default:
//         throw Exception('Unknown file type for extension: $extension');
//     }
//   }
// }

// extension DirectoryTypeExtension on String {
//   DirName get dirname {
//     final extension = p.extension(this).toLowerCase();

//     switch (extension) {
//       case '.jpg':
//       case '.jpeg':
//       case '.png':
//       case '.webp':
//         return DirName.dcim;
//       case '.mp4':
//       case '.mkv':
//         return DirName.dcim;
//       case '.mp3':
//       case '.wav':
//       case '.ogg':
//         return DirName.music;
//       case '.pdf':
//       case '.txt':
//         return DirName.download;
//       default:
//         throw Exception('Unknown file type for extension: $extension');
//     }
//   }
// }
extension AssetsDirectory on String {
  String get assetDir {
    final extension = p.extension(this).toLowerCase();

    switch (extension) {
      case '.jpg':
      case '.jpeg':
      case '.png':
      case '.webp':
        return "img";
      case '.mp4':
      case '.mkv':
        return "video";
      case '.mp3':
      case '.wav':
      case '.ogg':
        return "audio";
      case '.pdf':
      case '.txt':
        return "dl";
      default:
        throw Exception('Unknown file type for extension: $extension');
    }
  }
}

extension StringHashing on String {
  String generateHashedFileName() {
    // Generate a hash of the original filename
    var bytes = utf8.encode(this); // Convert to UTF-8
    var digest = sha256.convert(bytes); // Generate SHA-256 hash

    // Create a new unique filename using the hash
    return digest.toString();
  }
}

extension DateFormatID on DateTime {
  String get formatID => DateFormat("dd MMMM yyyy", "in_ID").format(this);
  String get formatTimeID =>
      DateFormat("HH:mm dd MMMM yyyy", "in_ID").format(this);
}
