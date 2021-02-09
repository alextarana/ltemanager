import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_native_admob/flutter_native_admob.dart';
import 'package:flutter_native_admob/native_admob_controller.dart';
import 'package:ltemanager2/constants/color.dart';

class AdsModel extends StatefulWidget {
  static var adUnitID = (Platform.isAndroid)
      ? "ca-app-pub-6208520310131435/8892962671"
      : "ca-app-pub-6208520310131435/8334737080";

  @override
  _AdsModelState createState() => _AdsModelState();
}

class _AdsModelState extends State<AdsModel> {
  final _nativeAdController = NativeAdmobController();
  double _height = 0;

  StreamSubscription _subscription;

  @override
  void initState() {
    _subscription = _nativeAdController.stateChanged.listen(_onStateChanged);
    super.initState();
  }

  @override
  void dispose() {
    _subscription.cancel();
    _nativeAdController.dispose();
    super.dispose();
  }

  void _onStateChanged(AdLoadState state) {
    switch (state) {
      case AdLoadState.loading:
        setState(() {
          _height = 0;
        });
        break;

      case AdLoadState.loadCompleted:
        setState(() {
          _height = 330;
        });
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: BG_DEFAULT,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 4,
      child: Container(
        height: 70,
        padding: const EdgeInsets.all(5.0),
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(bottom: 20.0),
        child: NativeAdmob(
          type: NativeAdmobType.banner,
          adUnitID: AdsModel.adUnitID,
          controller: _nativeAdController,
          loading: Container(),
        ),
      ),
    );
  }
}
