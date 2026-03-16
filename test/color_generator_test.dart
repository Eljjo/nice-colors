import 'package:flutter_test/flutter_test.dart';
import 'package:nice_colors/core/color_generator.dart';
import 'package:nice_colors/core/rgb_color.dart';

void main() {
  test('oppositeTo(black) should return white', () {
    final RgbColor result = ColorGenerator().oppositeTo(
      const RgbColor(0, 0, 0),
    );
    expect(result.r, 255);
    expect(result.g, 255);
    expect(result.b, 255);
  });

  test('contrastTo light color should return black', () {
    final RgbColor result = ColorGenerator().contrastTo(
      const RgbColor(240, 116, 116),
    );
    expect(result, const RgbColor(0, 0, 0));
  });

  test('contrastTo dark color should return white', () {
    final RgbColor result = ColorGenerator().contrastTo(
      const RgbColor(100, 90, 13),
    );
    expect(result, const RgbColor(255, 255, 255));
  });
}
