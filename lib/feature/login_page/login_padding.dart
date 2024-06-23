import 'package:flutter/material.dart';

enum LoginPadding {
  ///10
  low(5),

  ///20
  medium(20),

  ///40
  high(40);

  final double value;

  const LoginPadding(this.value);

  /// All sides padding with [value]
  EdgeInsets get padding => EdgeInsets.all(value);

  /// Vertical sides padding with [value]
  EdgeInsets get paddingVertical => EdgeInsets.symmetric(vertical: value);

  /// Horizontal sides padding with [value]
  EdgeInsets get paddingHorizontal => EdgeInsets.symmetric(horizontal: value);

  /// Symetric sides padding with [value]
  EdgeInsets get paddingSymetric => EdgeInsets.symmetric(vertical: value, horizontal: value);
}
