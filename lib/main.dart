import 'package:cryptowallet/crypto_wallet/presenter/ui/wallet/wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:cryptowallet/crypto_wallet/core/routes/app_routes.dart';

import 'l10n/l10n.dart';

void main() => runApp(
      const ProviderScope(
        child: Main(),
      ),
    );

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        L10n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt', 'BR'),
        Locale('en', 'US'),
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: WalletPage.walletRoute,
      routes: appRoutes,
    );
  }
}
