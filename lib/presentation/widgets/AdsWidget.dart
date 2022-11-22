import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:ltemanager2/constants/color.dart';

class AdsWidget extends StatefulWidget {
  final adUnitID = (Platform.isAndroid)
      ? "ca-app-pub-6208520310131435/8892962671"
      : "ca-app-pub-6208520310131435/8334737080";

  @override
  _AdsWidgetState createState() => _AdsWidgetState();
}

class _AdsWidgetState extends State<AdsWidget> {
  final AdRequest request = const AdRequest(
    nonPersonalizedAds: true,
  );

  BannerAd? _bannerAd;
  bool _bannerAdIsLoaded = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    _bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: widget.adUnitID,
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) {
          debugPrint('$BannerAd loaded.');
          setState(() {
            _bannerAdIsLoaded = true;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('$BannerAd failedToLoad: $error');
          ad.dispose();
        },
        onAdOpened: (Ad ad) => debugPrint('$BannerAd onAdOpened.'),
        onAdClosed: (Ad ad) => debugPrint('$BannerAd onAdClosed.'),
      ),
      request: const AdRequest(),
    )..load();
    super.didChangeDependencies();
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
        margin: const EdgeInsets.only(bottom: 20.0),
        child: (_bannerAdIsLoaded && _bannerAd != null)
            ? SizedBox(
                height: _bannerAd?.size.height.toDouble(),
                width: _bannerAd?.size.width.toDouble(),
                child: AdWidget(ad: _bannerAd!),
              )
            : Container(),
      ),
    );
  }
}
