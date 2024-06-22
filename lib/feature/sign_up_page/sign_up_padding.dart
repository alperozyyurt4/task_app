import 'package:flutter/material.dart';

enum SignUpPadding {
  /// 10
  low(10),

  /// 20
  medium(25),

  /// 30
  high(50);

  final double value;
  const SignUpPadding(this.value);

  /// All sides padding with [value]
  EdgeInsets get padding => EdgeInsets.all(value);

  /// Horizontal sides padding with [value]
  EdgeInsets get paddingVertical => EdgeInsets.symmetric(vertical: value);

  /// Vertical sides padding with [value]
  EdgeInsets get paddingHorizontal => EdgeInsets.symmetric(horizontal: value);
}
