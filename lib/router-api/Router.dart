import 'dart:convert';
import 'dart:developer' as Dev;
import 'dart:math';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:ltemanager2/profile/Profile.dart';
import 'package:ltemanager2/router-api/MacroNet.dart';
import 'package:xml2json/xml2json.dart';
import 'package:convert/convert.dart';

class RouterAPI {
  static Profile _profile;
  static String _sessionID;
  static String _token = "";
  static String _requestToken = "";
  static String _requestTokenOne = "";
  static String _requestTokenTwo = "";
  static String _sessionCookie = "";
  static Map<String, String> _headers = {};

  static final RouterAPI _singleton = RouterAPI._internal();

  factory RouterAPI() => _singleton;

  RouterAPI._internal();

  static initialize({
    String ip,
    String name,
    String password,
    String username,
  }) async {
    if (_sessionCookie.isEmpty || _requestToken.isEmpty) {
      _profile = new Profile(
        ip: ip,
        name: name,
        password: password,
        username: username,
      );

      await _getToken();
    }
  }

  static handleHeaders(Map<String, String> headers) async {
    if (headers["__requestverificationtokenone"] != null) {
      if (headers["__requestverificationtokenone"].isNotEmpty) {
        _requestTokenOne = headers["__requestverificationtokenone"].toString();
      }
    }

    if (headers["__requestverificationtokentwo"] != null) {
      if (headers["__requestverificationtokentwo"].isNotEmpty) {
        _requestTokenTwo = headers["__requestverificationtokentwo"].toString();
      }
    }

    if (headers["__requestVerificationtoken"] != null) {
      if (headers["__requestVerificationtoken"].isNotEmpty) {
        _requestToken = headers["__requestverificationtoken"].toString();
      }
    }

    if (headers["set-cookie"] != null) {
      if (headers["set-cookie"].isNotEmpty) {
        _sessionCookie = headers["set-cookie"].toString();
        var tmp = _sessionCookie.split(";");
        var tmpString = tmp[0].split("=");

        _sessionCookie = tmpString[1].toString();
      }
    }
  }

  static void prepareHeaders() {
    _headers["Cookie"] = "SessionID=$_sessionCookie";

    if (_requestTokenOne.isNotEmpty) {
      _headers["__RequestVerificationToken"] = _requestTokenOne;
    } else if (_requestTokenTwo.isNotEmpty) {
      _headers["__RequestVerificationToken"] = _requestTokenTwo;
    } else {
      _headers["__RequestVerificationToken"] = _requestToken;
    }

    _headers["Accept"] = "*/*";
    _headers["User-Agent"] =
        "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.12) Gecko/20101026 Firefox/3.6.12";
  }

  static Future<dynamic> _get(String path) async {
    prepareHeaders();

    if (_profile == null) {
      throw Exception("Profile null");
    }

    final response = await http.get(
      _profile.getIp() + path,
      headers: _headers,
    );
    if (response.statusCode == 200) {
      //print(response.body);
      var message = response.body;

      final transformer = Xml2Json();

      transformer.parse(message);
      final responseDict = jsonDecode(transformer.toParker());
      //print(responseDict.toString());
      return responseDict;
    } else {
      Dev.log(response.body, name: "FAILED RESPONSE BODY");
      throw Exception('Failed to load. Code: ${response.statusCode}');
    }
  }

  static Future<dynamic> _post(String path, String data) async {
    prepareHeaders();
    final response = await http.post(
      _profile.getIp() + path,
      body: data,
      headers: _headers,
    );

    if (response.statusCode == 200) {
      //print(response.body);

      var message = response.body;

      final transformer = Xml2Json();

      transformer.parse(message);
      final responseDict = jsonDecode(transformer.toParker());

      await handleHeaders(response.headers);
      return responseDict;
    } else {
      Dev.log(response.body, name: "FAILED RESPONSE BODY");
      throw Exception('Failed to load. Code: ${response.statusCode}');
    }
  }

  static _getToken() async {
    await _get("/api/webserver/SesTokInfo").then((result) {
      if (result["response"]["SesInfo"] != null) {
        _sessionID = result["response"]["SesInfo"].toString();
        _sessionCookie = result["response"]["SesInfo"].toString();
      }

      if (result["response"]["TokInfo"] != null) {
        _token = result["response"]["TokInfo"].toString();
        _requestToken = result["response"]["TokInfo"].toString();
      }
    }).catchError((onError) {
      //loginState();
    });
  }

  static String _bandsDataToString(String data) {
    if ((data == "20880800C5") || (data == "20000800C5")) {
      return "AUTO";
    }

    var dataOut = "";

    if ((int.parse(data, radix: 16) & 0x1) == 0x1) {
      dataOut = "B1+";
    }

    if ((int.parse(data, radix: 16) & 0x4) == 0x4) {
      dataOut += "B3+";
    }

    if ((int.parse(data, radix: 16) & 0x40) == 0x40) {
      dataOut += "B7+";
    }

    if ((int.parse(data, radix: 16) & 0x1) == 0x80) {
      dataOut = "B9+";
    }

    if ((int.parse(data, radix: 16) & 0x1) == 0x8000000000) {
      dataOut = "B40+";
    }

    if ((int.parse(data, radix: 16) & 0x80000) == 0x80000) {
      dataOut += "B20+";
    }

    if ((int.parse(data, radix: 16) & 0x8000000) == 0x8000000) {
      dataOut += "B28+";
    }

    if ((int.parse(data, radix: 16) & 0x80000000) == 0x80000000) {
      dataOut += "B32+";
    }

    if ((int.parse(data, radix: 16) & 0x2000000000) == 0x2000000000) {
      dataOut += "B38+";
    }

    dataOut = (dataOut.endsWith("+"))
        ? dataOut.substring(0, dataOut.length - 1)
        : dataOut;

    return dataOut;
  }

  static Future<bool> loginState() async {
    return await _get("/api/user/state-login").then((result) {
      if (result["response"]["State"] != null) {
        if (result["response"]["State"] == "-1") {
          _sessionCookie = "";
          _requestToken = "";
          return false;
        }
        return true;
      }
    }).catchError((onError) {
      _sessionCookie = "";
      _requestToken = "";
      return false;
    });
  }

  //tested and ok
  static Future<bool> login(Profile p) async {
    final username = p.getUsername();
    final password = p.getPassword();

    _sessionID = "";
    _token = "";
    _requestToken = "";
    _requestTokenOne = "";
    _requestTokenTwo = "";
    _sessionCookie = "";

    await initialize(
      ip: p.getIp(),
      name: p.getName(),
      password: password,
      username: username,
    );

    final pass = base64.encode(
        ascii.encode(hex.encode(sha256.convert(utf8.encode(password)).bytes)));

    final authinfo = base64.encode(ascii.encode(hex.encode(sha256
        .convert(utf8.encode(username) +
            utf8.encode(pass) +
            utf8.encode(_requestToken))
        .bytes)));

    final logininfo =
        "<?xml version=\"1.0\"encoding=\"UTF-8\"?><request><Username>$username</Username><Password>$authinfo</Password><password_type>4</password_type>";

    return await _post("/api/user/login", logininfo).then((result) {
      if (result["response"] != null) {
        if (result["response"] != "OK") {
          Dev.log("KO - ERROR 1: " + result["response"], name: "LOGIN");
          _sessionCookie = "";
          _requestToken = "";
          return false;
        } else {
          Dev.log("OK", name: "LOGIN");
          //loginState();
          return true;
        }
      } else {
        //log("KO - ERROR 2", name: "LOGIN");
        _sessionCookie = "";
        _requestToken = "";
        return false;
      }
    }).catchError((onError) {
      Dev.log("KO - ERROR 3: " + onError, name: "LOGIN");
      _sessionCookie = "";
      _requestToken = "";
      return false;
    });
  }

  static void logout() async {
    final logoutInfo =
        "<?xml version:\"1.0\" encoding=\"UTF-8\"?><request><Logout>1</Logout></request>";

    await _post("/api/user/logout", logoutInfo).then((result) {
      if (result["response"] != null) {
        if (result["response"] != "OK") {
          Dev.log("KO - ERROR 1: " + result["response"], name: "LOGOUT");
        } else {
          Dev.log("OK", name: "LOGOUT");
          _sessionID = "";
          _token = "";
          _requestToken = "";
          _requestTokenOne = "";
          _requestTokenTwo = "";
          _sessionCookie = "";
        }
      } else {
        Dev.log("KO - ERROR 2", name: "LOGOUT");
      }
    }).catchError((onError) {
      Dev.log("KO - ERROR 3: " + onError, name: "LOGOUT");
    });
  }

  static Future<String> cellStatus() async {
    return await _get("/api/device/signal").then((result) {
      Map<String, String> results = {
        "cell-id": "-",
        "link": "",
      };

      if (result["response"]["cell_id"] != null) {
        int cellIdInt = int.parse(result["response"]["cell_id"]);

        if (cellIdInt != 0) {
          String cellId = cellIdInt.toRadixString(16);
          cellId = cellId.substring(0, cellId.length - 2);

          String stringENodeB = int.parse(cellId, radix: 16).toString();
          results["cell-id"] = stringENodeB;

          if (result["response"]["plmn"] != null) {
            String plmn = result["response"]["plmn"];
            if (plmn == "22201") {
              plmn = "2221";
            }
            if (plmn == "22299") {
              plmn = "22288";
            }
            if ((plmn == "22250") && (results["cell-id"].length == 6)) {
              plmn = "22288";
            }

            if (stringENodeB != "") {
              String linkLte = "https://lteitaly.it/internal/map.php#bts=" +
                  plmn +
                  "." +
                  results["cell-id"];
              results["link"] = linkLte;
            } else {
              results["link"] = "";
            }
          } else {
            results["link"] = "";
          }
        } else {
          results["cell-id"] = "-";

          return jsonEncode(results).toString();
        }
      } else {
        results["cell-id"] = "-";

        return jsonEncode(results).toString();
      }
      return jsonEncode(results).toString();
    }).catchError((onError) {
      return jsonEncode({
        "cell-id": "-",
        "link": "",
      }).toString();
    });
  }

  static Future<String> getCarrier() async {
    return await _get("/api/net/current-plmn").then((result) {
      var carrier = "Sconosciuto";
      if (result["response"]["FullName"] != null) {
        carrier = result["response"]["FullName"];
      }
      return carrier;
    }).catchError((onError) {
      return "Sconosciuto";
    });
  }

  static Future<String> signalStatus() async {
    return await _get("/api/device/signal").then((result) {
      Map<String, String> results = {
        "rsrq": "-",
        "rsrp": "-",
        "rssi": "-",
        "sinr": "-",
        "band": "-",
        "dlbandwidth": "-",
        "ulbandwidth": "-"
      };

      if (result["response"]["rsrq"] != null) {
        results["rsrq"] = result["response"]["rsrq"];
      }

      if (result["response"]["rsrp"] != null) {
        results["rsrp"] = result["response"]["rsrp"];
      }

      if (result["response"]["rssi"] != null) {
        results["rssi"] = result["response"]["rssi"];
      }

      if (result["response"]["sinr"] != null) {
        results["sinr"] = result["response"]["sinr"];
      }

      if (result["response"]["band"] != null) {
        results["band"] = result["response"]["band"];
      }

      if (result["response"]["dlbandwidth"] != null) {
        results["dlbandwidth"] = result["response"]["dlbandwidth"];
      }

      if (result["response"]["ulbandwidth"] != null) {
        results["ulbandwidth"] = result["response"]["ulbandwidth"];
      }

      return jsonEncode(results).toString();
    }).catchError((onError) {
      return jsonEncode({
        "rsrq": "-",
        "rsrp": "-",
        "rssi": "-",
        "sinr": "-",
        "band": "-",
        "dlbandwidth": "-",
        "ulbandwidth": "-"
      }).toString();
    });
  }

  static Future<String> deviceInformation() async {
    return await _get("/api/device/information").then((result) {
      Map<String, String> results = {
        "DeviceName": "-",
        "WanIPAddress": "-",
        "uptime": "-",
      };

      if (result["response"]["DeviceName"] != null) {
        results["DeviceName"] = result["response"]["DeviceName"];
      }

      if (result["response"]["WanIPAddress"] != null) {
        results["WanIPAddress"] = result["response"]["WanIPAddress"];
      }

      if (result["response"]["uptime"] != null) {
        int uptime = int.parse(result["response"]["uptime"]);

        var time =
            "${uptime ~/ 3600.0}h ${((uptime ~/ 3600.0) ~/ 60).toInt()}m ${(uptime % 3600) % 60}s";

        results["uptime"] = time;
      }
      return jsonEncode(results);
    }).catchError((onError) {
      return jsonEncode({
        "DeviceName": "-",
        "WanIPAddress": "-",
        "uptime": "-",
      });
    });
  }

  static Future<Map<String, String>> trafficInformation() async {
    return await _get("/api/monitoring/traffic-statistics").then((result) {
      Map<String, String> results = {
        "download": "-",
        "upload": "-",
      };

      if (result["response"]["CurrentDownloadRate"] != null) {
        var tmp =
            double.parse(result["response"]["CurrentDownloadRate"]) / 125000.0;

        results["download"] = tmp.toStringAsFixed(2);
      }

      if (result["response"]["CurrentUploadRate"] != null) {
        var tmp =
            double.parse(result["response"]["CurrentUploadRate"]) / 125000.0;

        results["upload"] = tmp.toStringAsFixed(2);
      }

      return results;
    }).catchError((onError) {
      return {"download": "-", "upload": "-"};
    });
  }

  static Future<String> trafficMonthInformation() async {
    return await _get("/api/monitoring/month_statistics").then((result) {
      double dataUsage = 0.0;

      if (result["response"]["CurrentMonthDownload"] != null) {
        dataUsage +=
            double.parse(result["response"]["CurrentMonthDownload"]) / 1e+9;
      }

      if (result["response"]["CurrentMonthUpload"] != null) {
        dataUsage +=
            double.parse(result["response"]["CurrentMonthUpload"]) / 1e+9;
      }

      return dataUsage.toStringAsFixed(2).toString() + "GB";
    }).catchError((onError) {
      return "-";
    });
  }

  static Future<int> statusInformation() async {
    return await _get("/api/monitoring/status").then((result) {
      if (result["response"]["SignalIcon"] != null) {
        return int.parse(result["response"]["SignalIcon"]);
      }

      return 0;
    }).catchError((onError) {
      return 0;
    });
  }

  static Future<String> netModeInformation() async {
    return await _get("/api/monitoring/status").then((result) {
      Map<String, String> results = {
        "net": "-",
        "ca": "-",
      };

      if (result["response"]["CurrentNetworkTypeEx"] != null) {
        results["net"] =
            MacroNet.handleNetType(result["response"]["CurrentNetworkTypeEx"]);
        results["ca"] =
            MacroNet.handleCA(result["response"]["CurrentNetworkTypeEx"]);
      }

      return jsonEncode(results);
    }).catchError((onError) {
      return jsonEncode({
        "net": "-",
        "ca": "-",
      });
    });
  }

  static Future<String> currentBands() async {
    return await _get("/api/net/net-mode").then((result) {
      if (result["response"]["LTEBand"] != null) {
        return _bandsDataToString(result["response"]["LTEBand"]);
      }
      return "-";
    }).catchError((onError) {
      return "-";
    });
  }

  static Future<bool> setBands(List<int> bands) async {
    int ltesum = 0;
    bool flag = false;

    for (var band in bands) {
      if (band == -1 || flag) {
        ltesum = -1;
        flag = true;
        continue;
      } else {
        ltesum += pow(2, band.toDouble() - 1.0).toInt();
      }
    }

    String ltesumStr;

    if (ltesum == -1) {
      ltesumStr = "7FFFFFFFFFFFFFFF";
    } else {
      ltesumStr = ltesum.toRadixString(16).toUpperCase();
    }

    String networkmodeinfo =
        "<?xml version:\"1.0\" encoding=\"UTF-8\"?><request><NetworkMode>03</NetworkMode><NetworkBand>3FFFFFFF</NetworkBand><LTEBand>$ltesumStr</LTEBand></request>";

    return await _post("/api/net/net-mode", networkmodeinfo).then((result) {
      if (result["response"] != null) {
        if (result["response"] == "OK") {
          return true;
        }
      }

      return false;
    }).catchError((onError) {
      return false;
    });
  }

  static void debugSession() {
    print("[DEBUG SESSION START ##########]");
    print("[Session ID] " + _sessionID);
    print("[Token] " + _token);
    print("[Token Request] " + _requestToken);
    print("[Token One] " + _requestTokenOne);
    print("[Token Two] " + _requestTokenTwo);
    print("[Session Cookie] " + _sessionCookie);
    print("[DEBUG SESSION END ##########]");
  }
}
