import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wishey/core/widgets/wish_card.dart';

void main() {
  group(
    'WishCard tests',
    () {
      testWidgets(
        'WHEN widget is built\n'
        'THEN right widgets should be layed out',
        (tester) async {
          const _title = '_title';
          await tester.pumpWidget(_getWidget(_title));
          await tester.pump();

          final titleTextFinder = find.text(_title);
          expect(titleTextFinder, findsOneWidget);
        },
      );
    },
  );
}

Widget _getWidget(String title) => MaterialApp(
      home: Scaffold(
        body: WishCard(title: title),
      ),
    );
