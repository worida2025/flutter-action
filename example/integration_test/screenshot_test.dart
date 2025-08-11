import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:screenshot_example/main.dart' as app;

void main() {
  final IntegrationTestWidgetsFlutterBinding binding =
      IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('App Screenshot Tests', () {
    testWidgets('Take app screenshots', (WidgetTester tester) async {
      // Launch the app
      app.main();
      await tester.pumpAndSettle();

      // Take initial screenshot
      await binding.takeScreenshot('app_home_screen');

      // Find the increment button and tap it
      final incrementButton = find.byTooltip('Increment');
      expect(incrementButton, findsOneWidget);

      // Tap button a few times
      await tester.tap(incrementButton);
      await tester.pumpAndSettle();
      await tester.tap(incrementButton);
      await tester.pumpAndSettle();
      await tester.tap(incrementButton);
      await tester.pumpAndSettle();

      // Take screenshot after interaction
      await binding.takeScreenshot('app_after_increment');

      // Verify the counter has incremented
      expect(find.text('3'), findsOneWidget);

      // Scroll to see screenshot test content
      await tester.scrollUntilVisible(
        find.text('Screenshot Test Content'),
        500.0,
      );
      await tester.pumpAndSettle();

      // Take screenshot showing the test content
      await binding.takeScreenshot('app_screenshot_content');

      // Verify our test content is visible
      expect(find.text('Screenshot Test Content'), findsOneWidget);
      expect(find.text('This content will be visible in screenshots'), findsOneWidget);
      expect(find.byIcon(Icons.camera_alt), findsOneWidget);
    });
  });
}