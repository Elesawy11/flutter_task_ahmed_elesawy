import 'package:flutter/material.dart';
import 'size_helper_extention.dart';

extension ResponsiveSpacer on BuildContext {
  SizedBox verticalSpace(double height) => SizedBox(height: setHeight(height));
  SizedBox horizontalSpace(double width) => SizedBox(width: setWidth(width));
}
