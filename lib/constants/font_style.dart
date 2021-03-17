import 'package:flutter/cupertino.dart';

import 'global_colors.dart';

abstract class FontStyles {
  static const TextStyle titleDetails = TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'Mon',
    fontSize: 15,
      color: Color(0xFF322d2c),
  );

  static const TextStyle descriptionDetails = TextStyle(
    // fontWeight: FontWeight.w600,
    fontFamily: 'Mon',
    fontSize: 12,
    color: Color(0xFF322d2c),
  );

  static const TextStyle pageTitle = TextStyle(
  // fontWeight: FontWeight.w600,
  fontFamily: 'Mon',
  fontSize: 20,
  color: Color(0xFFcbcac2));
}
