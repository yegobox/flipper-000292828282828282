import 'package:flutter/material.dart';
import 'package:flutter_text_drawable/src/color_generator.dart';
import 'package:test/test.dart';

void main() {
  test("Color Generator Test", () {
    final ColorGenerator gen = ColorGenerator();

    // Generate a random color
    Color color = gen.getRandomColor();

    // Verify if it is a color indeed
    expect(color, isA<Color>());
  });
}
