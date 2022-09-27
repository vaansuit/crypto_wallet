import 'package:cryptowallet/crypto_wallet/presenter/ui/transactions/transactions_page.dart';
import 'package:cryptowallet/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../riverpod/providers.dart';
import '../wallet/wallet_page.dart';

class CryptoBottomNavbar extends StatefulHookConsumerWidget {
  const CryptoBottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<CryptoBottomNavbar> createState() => _CryptoBottomNavbarState();
}

class _CryptoBottomNavbarState extends ConsumerState<CryptoBottomNavbar> {
  @override
  Widget build(BuildContext context) {
    void tappedIcon(int index) {
      switch (index) {
        case 0:
          ref.read(indexProvider.notifier).state = index;
          Navigator.of(context).pushReplacementNamed(WalletPage.walletRoute);
          break;
        case 1:
          ref.read(indexProvider.notifier).state = index;
          Navigator.of(context)
              .pushReplacementNamed(TransactionsPage.transactionsRoute);
          break;
      }
    }

    return BottomNavigationBar(
      key: const Key('BottomNavBar'),
      onTap: tappedIcon,
      currentIndex: ref.watch(indexProvider),
      elevation: 10,
      selectedItemColor: const Color.fromRGBO(224, 43, 87, 1),
      items: [
        BottomNavigationBarItem(
          icon: const ImageIcon(
            key: Key('firstIconBottomNavBar'),
            AssetImage('assets/icons/warrenIcon.png'),
          ),
          label: L10n.of(context)?.firstIconTextBottomNavBar,
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            key: Key('secondIconBottomNavBar'),
            (Icons.currency_exchange),
          ),
          label: L10n.of(context)?.secondIconTextBottomNavBar,
        ),
      ],
    );
  }
}
