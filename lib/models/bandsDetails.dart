import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ltemanager2/constants/color.dart';

class BandsSelectorModel extends StatelessWidget {
  _buildTableRow(String field, String detail) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              field,
              style: GoogleFonts.bigShouldersDisplay(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              detail,
              style: GoogleFonts.bigShouldersDisplay(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  fontSize: 16,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

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
          child: ExpansionTile(
            initiallyExpanded: true,
            title: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "bands-details".tr(),
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
            children: [
              Table(
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
