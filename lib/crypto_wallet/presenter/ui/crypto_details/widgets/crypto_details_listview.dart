import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../../l10n/l10n.dart';
import '../../../riverpod/providers.dart';

class CryptoDetailsListView extends ConsumerWidget {
  const CryptoDetailsListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int chartIndexSelected = ref.watch(chartIndexSelectedProvider);
    var cryptoInfo = ref.watch(cryptoInfoProvider.notifier).state;
    double variationValue =
        cryptoInfo.cryptoPercentVariation.values.toList()[chartIndexSelected];

    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 1,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Material(
              elevation: 5,
              child: ListTile(
                title: Text(L10n.of(context)!.actualPriceDetaislPage),
                trailing: Text(
                  NumberFormat.simpleCurrency(locale: 'pt-BR', decimalDigits: 2)
                      .format(
                    cryptoInfo.cryptoHistoryPrice.values
                        .toList()[chartIndexSelected],
                  ),
                ),
              ),
            ),
            Material(
              elevation: 5,
              child: ListTile(
                title: Text(
                  L10n.of(context)!.percentVariationDetaislPage,
                ),
                trailing: Text(
                  '${(variationValue).toStringAsFixed(2)}%',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: variationValue < 0 ? Colors.red : Colors.green,
                  ),
                ),
              ),
            ),
            Material(
              elevation: 5,
              child: ListTile(
                title: Text(L10n.of(context)!.userQuantityDetaislPage),
                trailing: Text(cryptoInfo.cryptoUserAmount.toString()),
              ),
            ),
            Material(
              elevation: 5,
              child: ListTile(
                title: Text(
                    L10n.of(context)!.userCyrptoCurrencyValueAmountDetaislPage),
                trailing: Text(
                  NumberFormat.simpleCurrency(locale: 'pt-BR', decimalDigits: 2)
                      .format(cryptoInfo.cryptoUserCurrencyAmount),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
