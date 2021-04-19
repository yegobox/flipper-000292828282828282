import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_text_drawable/flutter_text_drawable.dart';

void main() {
  testWidgets("Text Drawable Widget Test", (WidgetTester tester) async {
    final String text = "Test";
    // Build the TextDrawable widget from a MaterialApp root
    // To prevent text directionality exception
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: TextDrawable(
            text: text,
            isTappable: true,
          ),
        ),
      ),
    );

    // Expect to find the first character in the Text supplied but not an Icon
    expect(find.text(text[0]), findsOneWidget);
    expect(find.byIcon(Icons.check), findsNothing);

    // Tap on the TextDrawable widget
    await tester.tap(find.byType(TextDrawable));

    // Wait for widget to be rebuilt
    await tester.pumpAndSettle();

    // Expect to find an Icon instead of a Text
    expect(find.byIcon(Icons.check), findsOneWidget);
    expect(find.text(text[0]), findsNothing);
  });
}
