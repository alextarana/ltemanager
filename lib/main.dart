import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:ltemanager2/models/AdsModel.dart';
import 'package:ltemanager2/models/BandsButtonModel.dart';
import 'package:ltemanager2/models/CarrierModel.dart';
import 'package:ltemanager2/models/CellIDModel.dart';
import 'package:ltemanager2/models/ConnectionDetails.dart';
import 'package:ltemanager2/models/DeviceDetails.dart';
import 'package:ltemanager2/models/ProfileModel.dart';
import 'package:ltemanager2/models/TitleModel.dart';
import 'package:ltemanager2/popup/LoginPopup.dart';
import 'package:ltemanager2/profile/Profile.dart';
import 'package:ltemanager2/profile/ProfileRouter.dart';
import 'package:ltemanager2/router-api/Router.dart';
import 'package:ltemanager2/utilities/SharedPreferencesFunctions.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en', 'US'), Locale('it', 'IT')],
      path: 'assets/translations',
      fallbackLocale: Locale('en', 'US'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'LTE Manager 2.0',
      theme: ThemeData(
          primarySwatch: Colors.grey, dividerColor: Colors.transparent),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const duration = const Duration(seconds: 5);
  //NativeAdmob _nativeAdmob = null;

  Timer timer;
  var profileName = "";
  var carrier = "-";
  var cellId = "-";
  var ipAddress = "-";
  var rsrp = "-";
  var rsrq = "-";
  var sinr = "-";
  var rssi = "-";
  var bands = "-";
  var primaryBand = "-";
  var bandwidth = "-";
  var aggregation = "NO";
  var timeElapsed = "-";
  var model = "-";
  var net = "-";
  var usedData = "-";

  var link = "";

  int signalState = 0;
  bool isNotLoggedIn = true;
  bool isLoginPopupOpened = false;

  bool qDarkmodeEnable;

  @override
  void initState() {
    ProfileRouter.loadProfiles();
    _handleApi();
    if (timer == null) {
      timer = Timer.periodic(duration, (Timer t) {
        _handleApi();
      });
    }

    super.initState();
  }

  _handleApi() async {
    bool loginState = await RouterAPI.loginState()
        .then((value) => value)
        .catchError((onError) {});

    String indexProfileSelectedStr =
        await readSharedPref("indexProfileSelected");
    int indexProfileSelected = -1;

    try {
      indexProfileSelected = int.parse(indexProfileSelectedStr);
    } catch (ex) {
      if (!isLoginPopupOpened) {
        showMyDialog(context, "LOGIN", null);
        isLoginPopupOpened = true;
      }

      return;
    }

    if (indexProfileSelected == -1) {
      if (!isLoginPopupOpened) {
        showMyDialog(context, "LOGIN", null);
        isLoginPopupOpened = true;
      }

      return;
    }

    Profile currentProfile =
        ProfileRouter.getProfileAt(index: indexProfileSelected);

    String logoutForced = await readSharedPref("logout");

    if (logoutForced == "false") {
      if (!isLoginPopupOpened) {
        showMyDialog(context, "LOGIN", null);
        isLoginPopupOpened = true;
      }
      return;
    }

    if (!loginState) {
      loginState = await RouterAPI.login(
              ProfileRouter.getProfileAt(index: indexProfileSelected))
          .then((value) => value)
          .catchError((onError) {
        setState(() {
          if (!isLoginPopupOpened) {
            showMyDialog(context, "LOGIN", null);
            isLoginPopupOpened = true;
          }
        });
      });

      if (loginState) {
        setState(() {
          profileName = currentProfile.getName();
        });
      } else if (!isLoginPopupOpened) {
        showMyDialog(context, "LOGIN", null);
        isLoginPopupOpened = true;
      }
    } else {
      isLoginPopupOpened = false;
      var localState = await RouterAPI.statusInformation()
          .then((value) => value)
          .catchError((onError) {});

      var localBandsInfo = await RouterAPI.currentBands()
          .then((value) => value)
          .catchError((onError) {});

      var localCarrier = await RouterAPI.getCarrier()
          .then((value) => value)
          .catchError((onError) {});

      var localCellInfo = await RouterAPI.cellStatus()
          .then((value) => value)
          .catchError((onError) {});

      var cellDict = jsonDecode(localCellInfo);

      var localSignalInfo = await RouterAPI.signalStatus()
          .then((value) => value)
          .catchError((onError) {});

      var signalDict = jsonDecode(localSignalInfo);

      var localNetModeInfo = await RouterAPI.netModeInformation()
          .then((value) => value)
          .catchError((onError) {});

      var netModeDict = jsonDecode(localNetModeInfo);

      var localDeviceInfo = await RouterAPI.deviceInformation()
          .then((value) => value)
          .catchError((onError) {});

      var deviceDict = jsonDecode(localDeviceInfo);

      var trafficInfo = await RouterAPI.trafficMonthInformation()
          .then((value) => value)
          .catchError((onError) {});

      setState(() {
        profileName = currentProfile.getName();
        signalState = localState;
        carrier = localCarrier;
        cellId = cellDict["cell-id"];
        link = cellDict["link"];
        rsrp = signalDict["rsrp"];
        rsrq = signalDict["rsrq"];
        rssi = signalDict["rssi"];
        sinr = signalDict["sinr"];
        aggregation = netModeDict["ca"];
        net = netModeDict["net"];
        usedData = trafficInfo;
        ipAddress = deviceDict["WanIPAddress"];
        timeElapsed = deviceDict["uptime"];
        model = deviceDict["DeviceName"];
        primaryBand = signalDict["band"];
        bands = localBandsInfo;
        isNotLoggedIn = false;
        bandwidth = "${signalDict["dlbandwidth"]}/${signalDict["ulbandwidth"]}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var qdarkMode = MediaQuery.of(context).platformBrightness;

    if (qdarkMode == Brightness.dark) {
      qDarkmodeEnable = true;
    } else {
      qDarkmodeEnable = false;
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: TitleModel(
          signalState: signalState,
        ),
        brightness: (!qDarkmodeEnable) ? Brightness.light : Brightness.dark,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: (qDarkmodeEnable)
                  ? [Colors.black, Color(0xFF003058), Color(0xFF011629)]
                  : [Color(0xFF006080), Color(0xFF0176A1), Color(0xFF1499AC)],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
        ),
        child: SafeArea(
          minimum: EdgeInsets.only(
            top: 10,
            left: MediaQuery.of(context).size.width * 0.03,
            right: MediaQuery.of(context).size.width * 0.03,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ProfileModel(
                    name: profileName,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Column(
                    children: [
                      DeviceDetailsModel(
                        model: model,
                        net: net,
                        usedData: usedData,
                        timeElapsed: timeElapsed,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CarrierModel(
                                carrier: carrier,
                              ),
                              CellIDModel(
                                cellID: cellId,
                                link: link,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                  child: ConnectionDetailsModel(
                    ipAddress: ipAddress,
                    rsrp: rsrp,
                    rsrq: rsrq,
                    sinr: sinr,
                    rssi: rssi,
                    bands: bands,
                    primaryBand: primaryBand,
                    bandwidth: bandwidth,
                    aggregation: aggregation.tr(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                  child: Column(
                    children: [
                      AdsModel(),
                      BandsButtonModel(
                          enabled: (!isNotLoggedIn) ? true : false),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
