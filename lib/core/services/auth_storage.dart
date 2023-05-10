import 'package:shared_preferences/shared_preferences.dart';

class AuthStorage {
  static Future<SharedPreferences> initShared() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    return storage;
  }

  static Future writeData({required String key, required String value}) async {
    final s = await initShared();
    final response = await s.setString(key, value);
    return response;
  }

  static Future<String?> readData({required String key}) async {
    final s = await initShared();
    final response = s.getString(key);
    return response;
  }

  static Future<bool> writeDataBool(
      {required String key, required bool value}) async {
    final s = await initShared();
    final response = await s.setBool(key, value);
    return response;
  }

  static Future<bool> readDataBool({required String key}) async {
    final s = await initShared();
    final response = s.getBool(key);
    return response!;
  }

  static Future deleteData({required String key}) async {
    final s = await initShared();
    final response = await s.remove(key);
    return response;
  }
}
