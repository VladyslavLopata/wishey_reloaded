import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void expectTextWidgetIgnoreCase(String text) {
  expect(
    find.byWidgetPredicate(
      (widget) =>
          widget is Text && widget.data?.toLowerCase() == text.toLowerCase(),
    ),
    findsOneWidget,
  );
}

void expectKey(String key) {
  expect(find.byKey(Key(key)), findsOneWidget);
}

void expectWidget(Type type) {
  expect(find.byType(type), findsOneWidget);
}

void expectNWidgets(Type type, int n) {
  expect(find.byType(type), findsNWidgets(n));
}

void expectNoWidgets(Type type) {
  expect(find.byType(type), findsNothing);
}

void expectTextWidget(String text) {
  expect(find.text(text), findsOneWidget);
}

void expectNTextWidgets(String text, int n) {
  expect(find.text(text), findsNWidgets(n));
}

void expectNoTextWidgets(String text) {
  expect(find.text(text), findsNothing);
}

void expectRichText(String text) {
  expect(find.findRichText(text), findsOneWidget);
}

void expectRichTexts(String text) {
  expect(find.findRichText(text), findsWidgets);
}

void expectNRichTexts(String text, int n) {
  expect(find.findRichText(text), findsNWidgets(n));
}

void expectNoRichTexts(String text) {
  expect(find.findRichText(text), findsNothing);
}

void expectTrue(dynamic value) {
  expect(value, isTrue);
}

void expectFalse(dynamic value) {
  expect(value, isFalse);
}

void expectNull(dynamic value) {
  expect(value, isNull);
}

void expectTextSpan(String text) {
  expect(find.findTextSpan(text), findsWidgets);
}

void expectIcon(IconData icon) {
  expect(find.byIcon(icon), findsOneWidget);
}

extension CommonFindersExtensions on CommonFinders {
  Finder findRichText(String expectedText) {
    return byWidgetPredicate(
      (widget) =>
          widget is RichText && widget.text.toPlainText() == expectedText,
    );
  }

  Finder findTextSpan(String expectedText) {
    return byWidgetPredicate(
      (widget) =>
          widget is RichText &&
          widget.text.toPlainText().startsWith(expectedText),
    );
  }
}

extension WidgetTesterExtension on WidgetTester {
  Future tapAndSettle(Finder finder) async {
    await tap(finder);
    await pumpAndSettle();
  }

  Future scrollToAndTap(Finder finder) async {
    final scrollableFinder = find.byType(Scrollable);
    await scrollUntilVisible(
      finder,
      500.0,
      scrollable: scrollableFinder,
    );
    await tapAndSettle(finder);
  }
}
