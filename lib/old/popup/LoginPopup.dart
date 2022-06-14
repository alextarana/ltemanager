import 'package:flutter/material.dart';
import 'package:ltemanager2/elements/loginElements.dart';
import 'package:ltemanager2/router-api/Router.dart';

Future<void> showMyDialog(BuildContext context) async {
  RouterAPI.logout();

  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: SafeArea(
            child: LoginElements(),
          ),
        );
      });
}
