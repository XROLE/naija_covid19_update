import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:naija_covid_update/main.dart';
import 'package:naija_covid_update/home.dart';

void main() {
  testWidgets('Loading Screen', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('World Covid-19 Update'), findsOneWidget);
  });
  testWidgets('Home Screen', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home:Home()));

    expect(find.text('Tested:'), findsOneWidget);
    expect(find.text('Confirmed:'), findsOneWidget);
    expect(find.text('Recovered:'), findsOneWidget);
    expect(find.text('Critical:'), findsOneWidget);
    expect(find.text('Death:'), findsOneWidget);
    expect(find.text('World Covid-19 Update'), findsOneWidget);
  });
}