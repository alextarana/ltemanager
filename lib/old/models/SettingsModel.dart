/*import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ltemanager2/constants/color.dart';
import 'package:ltemanager2/router-api/Router.dart';
import 'package:ltemanager2/utilities/SharedPreferencesFunctions.dart';

class SettingsModel extends StatefulWidget {
  @override
  _SettingsModelState createState() => _SettingsModelState();
}

class _SettingsModelState extends State<SettingsModel> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        color: BG_DEFAULT,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 4,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "settings".tr(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),

                SwitchListTile(
                  title: Text(
                    "BANDA 1 (2100MHz)".tr(),
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                        fontSize: 16,
                      ),
                    ),
                  ),
                  value: _1_band,
                  onChanged: (value) {
                    setState(() {
                      _1_band = value;
                    });
                  },
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                SwitchListTile(
                  title: Text(
                    "BANDA 3 (1800MHz)".tr(),
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                        fontSize: 16,
                      ),
                    ),
                  ),
                  value: _3_band,
                  onChanged: (value) {
                    setState(() {
                      _3_band = value;
                    });
                  },
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                SwitchListTile(
                  title: Text(
                    "BANDA 7 (2600MHz)".tr(),
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                        fontSize: 16,
                      ),
                    ),
                  ),
                  value: _7_band,
                  onChanged: (value) {
                    setState(() {
                      _7_band = value;
                    });
                  },
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                SwitchListTile(
                  title: Text(
                    "BANDA 8 (900MHz)".tr(),
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                        fontSize: 16,
                      ),
                    ),
                  ),
                  value: _8_band,
                  onChanged: (value) {
                    setState(() {
                      _8_band = value;
                    });
                  },
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                SwitchListTile(
                  title: Text(
                    "BANDA 20 (800MHz)".tr(),
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                        fontSize: 16,
                      ),
                    ),
                  ),
                  value: _20_band,
                  onChanged: (value) {
                    setState(() {
                      _20_band = value;
                    });
                  },
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                SwitchListTile(
                  title: Text(
                    "BANDA 28 (700MHz)".tr(),
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                        fontSize: 16,
                      ),
                    ),
                  ),
                  value: _28_band,
                  onChanged: (value) {
                    setState(() {
                      _28_band = value;
                    });
                  },
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                SwitchListTile(
                  title: Text(
                    "BANDA 32 (1500MHz)".tr(),
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                        fontSize: 16,
                      ),
                    ),
                  ),
                  value: _32_band,
                  onChanged: (value) {
                    setState(() {
                      _32_band = value;
                    });
                  },
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                SwitchListTile(
                  title: Text(
                    "BANDA 38 (2600MHz)".tr(),
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                        fontSize: 16,
                      ),
                    ),
                  ),
                  value: _38_band,
                  onChanged: (value) {
                    setState(() {
                      _38_band = value;
                    });
                  },
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                SwitchListTile(
                  title: Text(
                    "BANDA 40 (2300MHz)".tr(),
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                        fontSize: 16,
                      ),
                    ),
                  ),
                  value: _40_band,
                  onChanged: (value) {
                    setState(() {
                      _40_band = value;
                    });
                  },
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                SwitchListTile(
                  title: Text(
                    "AUTO",
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                        fontSize: 16,
                      ),
                    ),
                  ),
                  value: _auto_band,
                  onChanged: (value) {
                    setState(() {
                      _1_band = !value;
                      _3_band = !value;
                      _7_band = !value;
                      _8_band = !value;
                      _20_band = !value;
                      _28_band = !value;
                      _32_band = !value;
                      _38_band = !value;
                      _40_band = !value;
                      _auto_band = value;
                    });
                  },
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    (isLoading)
                        ? ((showError)
                            ? "bands-loading-error".tr()
                            : "bands-loading".tr())
                        : "bands-cancel".tr(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: (showError) ? Colors.red : Colors.grey[900],
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                //apply button
                Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(40, 36, 92, 1),
                      width: 2,
                    ),
                    color: BG_DEFAULT,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: FlatButton(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            bottom: 10.0,
                            left: 20,
                            right: 20,
                          ),
                          child: Text(
                            "APPLICA".tr(),
                            style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: (isLoading)
                        ? null
                        : () async {
                            setState(() {
                              isLoading = true;
                            });
                            if (_auto_band == false &&
                                _1_band == false &&
                                _3_band == false &&
                                _7_band == false &&
                                _8_band == false &&
                                _20_band == false &&
                                _28_band == false &&
                                _32_band == false &&
                                _38_band == false &&
                                _40_band == false) {
                              _auto_band = true;
                            } //making sure if no one is true that auto is set true

                            List<int> bands = [];

                            if (_1_band) bands.add(1);
                            if (_3_band) bands.add(3);
                            if (_7_band) bands.add(7);
                            if (_8_band) bands.add(8);
                            if (_20_band) bands.add(20);
                            if (_28_band) bands.add(28);
                            if (_32_band) bands.add(32);
                            if (_38_band) bands.add(38);
                            if (_40_band) bands.add(40);
                            if (_auto_band) bands.add(-1);

                            RouterAPI.setBands(bands).then((value) {
                              if (value == true) {
                                Navigator.of(context).pop();
                              } else {
                                setState(() {
                                  showError = true;
                                });

                                Future.delayed(
                                    const Duration(milliseconds: 1000), () {
                                  setState(() {
                                    isLoading = false;
                                    showError = false;
                                  });
                                });
                              }
                            });
                          },
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
*/
