import 'package:flutter/material.dart';

import '../common/color.dart';

class Themes {
  static final light = ThemeData(
    primaryColor: bluishClr,
    brightness: Brightness.light,
  );
  static final dark = ThemeData(
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    iconTheme: IconThemeData(color: Colors.white),
  );
}
