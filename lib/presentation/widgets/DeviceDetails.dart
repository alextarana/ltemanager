import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ltemanager2/constants/color.dart';

class DeviceDetailsModel extends StatelessWidget {
  final String model;
  final String net;
  final String usedData;
  final String timeElapsed;

  const DeviceDetailsModel({
    Key? key,
    required this.model,
    required this.net,
    required this.usedData,
    required this.timeElapsed,
  }) : super(key: key);

  Widget _buildElement(String field, String detail) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          "$field: $detail",
          style: GoogleFonts.quicksand(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
              fontSize: 16,
            ),
          ),
        ),
      ),
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
          child: Column(
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "device-details".tr(),
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
              Table(
                children: [
                  TableRow(
                    children: [
                      _buildElement("MODELLO".tr(), model),
                      _buildElement("RETE".tr(), net),
                    ],
                  ),
                  TableRow(
                    children: [
                      _buildElement("UTILIZZO DATI".tr(), usedData),
                      _buildElement("DURATA".tr(), timeElapsed),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
