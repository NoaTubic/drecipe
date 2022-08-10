import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class ISecureStorage {
  Future<void> write({required String key, required String value});
  Future<String> read({required String key, required String defaultValue});
  Future<void> delete({required String key});
}

class SecureStorage implements ISecureStorage {
  final FlutterSecureStorage _secureStorage;

  SecureStorage(this._secureStorage);

  @override
  Future<void> write({required String key, required String value}) async {
    await _secureStorage.write(key: key, value: value);
  }

  @override
  Future<String> read(
      {required String key, required String defaultValue}) async {
    return await _secureStorage.read(key: key) ?? defaultValue;
  }

  @override
  Future<void> delete({required String key}) async {
    await _secureStorage.delete(key: key);
  }
}
