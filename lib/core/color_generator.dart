import 'dart:math';
import 'package:nice_colors/core/rgb_color.dart';

class ColorGenerator {
  final _random = Random();
  final int maxValue = 255;

  RgbColor random() {
    return RgbColor(
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
    );
  }

  RgbColor oppositeTo(RgbColor baseColor) {
    return RgbColor(
      maxValue - baseColor.r,
      maxValue - baseColor.g,
      maxValue - baseColor.b,
    );
  }

  RgbColor contrastTo(RgbColor baseColor) {
    if (baseColor.r > 128 || baseColor.g > 128 || baseColor.b > 200) {
      return const RgbColor(0, 0, 0);
    } else {
      return RgbColor(maxValue, maxValue, maxValue);
    }
  }
}
