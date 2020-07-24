import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  final FlutterSecureStorage storage = new FlutterSecureStorage();

  LocalStorage();

  Future delete(String key) async {
    await storage.delete(key: key);
  }

  Future put(String key, String value) async {
    await storage.write(key: key, value: value);
  }

  Future<String> get(String key) async {
    return await storage.read(key: key);
  }
}
