import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:ltemanager2/models/carrierModel.dart';
import 'package:ltemanager2/models/cellIDModel.dart';
import 'package:ltemanager2/models/connectionDetails.dart';
import 'package:ltemanager2/models/deviceDetails.dart';
import 'package:ltemanager2/models/titleModel.dart';

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
                  signalState: 4,
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
                            carrier: "WINDTRE",
                          ),
                          CellIDModel(
                            cellID: "124017",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: ConnectionDetailsModel(
                    ipAddress: "192.168.8.1",
                    rsrp: "null",
                    rsrq: "null",
                    sinr: "null",
                    rssi: "null",
                    bands: "null",
                    primaryBand: "null",
                    bandwidth: "null",
                    aggregation: "null",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: DeviceDetailsModel(
                    model: 'null',
                    net: 'null',
                    usedData: 'null',
                    timeElapsed: 'null',
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
