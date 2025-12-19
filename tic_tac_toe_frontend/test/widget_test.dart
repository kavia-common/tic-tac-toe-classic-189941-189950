import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe_frontend/main.dart';

void main() {
  testWidgets('Home screen renders and shows mode selection', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());
    await tester.pumpAndSettle();

    expect(find.text('Tic Tac Toe'), findsOneWidget);
    expect(find.text('Choose Game Mode'), findsOneWidget);
    expect(find.text('Player vs Computer'), findsOneWidget);
    expect(find.text('Player vs Player'), findsOneWidget);
  });

  testWidgets('Start Game navigates to Game screen', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());
    await tester.pumpAndSettle();

    expect(find.text('Start Game'), findsOneWidget);
    await tester.tap(find.text('Start Game'));
    await tester.pumpAndSettle();

    expect(find.text('Game'), findsOneWidget);
    // Grid exists
    expect(find.byType(GridView), findsOneWidget);
  });
}
