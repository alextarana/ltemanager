import 'dart:convert';

class Profile {
  String _name;
  String _ip;
  String _password;
  String _username;

  Profile({String name, String ip, String password, String username}) {
    _name = name;
    _ip = ip;
    _password = password;
    _username = username;

    if (!_ip.startsWith("http://")) {
      _ip = "http://" + _ip;
    }
  }

  String getName() {
    return _name;
  }

  String getIp() {
    return _ip;
  }

  String getPassword() {
    return _password;
  }

  String getUsername() {
    return _username;
  }

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      name: json["name"],
      ip: json["ip"],
      password: json["password"],
      username: json["username"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": this._name,
      "ip": this._ip,
      "password": this._password,
      "username": this._username,
    };
  }

  String toString() {
    return jsonEncode({
      "name": this._name,
      "ip": this._ip,
      "password": this._password,
      "username": this._username,
    });
  }
}
