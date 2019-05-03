import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class Storage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/sensors.txt');
  }

  Future<File> openFile() async {
    return await _localFile;
  }

  Future<File> writeSensorData(String data) async {
    final file = await _localFile;

    return file.writeAsString('$data', mode: FileMode.append);
  }
}
