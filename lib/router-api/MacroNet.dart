class MacroNet {
  static const String MACRO_NET_WORK_TYPE_EX_NOSERVICE = "0";
  static const String MACRO_NET_WORK_TYPE_EX_GSM = "1";
  static const String MACRO_NET_WORK_TYPE_EX_GPRS = "2";
  static const String MACRO_NET_WORK_TYPE_EX_EDGE = "3";
  static const String MACRO_NET_WORK_TYPE_EX_IS95A = "21";
  static const String MACRO_NET_WORK_TYPE_EX_IS95B = "22";
  static const String MACRO_NET_WORK_TYPE_EX_CDMA_1X = "23";
  static const String MACRO_NET_WORK_TYPE_EX_EVDO_REV_0 = "24";
  static const String MACRO_NET_WORK_TYPE_EX_EVDO_REV_A = "25";
  static const String MACRO_NET_WORK_TYPE_EX_EVDO_REV_B = "26";
  static const String MACRO_NET_WORK_TYPE_EX_HYBRID_CDMA_1X = "27";
  static const String MACRO_NET_WORK_TYPE_EX_HYBRID_EVDO_REV_0 = "28";
  static const String MACRO_NET_WORK_TYPE_EX_HYBRID_EVDO_REV_A = "29";
  static const String MACRO_NET_WORK_TYPE_EX_HYBRID_EVDO_REV_B = "30";
  static const String MACRO_NET_WORK_TYPE_EX_EHRPD_REL_0 = "31";
  static const String MACRO_NET_WORK_TYPE_EX_EHRPD_REL_A = "32";
  static const String MACRO_NET_WORK_TYPE_EX_EHRPD_REL_B = "33";
  static const String MACRO_NET_WORK_TYPE_EX_HYBRID_EHRPD_REL_0 = "34";
  static const String MACRO_NET_WORK_TYPE_EX_HYBRID_EHRPD_REL_A = "35";
  static const String MACRO_NET_WORK_TYPE_EX_HYBRID_EHRPD_REL_B = "36";
  static const String MACRO_NET_WORK_TYPE_EX_WCDMA = "41";
  static const String MACRO_NET_WORK_TYPE_EX_HSDPA = "42";
  static const String MACRO_NET_WORK_TYPE_EX_HSUPA = "43";
  static const String MACRO_NET_WORK_TYPE_EX_HSPA = "44";
  static const String MACRO_NET_WORK_TYPE_EX_HSPA_PLUS = "45";
  static const String MACRO_NET_WORK_TYPE_EX_DC_HSPA_PLUS = "46";
  static const String MACRO_NET_WORK_TYPE_EX_TD_SCDMA = "61";
  static const String MACRO_NET_WORK_TYPE_EX_TD_HSDPA = "62";
  static const String MACRO_NET_WORK_TYPE_EX_TD_HSUPA = "63";
  static const String MACRO_NET_WORK_TYPE_EX_TD_HSPA = "64";
  static const String MACRO_NET_WORK_TYPE_EX_TD_HSPA_PLUS = "65";
  static const String MACRO_NET_WORK_TYPE_EX_802_16E = "81";
  static const String MACRO_NET_WORK_TYPE_EX_LTE = "101";
  static const String MACRO_NET_WORK_TYPE_EX_LTE_PLUS = "1011";
  static const String MACRO_NET_WORK_TYPE_EX_NR = "111";

  static String handleNetType(dynamic net) {
    switch (net) {
      case MACRO_NET_WORK_TYPE_EX_NOSERVICE:
        return "SERVIZIO NON DISPONIBILE";

      case MACRO_NET_WORK_TYPE_EX_GSM:
        return "GSM";

      case MACRO_NET_WORK_TYPE_EX_GPRS:
        return "GPRS";

      case MACRO_NET_WORK_TYPE_EX_EDGE:
        return "EDGE";

      case MACRO_NET_WORK_TYPE_EX_IS95A:
      case MACRO_NET_WORK_TYPE_EX_IS95B:
      case MACRO_NET_WORK_TYPE_EX_CDMA_1X:
      case MACRO_NET_WORK_TYPE_EX_EVDO_REV_0:
      case MACRO_NET_WORK_TYPE_EX_EVDO_REV_A:
      case MACRO_NET_WORK_TYPE_EX_EVDO_REV_B:
      case MACRO_NET_WORK_TYPE_EX_HYBRID_CDMA_1X:
      case MACRO_NET_WORK_TYPE_EX_HYBRID_EVDO_REV_0:
      case MACRO_NET_WORK_TYPE_EX_HYBRID_EVDO_REV_A:
      case MACRO_NET_WORK_TYPE_EX_HYBRID_EVDO_REV_B:
      case MACRO_NET_WORK_TYPE_EX_EHRPD_REL_0:
      case MACRO_NET_WORK_TYPE_EX_EHRPD_REL_A:
      case MACRO_NET_WORK_TYPE_EX_EHRPD_REL_B:
      case MACRO_NET_WORK_TYPE_EX_HYBRID_EHRPD_REL_0:
      case MACRO_NET_WORK_TYPE_EX_HYBRID_EHRPD_REL_A:
      case MACRO_NET_WORK_TYPE_EX_HYBRID_EHRPD_REL_B:
        return "-";

      case MACRO_NET_WORK_TYPE_EX_WCDMA:
        return "WCDMA";

      case MACRO_NET_WORK_TYPE_EX_HSDPA:
        return "HSDPA";

      case MACRO_NET_WORK_TYPE_EX_HSUPA:
        return "HSUPA";

      case MACRO_NET_WORK_TYPE_EX_HSPA:
        return "HSPA";

      case MACRO_NET_WORK_TYPE_EX_HSPA_PLUS:
        return "HSPA+";

      case MACRO_NET_WORK_TYPE_EX_DC_HSPA_PLUS:
        return "DC-HSPA+";

      case MACRO_NET_WORK_TYPE_EX_TD_SCDMA:
        return "TD-SCDMA";

      case MACRO_NET_WORK_TYPE_EX_TD_HSDPA:
        return "TD-HSDPA";

      case MACRO_NET_WORK_TYPE_EX_TD_HSUPA:
        return "TD-HSUPA";

      case MACRO_NET_WORK_TYPE_EX_TD_HSPA:
        return "TD-HSPA";

      case MACRO_NET_WORK_TYPE_EX_TD_HSPA_PLUS:
        return "TD-HSPA+";

      case MACRO_NET_WORK_TYPE_EX_LTE:
        return "4G";

      case MACRO_NET_WORK_TYPE_EX_LTE_PLUS:
        return "4G+";

      case MACRO_NET_WORK_TYPE_EX_NR:
        return "5G";

      case MACRO_NET_WORK_TYPE_EX_802_16E:
        return "-";

      default:
        return "-";
    }
  }

  static String handleCA(String net) {
    if (net == MACRO_NET_WORK_TYPE_EX_LTE_PLUS) {
      return "SI";
    }
    return "NO";
  }
}
