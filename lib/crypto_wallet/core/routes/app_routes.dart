import 'package:cryptowallet/crypto_wallet/presenter/ui/transactions/transactions_page.dart';

import '../../presenter/ui/crypto_details/crypto_details_page.dart';
import '../../presenter/ui/wallet/wallet_page.dart';

var appRoutes = {
  WalletPage.walletRoute: (context) => const WalletPage(),
  TransactionsPage.transactionsRoute: (context) => const TransactionsPage(),
  CryptoDetailsPage.cryptoDetailsRoute: (context) => const CryptoDetailsPage(),
};
