import 'package:calculator/calculator.dart';
import 'package:calculator/new_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:calculator/main.dart';

void main() {
  testWidgets('widget test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    //expect(find.byType(Scaffold), findsOneWidget);
    expect(find.byType(AppBar), findsOneWidget);
  });
  testWidgets('new page test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: CalculatorApp()));

    expect(find.text("Calculator"), findsOneWidget);
    //expect(find.byType(NewPage), findsOneWidget);
  });
}
