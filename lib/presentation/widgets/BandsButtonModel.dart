import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ltemanager2/constants/color.dart';
import 'package:easy_localization/easy_localization.dart';

class BandsButtonModel extends StatelessWidget {
  final bool enabled;

  const BandsButtonModel({Key? key, required this.enabled}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (enabled) {
          // await showMyDialogBands(context);
        }
      },
      child: Card(
        color: BTN_BORDER_DEFAULT,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 4,
        child: Card(
          color: BTN_BG_DEFAULT,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 1,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "CONFIGURAZIONEBANDE".tr(),
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
            ),
          ),
        ),
      ),
    );
  }
}
