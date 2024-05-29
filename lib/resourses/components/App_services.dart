import 'package:flutter/material.dart';

class Appservices {
  BuildContext context;
  Appservices(this.context);

  // Static Methods
  static addWidth(double width) => SizedBox(width: width);
  static addheight(double height) => SizedBox(height: height);
  // mediaQuery //************
  // */
  getDeviceWidth() => MediaQuery.of(context).size.width;
  getDeviceheight() => MediaQuery.of(context).size.height;
}
