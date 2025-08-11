import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:screenshot_example/main.dart';

void main() {
  group('Screenshot Example App Tests', () {
    testWidgets('App displays initial state correctly', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const ScreenshotExampleApp());

      // Verify initial state
      expect(find.text('Flutter Screenshot Demo'), findsOneWidget);
      expect(find.text('You have pushed the button this many times:'), findsOneWidget);
      expect(find.text('0'), findsOneWidget);
      expect(find.text('Screenshot Test Content'), findsOneWidget);
      expect(find.text('This content will be visible in screenshots'), findsOneWidget);
      expect(find.byIcon(Icons.camera_alt), findsOneWidget);
      expect(find.byIcon(Icons.add), findsOneWidget);
    });

    testWidgets('Counter increments when button is tapped', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const ScreenshotExampleApp());

      // Tap the '+' icon and trigger a frame.
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      // Verify that our counter has incremented.
      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);

      // Tap again
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      // Verify counter is now 2
      expect(find.text('1'), findsNothing);
      expect(find.text('2'), findsOneWidget);
    });

    testWidgets('Screenshot content is displayed', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const ScreenshotExampleApp());

      // Verify screenshot-specific content is present
      expect(find.byIcon(Icons.camera_alt), findsOneWidget);
      expect(find.text('Screenshot Test Content'), findsOneWidget);
      
      // Find the container with blue styling
      final container = find.byType(Container).last;
      expect(container, findsOneWidget);
      
      // Verify the text content in the screenshot section
      expect(find.text('This content will be visible in screenshots'), findsOneWidget);
    });
  });
}