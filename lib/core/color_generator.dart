import 'dart:math';
import 'package:nice_colors/core/rgb_color.dart';

class ColorGenerator {
  final _random = Random();

  RgbColor random() {
    return RgbColor(
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
    );
  }

  RgbColor oppositeTo(RgbColor baseColor) {
    return RgbColor(
      255 - baseColor.r,
      255 - baseColor.g,
      255 - baseColor.b,
    );
  }

  RgbColor contrastTo(RgbColor baseColor) {
    if (baseColor.r > 128 || baseColor.g > 128 || baseColor.b > 110) {
      return const RgbColor(0, 0, 0);
    } else {
      return const RgbColor(255, 255, 255);
    }
  }
}
