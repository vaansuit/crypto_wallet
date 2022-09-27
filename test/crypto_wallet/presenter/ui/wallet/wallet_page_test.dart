import 'package:cryptowallet/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  testWidgets('Visible button smoke test', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: Main(),
      ),
    );

    expect(find.byKey(const Key('ShowIconButton')), findsOneWidget);

    await tester.tap(find.byKey(const Key('ShowIconButton')));
    await tester.pump();

    expect(find.text('*********'), findsWidgets);
    expect(find.text('***** BTC'), findsOneWidget);
    expect(find.text('***** ETH'), findsOneWidget);
    expect(find.text('***** LTC'), findsOneWidget);
  });

  testWidgets('BottomNavBar smoke test', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: Main(),
      ),
    );
    expect(find.byKey(const Key('BottomNavBar')), findsOneWidget);
    await tester.tap(find.byKey(const Key('firstIconBottomNavBar')));
    await tester.pump();
    await tester.tap(find.byKey(const Key('secondIconBottomNavBar')));
    await tester.pump();
  });
}
