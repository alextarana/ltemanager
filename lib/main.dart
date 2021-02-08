import 'dart:async';

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:ltemanager2/models/CarrierModel.dart';
import 'package:ltemanager2/models/CellIDModel.dart';
import 'package:ltemanager2/models/ConnectionDetails.dart';
import 'package:ltemanager2/models/DeviceDetails.dart';
import 'package:ltemanager2/models/TitleModel.dart';
import 'package:ltemanager2/profile/Profile.dart';
import 'package:ltemanager2/router-api/Router.dart';

void main() {
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
        primarySwatch: Colors.grey,
      ),
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
  static const duration = const Duration(seconds: 20);

  Timer timer;

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
  var aggregation = "-";
  var timeElapsed = "-";
  var model = "-";
  var net = "-";
  var usedData = "-";

  int signalState = 0;

  @override
  void initState() {
    super.initState();
    _handleApi();
    if (timer == null)
      timer = Timer.periodic(duration, (Timer t) {
        _handleApi();
      });
  }

  _handleApi() async {
    bool loginState = await RouterAPI.loginState()
        .then((value) => value)
        .catchError((onError) {
      //print(onError);
    });

    //print("LoginState: " + loginState.toString());

    if (!loginState) {
      loginState = await RouterAPI.login(Profile(
        ip: "192.168.8.1",
        name: "b535",
        username: "admin",
        password: "admin1234",
      )).then((value) => value).catchError((onError) {
        //open login page
      });
    } else {
      var localState = await RouterAPI.statusInformation()
          .then((value) => value)
          .catchError((onError) {
        //print("errore:" + onError);
      });
      setState(() {
        signalState = localState;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF167F80),
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.03,
            right: MediaQuery.of(context).size.width * 0.03,
          ),
          child: Center(
            child: Column(
              children: [
                TitleModel(
                  signalState: signalState,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
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
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: ConnectionDetailsModel(
                    ipAddress: ipAddress,
                    rsrp: rsrp,
                    rsrq: rsrq,
                    sinr: sinr,
                    rssi: rssi,
                    bands: bands,
                    primaryBand: primaryBand,
                    bandwidth: bandwidth,
                    aggregation: aggregation,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: DeviceDetailsModel(
                    model: model,
                    net: net,
                    usedData: usedData,
                    timeElapsed: timeElapsed,
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
