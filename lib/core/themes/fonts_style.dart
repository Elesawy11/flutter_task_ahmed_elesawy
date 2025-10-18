import 'package:flutter/material.dart';
import '../responsive/size_helper_extention.dart';

extension FontsStyle on BuildContext {
  TextStyle get font16w500 =>
      TextStyle(fontSize: setSp(16), fontWeight: FontWeight.w500);
  TextStyle get font16w700 =>
      TextStyle(fontSize: setSp(16), fontWeight: FontWeight.w700);
  TextStyle get font14w500 =>
      TextStyle(fontSize: setSp(14), fontWeight: FontWeight.w500);
  TextStyle get font12w400 =>
      TextStyle(fontSize: setSp(12), fontWeight: FontWeight.w400);
  TextStyle get font12w500 =>
      TextStyle(fontSize: setSp(12), fontWeight: FontWeight.w500);

  TextStyle get font10w500 =>
      TextStyle(fontSize: setSp(10), fontWeight: FontWeight.w500);
  TextStyle get font10w400 =>
      TextStyle(fontSize: setSp(10), fontWeight: FontWeight.w400);
}
