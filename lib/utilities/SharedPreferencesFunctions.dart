import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';

Future<String?> readSharedPref(String key) async {
  final prefs = await SharedPreferences.getInstance();
  final value = prefs.getString(key);
  //log("Read: $key = $value", name: "SHARED PREFERENCES");
  return value;
}

Future<void> saveSharedPref(String key, String value) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString(key, value);
  //log("Saved: $key = $value", name: "SHARED PREFERENCES");
}
