import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ltemanager2/constants/color.dart';

class DataFieldModel extends StatelessWidget {
  final String model;
  final String net;
  final String bands;
  final String primaryBand;
  final String bandwidth;
  final String aggregation;
  final String ipAddress;
  final String rsrp;
  final String rsrq;
  final String sinr;
  final String rssi;
  final String dlSpeed;
  final String ulSpeed;
  final String usedData;
  final String timeElapsed;

  const DataFieldModel({
    Key? key,
    required this.model,
    required this.net,
    required this.bands,
    required this.primaryBand,
    required this.bandwidth,
    required this.aggregation,
    required this.ipAddress,
    required this.rsrp,
    required this.rsrq,
    required this.sinr,
    required this.rssi,
    required this.dlSpeed,
    required this.ulSpeed,
    required this.usedData,
    required this.timeElapsed,
  }) : super(key: key);

  TableRow _buildTableRow(String field, String detail) {
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
              model,
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
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "connection-details".tr(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bigShouldersDisplay(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Table(
                  children: [
                    _buildTableRow("MODELLO".tr(), model),
                    _buildTableRow("RETE".tr(), net),
                    _buildTableRow("BANDE".tr(), bands),
                    _buildTableRow("B. PRIMARIA".tr(), primaryBand),
                    _buildTableRow("BANDWIDTH".tr(), bandwidth),
                    _buildTableRow("AGGREGAZIONE".tr(), aggregation),
                    _buildTableRow("INDIRIZZO IP".tr(), ipAddress),
                    _buildTableRow("RSRP".tr(), rsrp),
                    _buildTableRow("RSRQ".tr(), rsrq),
                    _buildTableRow("SINR".tr(), sinr),
                    _buildTableRow("RSSI".tr(), rssi),
                    _buildTableRow("VELOCITÀ DL".tr(), dlSpeed),
                    _buildTableRow("VELOCITÀ UL".tr(), ulSpeed),
                    _buildTableRow("UTILIZZO DATI".tr(), usedData),
                    _buildTableRow("DURATA".tr(), timeElapsed),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
