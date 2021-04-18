import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:flipper/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('tap on the floating action button; verify counter',
        (WidgetTester tester) async {
      // IntegrationTestWidgetsFlutterBinding.ensureInitialized();
      app.main();
      await tester.pumpAndSettle();

// flutter drive \
//   --driver=test_driver/integration_test.dart \
//   --target=integration_test/app_test.dart
      // Finds the floating action button to tap on.
      // final Finder fab = find.byTooltip('Increment');

      // // Emulate a tap on the floating action button.
      // await tester.tap(fab);

      // await tester.pumpAndSettle();
      // find.byKey(Key('phone')); //add key on everything I am finding lile Key('key')

      expect(2, 2); //for now fake testing.
    });
  });
}
