import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../../l10n/l10n.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../riverpod/providers.dart';
import 'chart_details_page.dart';
import 'crypto_details_conversion_button.dart';
import 'crypto_details_listview.dart';
import 'details_buttons_row.dart';
import 'header_crypto_details_page.dart';

class CryptoDetailsBody extends ConsumerWidget {
  const CryptoDetailsBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int chartIndexSelected = ref.watch(chartIndexSelectedProvider);
    var cryptoInfo = ref.watch(cryptoInfoProvider.notifier).state;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderCryptoDetailsPage(),
            Text(
              cryptoInfo.cryptoAbrevName,
              style: cryptoDetailsAbbrevNameStyle,
            ),
            const SizedBox(height: 10),
            Text(
              L10n.of(context)!.cryptoValueSelectedDay,
              style: cryptoSubtitleStyle,
            ),
            Text(
              NumberFormat.simpleCurrency(locale: 'pt-BR', decimalDigits: 2)
                  .format(
                cryptoInfo.cryptoHistoryPrice.values
                    .toList()[chartIndexSelected],
              ),
              style: currencyTextStyle,
            ),
            const ChartDetailsPage(),
            const SizedBox(height: 10),
            const DetailsButtonsRow(),
            const CryptoDetailsListView(),
            const SizedBox(height: 20),
            const CryptoDetailsConversionButton(),
          ],
        ),
      ),
    );
  }
}
