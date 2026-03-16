import 'package:flutter/material.dart';
import 'package:nice_colors/core/color_generator.dart';
import 'package:nice_colors/core/rgb_color.dart';
import 'package:nice_colors/helpers/rgb_color_map.dart';

class HomePage extends StatefulWidget {
  final ColorGenerator colorGenerator;

  const HomePage({required this.colorGenerator, super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late RgbColor _bgColor;
  late RgbColor _textColor;
  late RgbColor _textContrast;

  void _randomizeColors() {
    setState(() {
      _bgColor = widget.colorGenerator.random();
      _textColor = widget.colorGenerator.oppositeTo(_bgColor);
      _textContrast = widget.colorGenerator.contrastTo(_bgColor);
    });
  }

  @override
  void initState() {
    super.initState();
    _randomizeColors();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _randomizeColors,
      child: Scaffold(
        backgroundColor: RgbColorMap(_bgColor),
        body: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Text(
                'Hello there',
                style: TextStyle(color: RgbColorMap(_textColor), fontSize: 20),
              ),
              Text(
                'R:${_bgColor.r} G: ${_bgColor.g} B: ${_bgColor.b}',
                style: TextStyle(color: RgbColorMap(_textContrast)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
