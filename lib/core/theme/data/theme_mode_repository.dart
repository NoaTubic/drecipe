import 'package:drecipe/features/common/data/storage/secure_storage.dart';
import 'package:drecipe/features/common/data/storage/secure_storage_keys.dart';

abstract class IThemeModeRepository {
  Future<String> loadThemeMode();
  Future<void> changeThemeMode({required String themeMode});
}

class ThemeModeRepository implements IThemeModeRepository {
  final SecureStorage _secureStorage;

  ThemeModeRepository(this._secureStorage);

  @override
  Future<String> loadThemeMode() async {
    final String themModeKey = await _secureStorage.read(
      key: SecureStorageKeys.themeMode,
      defaultValue: '',
    );

    return themModeKey;
  }

  @override
  Future<void> changeThemeMode({required String themeMode}) async {
    await _secureStorage.write(
      key: SecureStorageKeys.themeMode,
      value: themeMode,
    );
  }
}
