import 'dart:convert';

import 'package:ltemanager2/profile/Profile.dart';
import 'package:ltemanager2/utilities/SharedPreferencesFunctions.dart';

class ProfileRouter {
  static List<Profile> _profiles = [];

  static final ProfileRouter _singleton = ProfileRouter._internal();

  factory ProfileRouter() => _singleton;

  ProfileRouter._internal();

  static int addProfile(Profile p) {
    print(toJson());
    if (_profiles.contains(p)) return _profiles.indexOf(p);
    _profiles.add(p);

    saveSharedPref("profiles", toJson());
    try {
      return _profiles.length - 1;
    } catch (ex) {
      return 0;
    }
  }

  static selectLoggedIn(int index) {
    saveSharedPref("indexProfileSelected", index.toString());
  }

  static List<Profile> getProfiles() {
    return _profiles;
  }

  static Profile getProfileAt({int index}) {
    return _profiles[index];
  }

  static bool removeProfile(Profile p) {
    var result = _profiles.remove(p);

    if (result) {
      saveSharedPref("profiles", toJson());
    }

    return result;
  }

  static loadProfiles() async {
    String profileJSON = await readSharedPref("profiles");

    fromJson(profileJSON);
  }

  static fromJson(String json) {
    _profiles = [];

    var localDict = jsonDecode(json);

    for (var p in jsonDecode(localDict["profiles"])) {
      _profiles.add(Profile.fromJson(p));
    }
  }

  static String toJson() {
    return jsonEncode({"profiles": jsonEncode(_profiles)});
  }
}
