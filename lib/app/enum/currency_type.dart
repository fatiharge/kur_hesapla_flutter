// ignore_for_file: constant_identifier_names

import 'package:openapi/openapi.dart';

enum CurrencyType {
  ADA,
  AED,
  AFN,
  ALL,
  AMD,
  ANG,
  AOA,
  ARB,
  ARS,
  AUD,
  AVAX,
  AWG,
  AZN,
  BAM,
  BBD,
  BDT,
  BGN,
  BHD,
  BIF,
  BMD,
  BNB,
  BND,
  BOB,
  BRL,
  BSD,
  BTC,
  BTN,
  BWP,
  BYN,
  BYR,
  BZD,
  CAD,
  CDF,
  CHF,
  CLF,
  CLP,
  CNY,
  COP,
  CRC,
  CUC,
  CUP,
  CVE,
  CZK,
  DAI,
  DJF,
  DKK,
  DOP,
  DOT,
  DZD,
  EGP,
  ERN,
  ETB,
  ETH,
  EUR,
  FJD,
  FKP,
  GBP,
  GEL,
  GGP,
  GHS,
  GIP,
  GMD,
  GNF,
  GTQ,
  GYD,
  HKD,
  HNL,
  HRK,
  HTG,
  HUF,
  IDR,
  ILS,
  IMP,
  INR,
  IQD,
  IRR,
  ISK,
  JEP,
  JMD,
  JOD,
  JPY,
  KES,
  KGS,
  KHR,
  KMF,
  KPW,
  KRW,
  KWD,
  KYD,
  KZT,
  LAK,
  LBP,
  LKR,
  LRD,
  LSL,
  LTC,
  LTL,
  LVL,
  LYD,
  MAD,
  MATIC,
  MDL,
  MGA,
  MKD,
  MMK,
  MNT,
  MOP,
  MRO,
  MRU,
  MUR,
  MVR,
  MWK,
  MXN,
  MYR,
  MZN,
  NAD,
  NGN,
  NIO,
  NOK,
  NPR,
  NZD,
  OMR,
  OP,
  PAB,
  PEN,
  PGK,
  PHP,
  PKR,
  PLN,
  PYG,
  QAR,
  RON,
  RSD,
  RUB,
  RWF,
  SAR,
  SBD,
  SCR,
  SDG,
  SEK,
  SGD,
  SHP,
  SLL,
  SOL,
  SOS,
  SRD,
  STD,
  STN,
  SVC,
  SYP,
  SZL,
  THB,
  TJS,
  TMT,
  TND,
  TOP,
  TRY,
  TTD,
  TWD,
  TZS,
  UAH,
  UGX,
  USD,
  USDC,
  USDT,
  UYU,
  UZS,
  VEF,
  VES,
  VND,
  VUV,
  WST,
  XAF,
  XAG,
  XAU,
  XCD,
  XDR,
  XOF,
  XPD,
  XPF,
  XPT,
  XRP,
  YER,
  ZAR,
  ZMK,
  ZMW,
  ZWL;

  double getCurrencyRate({
    required CurrencyType calculatedType,
    required FindLatestResponse findLatestResponse,
  }) {
    final dollarRateSelected = double.parse(findValue(findLatestResponse));
    final dollarRateCalculated =
        double.parse(calculatedType.findValue(findLatestResponse));
    return dollarRateCalculated / dollarRateSelected;
  }

  String findValue(FindLatestResponse findLatestResponse) {
    switch (this) {
      case CurrencyType.ADA:
        return findLatestResponse.data!.ADA!;
      case CurrencyType.AED:
        return findLatestResponse.data!.AED!;
      case CurrencyType.AFN:
        return findLatestResponse.data!.AFN!;
      case CurrencyType.ALL:
        return findLatestResponse.data!.ALL!;
      case CurrencyType.AMD:
        return findLatestResponse.data!.AMD!;
      case CurrencyType.ANG:
        return findLatestResponse.data!.ANG!;
      case CurrencyType.AOA:
        return findLatestResponse.data!.AOA!;
      case CurrencyType.ARB:
        return findLatestResponse.data!.ARB!;
      case CurrencyType.ARS:
        return findLatestResponse.data!.ARS!;
      case CurrencyType.AUD:
        return findLatestResponse.data!.AUD!;
      case CurrencyType.AVAX:
        return findLatestResponse.data!.AVAX!;
      case CurrencyType.AWG:
        return findLatestResponse.data!.AWG!;
      case CurrencyType.AZN:
        return findLatestResponse.data!.AZN!;
      case CurrencyType.BAM:
        return findLatestResponse.data!.BAM!;
      case CurrencyType.BBD:
        return findLatestResponse.data!.BBD!;
      case CurrencyType.BDT:
        return findLatestResponse.data!.BDT!;
      case CurrencyType.BGN:
        return findLatestResponse.data!.BGN!;
      case CurrencyType.BHD:
        return findLatestResponse.data!.BHD!;
      case CurrencyType.BIF:
        return findLatestResponse.data!.BIF!;
      case CurrencyType.BMD:
        return findLatestResponse.data!.BMD!;
      case CurrencyType.BNB:
        return findLatestResponse.data!.BNB!;
      case CurrencyType.BND:
        return findLatestResponse.data!.BND!;
      case CurrencyType.BOB:
        return findLatestResponse.data!.BOB!;
      case CurrencyType.BRL:
        return findLatestResponse.data!.BRL!;
      case CurrencyType.BSD:
        return findLatestResponse.data!.BSD!;
      case CurrencyType.BTC:
        return findLatestResponse.data!.BTC!;
      case CurrencyType.BTN:
        return findLatestResponse.data!.BTN!;
      case CurrencyType.BWP:
        return findLatestResponse.data!.BWP!;
      case CurrencyType.BYN:
        return findLatestResponse.data!.BYN!;
      case CurrencyType.BYR:
        return findLatestResponse.data!.BYR!;
      case CurrencyType.BZD:
        return findLatestResponse.data!.BZD!;
      case CurrencyType.CAD:
        return findLatestResponse.data!.CAD!;
      case CurrencyType.CDF:
        return findLatestResponse.data!.CDF!;
      case CurrencyType.CHF:
        return findLatestResponse.data!.CHF!;
      case CurrencyType.CLF:
        return findLatestResponse.data!.CLF!;
      case CurrencyType.CLP:
        return findLatestResponse.data!.CLP!;
      case CurrencyType.CNY:
        return findLatestResponse.data!.CNY!;
      case CurrencyType.COP:
        return findLatestResponse.data!.COP!;
      case CurrencyType.CRC:
        return findLatestResponse.data!.CRC!;
      case CurrencyType.CUC:
        return findLatestResponse.data!.CUC!;
      case CurrencyType.CUP:
        return findLatestResponse.data!.CUP!;
      case CurrencyType.CVE:
        return findLatestResponse.data!.CVE!;
      case CurrencyType.CZK:
        return findLatestResponse.data!.CZK!;
      case CurrencyType.DAI:
        return findLatestResponse.data!.DAI!;
      case CurrencyType.DJF:
        return findLatestResponse.data!.DJF!;
      case CurrencyType.DKK:
        return findLatestResponse.data!.DKK!;
      case CurrencyType.DOP:
        return findLatestResponse.data!.DOP!;
      case CurrencyType.DOT:
        return findLatestResponse.data!.DOT!;
      case CurrencyType.DZD:
        return findLatestResponse.data!.DZD!;
      case CurrencyType.EGP:
        return findLatestResponse.data!.EGP!;
      case CurrencyType.ERN:
        return findLatestResponse.data!.ERN!;
      case CurrencyType.ETB:
        return findLatestResponse.data!.ETB!;
      case CurrencyType.ETH:
        return findLatestResponse.data!.ETH!;
      case CurrencyType.EUR:
        return findLatestResponse.data!.EUR!;
      case CurrencyType.FJD:
        return findLatestResponse.data!.FJD!;
      case CurrencyType.FKP:
        return findLatestResponse.data!.FKP!;
      case CurrencyType.GBP:
        return findLatestResponse.data!.GBP!;
      case CurrencyType.GEL:
        return findLatestResponse.data!.GEL!;
      case CurrencyType.GGP:
        return findLatestResponse.data!.GGP!;
      case CurrencyType.GHS:
        return findLatestResponse.data!.GHS!;
      case CurrencyType.GIP:
        return findLatestResponse.data!.GIP!;
      case CurrencyType.GMD:
        return findLatestResponse.data!.GMD!;
      case CurrencyType.GNF:
        return findLatestResponse.data!.GNF!;
      case CurrencyType.GTQ:
        return findLatestResponse.data!.GTQ!;
      case CurrencyType.GYD:
        return findLatestResponse.data!.GYD!;
      case CurrencyType.HKD:
        return findLatestResponse.data!.HKD!;
      case CurrencyType.HNL:
        return findLatestResponse.data!.HNL!;
      case CurrencyType.HRK:
        return findLatestResponse.data!.HRK!;
      case CurrencyType.HTG:
        return findLatestResponse.data!.HTG!;
      case CurrencyType.HUF:
        return findLatestResponse.data!.HUF!;
      case CurrencyType.IDR:
        return findLatestResponse.data!.IDR!;
      case CurrencyType.ILS:
        return findLatestResponse.data!.ILS!;
      case CurrencyType.IMP:
        return findLatestResponse.data!.IMP!;
      case CurrencyType.INR:
        return findLatestResponse.data!.INR!;
      case CurrencyType.IQD:
        return findLatestResponse.data!.IQD!;
      case CurrencyType.IRR:
        return findLatestResponse.data!.IRR!;
      case CurrencyType.ISK:
        return findLatestResponse.data!.ISK!;
      case CurrencyType.JEP:
        return findLatestResponse.data!.JEP!;
      case CurrencyType.JMD:
        return findLatestResponse.data!.JMD!;
      case CurrencyType.JOD:
        return findLatestResponse.data!.JOD!;
      case CurrencyType.JPY:
        return findLatestResponse.data!.JPY!;
      case CurrencyType.KES:
        return findLatestResponse.data!.KES!;
      case CurrencyType.KGS:
        return findLatestResponse.data!.KGS!;
      case CurrencyType.KHR:
        return findLatestResponse.data!.KHR!;
      case CurrencyType.KMF:
        return findLatestResponse.data!.KMF!;
      case CurrencyType.KPW:
        return findLatestResponse.data!.KPW!;
      case CurrencyType.KRW:
        return findLatestResponse.data!.KRW!;
      case CurrencyType.KWD:
        return findLatestResponse.data!.KWD!;
      case CurrencyType.KYD:
        return findLatestResponse.data!.KYD!;
      case CurrencyType.KZT:
        return findLatestResponse.data!.KZT!;
      case CurrencyType.LAK:
        return findLatestResponse.data!.LAK!;
      case CurrencyType.LBP:
        return findLatestResponse.data!.LBP!;
      case CurrencyType.LKR:
        return findLatestResponse.data!.LKR!;
      case CurrencyType.LRD:
        return findLatestResponse.data!.LRD!;
      case CurrencyType.LSL:
        return findLatestResponse.data!.LSL!;
      case CurrencyType.LTC:
        return findLatestResponse.data!.LTC!;
      case CurrencyType.LTL:
        return findLatestResponse.data!.LTL!;
      case CurrencyType.LVL:
        return findLatestResponse.data!.LVL!;
      case CurrencyType.LYD:
        return findLatestResponse.data!.LYD!;
      case CurrencyType.MAD:
        return findLatestResponse.data!.MAD!;
      case CurrencyType.MATIC:
        return findLatestResponse.data!.MATIC!;
      case CurrencyType.MDL:
        return findLatestResponse.data!.MDL!;
      case CurrencyType.MGA:
        return findLatestResponse.data!.MGA!;
      case CurrencyType.MKD:
        return findLatestResponse.data!.MKD!;
      case CurrencyType.MMK:
        return findLatestResponse.data!.MMK!;
      case CurrencyType.MNT:
        return findLatestResponse.data!.MNT!;
      case CurrencyType.MOP:
        return findLatestResponse.data!.MOP!;
      case CurrencyType.MRO:
        return findLatestResponse.data!.MRO!;
      case CurrencyType.MRU:
        return findLatestResponse.data!.MRU!;
      case CurrencyType.MUR:
        return findLatestResponse.data!.MUR!;
      case CurrencyType.MVR:
        return findLatestResponse.data!.MVR!;
      case CurrencyType.MWK:
        return findLatestResponse.data!.MWK!;
      case CurrencyType.MXN:
        return findLatestResponse.data!.MXN!;
      case CurrencyType.MYR:
        return findLatestResponse.data!.MYR!;
      case CurrencyType.MZN:
        return findLatestResponse.data!.MZN!;
      case CurrencyType.NAD:
        return findLatestResponse.data!.NAD!;
      case CurrencyType.NGN:
        return findLatestResponse.data!.NGN!;
      case CurrencyType.NIO:
        return findLatestResponse.data!.NIO!;
      case CurrencyType.NOK:
        return findLatestResponse.data!.NOK!;
      case CurrencyType.NPR:
        return findLatestResponse.data!.NPR!;
      case CurrencyType.NZD:
        return findLatestResponse.data!.NZD!;
      case CurrencyType.OMR:
        return findLatestResponse.data!.OMR!;
      case CurrencyType.OP:
        return findLatestResponse.data!.OP!;
      case CurrencyType.PAB:
        return findLatestResponse.data!.PAB!;
      case CurrencyType.PEN:
        return findLatestResponse.data!.PEN!;
      case CurrencyType.PGK:
        return findLatestResponse.data!.PGK!;
      case CurrencyType.PHP:
        return findLatestResponse.data!.PHP!;
      case CurrencyType.PKR:
        return findLatestResponse.data!.PKR!;
      case CurrencyType.PLN:
        return findLatestResponse.data!.PLN!;
      case CurrencyType.PYG:
        return findLatestResponse.data!.PYG!;
      case CurrencyType.QAR:
        return findLatestResponse.data!.QAR!;
      case CurrencyType.RON:
        return findLatestResponse.data!.RON!;
      case CurrencyType.RSD:
        return findLatestResponse.data!.RSD!;
      case CurrencyType.RUB:
        return findLatestResponse.data!.RUB!;
      case CurrencyType.RWF:
        return findLatestResponse.data!.RWF!;
      case CurrencyType.SAR:
        return findLatestResponse.data!.SAR!;
      case CurrencyType.SBD:
        return findLatestResponse.data!.SBD!;
      case CurrencyType.SCR:
        return findLatestResponse.data!.SCR!;
      case CurrencyType.SDG:
        return findLatestResponse.data!.SDG!;
      case CurrencyType.SEK:
        return findLatestResponse.data!.SEK!;
      case CurrencyType.SGD:
        return findLatestResponse.data!.SGD!;
      case CurrencyType.SHP:
        return findLatestResponse.data!.SHP!;
      case CurrencyType.SLL:
        return findLatestResponse.data!.SLL!;
      case CurrencyType.SOL:
        return findLatestResponse.data!.SOL!;
      case CurrencyType.SOS:
        return findLatestResponse.data!.SOS!;
      case CurrencyType.SRD:
        return findLatestResponse.data!.SRD!;
      case CurrencyType.STD:
        return findLatestResponse.data!.STD!;
      case CurrencyType.STN:
        return findLatestResponse.data!.STN!;
      case CurrencyType.SVC:
        return findLatestResponse.data!.SVC!;
      case CurrencyType.SYP:
        return findLatestResponse.data!.SYP!;
      case CurrencyType.SZL:
        return findLatestResponse.data!.SZL!;
      case CurrencyType.THB:
        return findLatestResponse.data!.THB!;
      case CurrencyType.TJS:
        return findLatestResponse.data!.TJS!;
      case CurrencyType.TMT:
        return findLatestResponse.data!.TMT!;
      case CurrencyType.TND:
        return findLatestResponse.data!.TND!;
      case CurrencyType.TOP:
        return findLatestResponse.data!.TOP!;
      case CurrencyType.TRY:
        return findLatestResponse.data!.TRY!;
      case CurrencyType.TTD:
        return findLatestResponse.data!.TTD!;
      case CurrencyType.TWD:
        return findLatestResponse.data!.TWD!;
      case CurrencyType.TZS:
        return findLatestResponse.data!.TZS!;
      case CurrencyType.UAH:
        return findLatestResponse.data!.UAH!;
      case CurrencyType.UGX:
        return findLatestResponse.data!.UGX!;
      case CurrencyType.USD:
        return findLatestResponse.data!.USD!;
      case CurrencyType.USDC:
        return findLatestResponse.data!.USDC!;
      case CurrencyType.USDT:
        return findLatestResponse.data!.USDT!;
      case CurrencyType.UYU:
        return findLatestResponse.data!.UYU!;
      case CurrencyType.UZS:
        return findLatestResponse.data!.UZS!;
      case CurrencyType.VEF:
        return findLatestResponse.data!.VEF!;
      case CurrencyType.VES:
        return findLatestResponse.data!.VES!;
      case CurrencyType.VND:
        return findLatestResponse.data!.VND!;
      case CurrencyType.VUV:
        return findLatestResponse.data!.VUV!;
      case CurrencyType.WST:
        return findLatestResponse.data!.WST!;
      case CurrencyType.XAF:
        return findLatestResponse.data!.XAF!;
      case CurrencyType.XAG:
        return findLatestResponse.data!.XAG!;
      case CurrencyType.XAU:
        return findLatestResponse.data!.XAU!;
      case CurrencyType.XCD:
        return findLatestResponse.data!.XCD!;
      case CurrencyType.XDR:
        return findLatestResponse.data!.XDR!;
      case CurrencyType.XOF:
        return findLatestResponse.data!.XOF!;
      case CurrencyType.XPD:
        return findLatestResponse.data!.XPD!;
      case CurrencyType.XPF:
        return findLatestResponse.data!.XPF!;
      case CurrencyType.XPT:
        return findLatestResponse.data!.XPT!;
      case CurrencyType.XRP:
        return findLatestResponse.data!.XRP!;
      case CurrencyType.YER:
        return findLatestResponse.data!.YER!;
      case CurrencyType.ZAR:
        return findLatestResponse.data!.ZAR!;
      case CurrencyType.ZMK:
        return findLatestResponse.data!.ZMK!;
      case CurrencyType.ZMW:
        return findLatestResponse.data!.ZMW!;
      case CurrencyType.ZWL:
        return findLatestResponse.data!.ZWL!;
    }
  }
}

extension CurrencyExtension on CurrencyType {
  String getCurrencyTypeName() {
    switch (this) {
      case CurrencyType.AUD:
        return "Australian Dollar";
      case CurrencyType.BGN:
        return "Bulgarian Lev";
      case CurrencyType.BRL:
        return "Brazilian Real";
      case CurrencyType.CAD:
        return "Canadian Dollar";
      case CurrencyType.CHF:
        return "Swiss Franc";
      case CurrencyType.CNY:
        return "Chinese Yuan";
      case CurrencyType.CZK:
        return "Czech Koruna";
      case CurrencyType.DKK:
        return "Danish Krone";
      case CurrencyType.EUR:
        return "Euro";
      case CurrencyType.GBP:
        return "British Pound Sterling";
      case CurrencyType.HKD:
        return "Hong Kong Dollar";
      case CurrencyType.HRK:
        return "Croatian Kuna";
      case CurrencyType.HUF:
        return "Hungarian Forint";
      case CurrencyType.IDR:
        return "Indonesian Rupiah";
      case CurrencyType.ILS:
        return "Israeli New Shekel";
      case CurrencyType.INR:
        return "Indian Rupee";
      case CurrencyType.ISK:
        return "Icelandic Króna";
      case CurrencyType.JPY:
        return "Japanese Yen";
      case CurrencyType.KRW:
        return "South Korean Won";
      case CurrencyType.MXN:
        return "Mexican Peso";
      case CurrencyType.MYR:
        return "Malaysian Ringgit";
      case CurrencyType.NOK:
        return "Norwegian Krone";
      case CurrencyType.NZD:
        return "New Zealand Dollar";
      case CurrencyType.PHP:
        return "Philippine Peso";
      case CurrencyType.PLN:
        return "Polish Złoty";
      case CurrencyType.RON:
        return "Romanian Leu";
      case CurrencyType.RUB:
        return "Russian Ruble";
      case CurrencyType.SEK:
        return "Swedish Krona";
      case CurrencyType.SGD:
        return "Singapore Dollar";
      case CurrencyType.THB:
        return "Thai Baht";
      case CurrencyType.TRY:
        return "Turkish Lira";
      case CurrencyType.USD:
        return "United States Dollar";
      case CurrencyType.ZAR:
        return "South African Rand";
      case CurrencyType.ADA:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.AED:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.AFN:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.ALL:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.AMD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.ANG:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.AOA:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.ARB:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.ARS:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.AVAX:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.AWG:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.AZN:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.BAM:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.BBD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.BDT:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.BHD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.BIF:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.BMD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.BNB:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.BND:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.BOB:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.BSD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.BTC:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.BTN:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.BWP:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.BYN:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.BYR:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.BZD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.CDF:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.CLF:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.CLP:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.COP:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.CRC:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.CUC:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.CUP:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.CVE:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.DAI:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.DJF:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.DOP:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.DOT:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.DZD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.EGP:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.ERN:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.ETB:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.ETH:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.FJD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.FKP:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.GEL:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.GGP:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.GHS:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.GIP:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.GMD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.GNF:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.GTQ:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.GYD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.HNL:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.HTG:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.IMP:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.IQD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.IRR:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.JEP:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.JMD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.JOD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.KES:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.KGS:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.KHR:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.KMF:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.KPW:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.KWD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.KYD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.KZT:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.LAK:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.LBP:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.LKR:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.LRD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.LSL:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.LTC:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.LTL:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.LVL:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.LYD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.MAD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.MATIC:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.MDL:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.MGA:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.MKD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.MMK:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.MNT:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.MOP:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.MRO:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.MRU:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.MUR:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.MVR:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.MWK:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.MZN:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.NAD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.NGN:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.NIO:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.NPR:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.OMR:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.OP:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.PAB:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.PEN:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.PGK:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.PKR:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.PYG:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.QAR:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.RSD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.RWF:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.SAR:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.SBD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.SCR:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.SDG:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.SHP:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.SLL:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.SOL:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.SOS:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.SRD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.STD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.STN:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.SVC:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.SYP:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.SZL:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.TJS:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.TMT:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.TND:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.TOP:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.TTD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.TWD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.TZS:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.UAH:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.UGX:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.USDC:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.USDT:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.UYU:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.UZS:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.VEF:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.VES:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.VND:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.VUV:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.WST:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.XAF:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.XAG:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.XAU:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.XCD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.XDR:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.XOF:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.XPD:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.XPF:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.XPT:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.XRP:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.YER:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.ZMK:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.ZMW:
        // TODO: Handle this case.
        return this.name; // todo
      case CurrencyType.ZWL:
        // TODO: Handle this case.
        return this.name; // todo
    }
  }
}
