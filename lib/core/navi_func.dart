import 'package:flutter/material.dart';

void NaviFunc(BuildContext context, {required Widget page}) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}
