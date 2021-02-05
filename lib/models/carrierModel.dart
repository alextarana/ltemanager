import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ltemanager2/constants/color.dart';
import 'package:ltemanager2/elements/signalElement.dart';

class CarrierModel extends StatelessWidget {
  final String carrier;

  const CarrierModel({Key key, @required this.carrier}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: BG_DEFAULT,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 4,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "carrier".tr(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.bigShouldersDisplay(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[900],
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    carrier,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bigShouldersDisplay(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
