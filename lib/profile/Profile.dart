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
}
