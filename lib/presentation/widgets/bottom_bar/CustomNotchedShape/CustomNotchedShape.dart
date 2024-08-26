import 'dart:math' as math;
import 'package:flutter/material.dart';

class CustomNotchedRectangle extends NotchedShape {
  final double cornerRadius;

  CustomNotchedRectangle({this.cornerRadius = 10.0});

  @override
  Path getOuterPath(Rect host, Rect? guest) {
    if (guest == null) return Path()..addRect(host);

    // The width and height of the notch
    final double notchWidth = guest.width;
    final double notchHeight = guest.height;

    // Define a path that matches the rounded rectangle notch
    return Path()
      ..moveTo(host.left, host.top)
      ..lineTo(guest.left - 10, host.top)  // Move to the left edge of the notch
      ..arcToPoint(Offset(guest.left, guest.top + cornerRadius),
          radius: Radius.circular(cornerRadius), clockwise: false)
      ..lineTo(guest.right, guest.top + cornerRadius)
      ..arcToPoint(Offset(guest.right + 10, host.top),
          radius: Radius.circular(cornerRadius), clockwise: false)
      ..lineTo(host.right, host.top)
      ..lineTo(host.right, host.bottom)
      ..lineTo(host.left, host.bottom)
      ..close();
  }
}

