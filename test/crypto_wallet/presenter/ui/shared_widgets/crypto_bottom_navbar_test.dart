import 'package:cryptowallet/crypto_wallet/presenter/ui/transactions/transactions_page.dart';
import 'package:cryptowallet/crypto_wallet/presenter/ui/wallet/wallet_page.dart';
import 'package:cryptowallet/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  testWidgets('Page navigation smoke test', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: Main(),
      ),
    );
    await tester.tap(find.byKey(const Key('secondIconBottomNavBar')));
    await tester.pumpAndSettle();
    expect(find.byType(TransactionsPage), findsOneWidget);
    expect(find.byKey(const Key('cleytin')), findsOneWidget);

    await tester.tap(find.byKey(const Key('firstIconBottomNavBar')));
    await tester.pumpAndSettle();
    expect(find.byType(WalletPage), findsOneWidget);
  });
}
