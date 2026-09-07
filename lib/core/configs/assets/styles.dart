import 'package:flutter/material.dart';
import 'package:spotify_app/core/configs/theme/app_color.dart';


class Styles {
  // prevent instantiation
  Styles._();
  static TextStyle bold14(BuildContext context) {
    return TextStyle(
      fontFamily: 'Satoshi',
      fontWeight: FontWeight.w700,
      fontSize: 14
    );
  }
  static TextStyle bold12(BuildContext context) {
    return TextStyle(
      fontFamily: 'Satoshi',
      fontWeight: FontWeight.w700,
      fontSize: 12
    );
  }
  static TextStyle bold16(BuildContext context) {
    return TextStyle(
      fontFamily: 'Satoshi',
      fontWeight: FontWeight.w700,
      fontSize: 16
    );
  }
  static TextStyle bold20(BuildContext context) {
    return TextStyle(
      fontFamily: 'Satoshi',
      fontWeight: FontWeight.w700,
      fontSize: 20,
    );
  }
  static TextStyle bold22(BuildContext context) {
    return TextStyle(
      fontFamily: 'Satoshi',
      fontWeight: FontWeight.w700,
      fontSize: 22,
    );
  }
  static TextStyle bold26(BuildContext context) {
    return TextStyle(
      fontFamily: 'Satoshi',
      fontWeight: FontWeight.w700,
      fontSize: 26
    );
  }
  static TextStyle bold30(BuildContext context) {
    return TextStyle(
      fontFamily: 'Satoshi',
      fontWeight: FontWeight.w700,
      fontSize: 30,
    );
  }
  static TextStyle regular16(BuildContext context) {
    return TextStyle(
      fontFamily: 'Satoshi',
      fontSize: 16,
    );
  }
  static TextStyle regular14(BuildContext context) {
    return TextStyle(
      fontFamily: 'Satoshi',
      fontSize: 14,
    );
  }
  static TextStyle regular18(BuildContext context) {
    return TextStyle(
      fontFamily: 'Satoshi',
      fontSize: 18,
    );
  }
   static TextStyle semiBold22(BuildContext context) {
    return TextStyle(
      fontFamily: 'Satoshi',
      fontWeight: FontWeight.w600,
      fontSize: 22,
    );
  }
  static TextStyle medium16(BuildContext context) {
    return TextStyle(
      fontFamily: 'Satoshi',
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: AppColor.greyText,
    );
  }
}
