import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nice_colors/core/rgb_color.dart';
import 'package:nice_colors/helpers/rgb_color_map.dart';

void main() {
  test('should convert RgbColor to flutter Color', () {
    final Color result = RgbColorMap(
      const RgbColor(240, 116, 33),
    );
    expect(result, const Color.fromARGB(255, 240, 116, 33));
  });
}
