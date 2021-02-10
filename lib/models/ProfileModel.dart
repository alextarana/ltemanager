import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ltemanager2/constants/color.dart';
import 'package:ltemanager2/elements/LoginElements.dart';
import 'package:ltemanager2/popup/LoginPopup.dart';
import 'package:ltemanager2/router-api/Router.dart';

class ProfileModel extends StatefulWidget {
  final String name;

  const ProfileModel({Key key, @required this.name}) : super(key: key);

  @override
  _ProfileModelState createState() => _ProfileModelState();
}

class _ProfileModelState extends State<ProfileModel> {
  @override
  Widget build(BuildContext context) {
    return Card(
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
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "profile".tr(),
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
              Container(
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.all(1),
                          child: Text(
                            widget.name,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[900],
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () async {
                          print("change pressed");
                          await showMyDialog(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FittedBox(
                            child: Text(
                              "edit".tr(),
                              textAlign: TextAlign.center,
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[900],
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
