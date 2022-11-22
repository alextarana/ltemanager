import 'package:flutter/material.dart';
import 'package:ltemanager2/presentation/widgets/BandsSelectorModel.dart';

Future<void> showMyDialogBands(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: SafeArea(
            child: BandsSelectorModel(),
          ),
        );
      });
}
