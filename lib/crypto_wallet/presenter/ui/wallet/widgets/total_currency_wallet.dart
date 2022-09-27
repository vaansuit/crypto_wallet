import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/utils/text_styles.dart';
import '../../../riverpod/providers.dart';

class TotalCurrencyWallet extends ConsumerWidget {
  const TotalCurrencyWallet({
    Key? key,
    required this.totalCryptoWalletAmount,
  }) : super(key: key);

  final double totalCryptoWalletAmount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Visibility(
          replacement: const Text(
            '*********',
            textAlign: TextAlign.left,
            style: hideTextStyle,
          ),
          visible: ref.watch(visibilityProvider.state).state,
          child: Text(
            NumberFormat.simpleCurrency(locale: 'pt-BR', decimalDigits: 2)
                .format(totalCryptoWalletAmount),
            textAlign: TextAlign.left,
            style: currencyTextStyle,
          ),
        ),
      ],
    );
  }
}
