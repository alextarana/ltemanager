import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ltemanager2/models/signalModel.dart';

class TitleModel extends StatelessWidget {
  final int signalState;
  const TitleModel({Key key, @required this.signalState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "application-title".tr(),
                textAlign: TextAlign.center,
                style: GoogleFonts.bigShouldersDisplay(
                  textStyle: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w900,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
            SignalModel(
              signalState: this.signalState,
            ),
          ],
        ),
      ),
    );
  }
}
