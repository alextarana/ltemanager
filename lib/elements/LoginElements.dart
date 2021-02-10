import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ltemanager2/constants/color.dart';
import 'package:ltemanager2/profile/Profile.dart';
import 'package:ltemanager2/profile/ProfileRouter.dart';
import 'package:ltemanager2/router-api/Router.dart';

class LoginElements extends StatefulWidget {
  @override
  _LoginElementsState createState() => _LoginElementsState();
}

class _LoginElementsState extends State<LoginElements> {
  bool showError = false;

  final usernameController = TextEditingController();

  final ipController = TextEditingController();

  final passwordController = TextEditingController();

  final nickController = TextEditingController();

  var profileName = "defaultSelectedProfile".tr();

  @override
  Widget build(BuildContext context) {
    //print(isActive);
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
                    "LOGIN",
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
                DropdownButton<Profile>(
                  autofocus: false,
                  hint: Text(profileName),
                  items: ProfileRouter.getProfiles().map((Profile value) {
                    return DropdownMenuItem<Profile>(
                      value: value,
                      child: Text(value.getName()),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      profileName = value.getName();
                      nickController.text = value.getName();
                      ipController.text = value.getIp();
                      usernameController.text = value.getUsername();
                      passwordController.text = value.getPassword();
                    });
                  },
                ),
                Column(
                  children: [
                    Text(
                      "fill-in".tr(),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[900],
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: BG_DEFAULT,
                          width: 2,
                        ),
                        color: Color(0xAF1499AC),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 1, 15, 3),
                        child: Theme(
                          data: ThemeData(
                            hintColor: Colors.white,
                            accentColor: Colors.white,
                            primaryColor: Colors.white,
                            highlightColor: Colors.white,
                          ),
                          child: TextField(
                            textInputAction: TextInputAction.next,
                            //onEditingComplete: () => node.nextFocus(),
                            controller: nickController,
                            style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            decoration: InputDecoration(
                              fillColor: Color(0xFF1499AC),
                              hintText: "configuration-name".tr(),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: BG_DEFAULT,
                          width: 2,
                        ),
                        color: Color(0xAF1499AC),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 1, 15, 3),
                        child: Theme(
                          data: ThemeData(
                            hintColor: Colors.white,
                            accentColor: Colors.white,
                            primaryColor: Colors.white,
                            highlightColor: Colors.white,
                          ),
                          child: TextField(
                            textInputAction: TextInputAction.next,
                            //onEditingComplete: () => node.nextFocus(),
                            controller: ipController,
                            style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            decoration: InputDecoration(
                              fillColor: Color(0xFF1499AC),
                              hintText: "IP",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: BG_DEFAULT,
                          width: 2,
                        ),
                        color: Color(0xAF1499AC),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 1, 15, 3),
                        child: Theme(
                          data: ThemeData(
                            hintColor: Colors.white,
                            accentColor: Colors.white,
                            primaryColor: Colors.white,
                            highlightColor: Colors.white,
                          ),
                          child: TextField(
                            textInputAction: TextInputAction.next,
                            //onEditingComplete: () => node.nextFocus(),
                            controller: usernameController,
                            style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            decoration: InputDecoration(
                              fillColor: Color(0xFF1499AC),
                              hintText: "Username",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: BG_DEFAULT,
                          width: 2,
                        ),
                        color: Color(0xAF1499AC),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(
                              0,
                              3,
                            ),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 1, 15, 3),
                        child: Theme(
                          data: ThemeData(
                            hintColor: Colors.white,
                            accentColor: Colors.white,
                            primaryColor: Colors.white,
                            highlightColor: Colors.white,
                          ),
                          child: TextField(
                            textInputAction: TextInputAction.done,
                            //onSubmitted: (_) => node.unfocus(),
                            controller: passwordController,
                            style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              hintText: "Password",
                            ),
                            obscureText: true,
                          ),
                        ),
                      ),
                    ),
                    (showError)
                        ? Text(
                            "login-error".tr(),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red[900],
                                fontSize: 14,
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
                //login button
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
                            "LOGIN",
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
                    onPressed: () async {
                      final configName = nickController.text;
                      final ip = ipController.text;
                      final username = usernameController.text;
                      final password = passwordController.text;

                      final profile = Profile(
                        ip: ip,
                        name: configName,
                        username: username,
                        password: password,
                      );

                      print(profile);

                      bool isLogged = await RouterAPI.login(profile)
                          .then((value) => value)
                          .catchError((onError) {
                        return false;
                      });

                      print(isLogged);

                      if (isLogged) {
                        var index = ProfileRouter.addProfile(profile);
                        ProfileRouter.selectLoggedIn(index);
                        Navigator.of(context).pop();
                      } else {
                        setState(() {
                          showError = true;
                        });
                      }
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
