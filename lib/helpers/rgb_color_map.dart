import 'package:flutter/material.dart';
import 'package:nice_colors/core/rgb_color.dart';

Color RgbColorMap(RgbColor color) {
  return Color.fromARGB(255, color.r, color.g, color.b);
}
