import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  // Singleton pattern implementation
  static final SharedPreferencesHelper _instance = SharedPreferencesHelper._internal();
  factory SharedPreferencesHelper() => _instance;
  SharedPreferencesHelper._internal();

  SharedPreferences? _prefs;

  // Initialize SharedPreferences instance
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Save a string value
  Future<void> setString(String key, String value) async {
    await _prefs?.setString(key, value);
  }

  // Retrieve a string value
  String? getString(String key) {
    return _prefs?.getString(key);
  }

  // Save an integer value
  Future<void> setInt(String key, int value) async {
    await _prefs?.setInt(key, value);
  }

  // Retrieve an integer value
  int? getInt(String key) {
    return _prefs?.getInt(key);
  }

  // Save a boolean value
  Future<void> setBool(String key, bool value) async {
    await _prefs?.setBool(key, value);
  }

  // Retrieve a boolean value
  bool? getBool(String key) {
    return _prefs?.getBool(key);
  }

  // Save a double value
  Future<void> setDouble(String key, double value) async {
    await _prefs?.setDouble(key, value);
  }

  // Retrieve a double value
  double? getDouble(String key) {
    return _prefs?.getDouble(key);
  }

  // Save a list of strings
  Future<void> setStringList(String key, List<String> value) async {
    await _prefs?.setStringList(key, value);
  }

  // Retrieve a list of strings
  List<String>? getStringList(String key) {
    return _prefs?.getStringList(key);
  }

  // Remove a value
  Future<void> remove(String key) async {
    await _prefs?.remove(key);
  }

  // Clear all values
  Future<void> clear() async {
    await _prefs?.clear();
  }
}
