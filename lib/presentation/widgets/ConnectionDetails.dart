import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ltemanager2/constants/color.dart';

class ConnectionDetailsModel extends StatelessWidget {
  final String rsrp;
  final String rsrq;
  final String sinr;
  final String rssi;
  final String ipAddress;
  final String bands;
  final String primaryBand;
  final String bandwidth;
  final String aggregation;

  const ConnectionDetailsModel({
    required Key key,
    required this.ipAddress,
    required this.rsrp,
    required this.rsrq,
    required this.sinr,
    required this.rssi,
    required this.bands,
    required this.primaryBand,
    required this.bandwidth,
    required this.aggregation,
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
                  "connection-details".tr(),
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
              _buildElement("INDIRIZZO IP".tr(), ipAddress),
              Table(
                children: [
                  TableRow(children: [
                    TableCell(
                        child: Padding(
                      padding: const EdgeInsets.only(bottom: 1.0, top: 1.0),
                      child: Container(
                        height: 0.5,
                        color: Colors.black,
                      ),
                    )),
                    TableCell(
                        child: Padding(
                      padding: const EdgeInsets.only(bottom: 1.0, top: 1.0),
                      child: Container(
                        height: 0.5,
                        color: Colors.black,
                      ),
                    )),
                  ]),
                  TableRow(
                    children: [
                      _buildElement("RSRP".tr(), rsrp),
                      _buildElement("RSRQ".tr(), rsrq),
                    ],
                  ),
                  TableRow(
                    children: [
                      _buildElement("SINR".tr(), sinr),
                      _buildElement("RSSI".tr(), rssi),
                    ],
                  ),
                  TableRow(children: [
                    TableCell(
                        child: Padding(
                      padding: const EdgeInsets.only(bottom: 1.0, top: 1.0),
                      child: Container(
                        height: 0.5,
                        color: Colors.black,
                      ),
                    )),
                    TableCell(
                        child: Padding(
                      padding: const EdgeInsets.only(bottom: 1.0, top: 1.0),
                      child: Container(
                        height: 0.5,
                        color: Colors.black,
                      ),
                    )),
                  ]),
                  TableRow(
                    children: [
                      _buildElement("B. PRIMARIA".tr(), primaryBand),
                      _buildElement("AGGREGAZIONE".tr(), aggregation),
                    ],
                  ),
                ],
              ),
              _buildElement("BANDWIDTH".tr(), bandwidth),
              _buildElement("BANDE".tr(), bands),
            ],
          ),
        ),
      ),
    );
  }
}
