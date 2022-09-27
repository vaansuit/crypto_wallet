import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/utils/arguments.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../domain/entities/crypto_entity.dart';
import '../../../riverpod/providers.dart';
import '../../crypto_details/crypto_details_page.dart';

class CryptoListTile extends ConsumerWidget {
  CryptoEntity cryptoModel;

  CryptoListTile({
    Key? key,
    required this.cryptoModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      elevation: 10,
      child: ListTile(
        onTap: () {
          Navigator.of(context).pushNamed(CryptoDetailsPage.cryptoDetailsRoute,
              arguments: Arguments(cryptoEntity: cryptoModel));
        },
        leading: CircleAvatar(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(cryptoModel.cryptoIcon),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        title: Text(cryptoModel.cryptoAbrevName),
        subtitle: Text(cryptoModel.cryptoName),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Visibility(
                  replacement: const Text(
                    '*********',
                  ),
                  visible: ref.watch(visibilityProvider.state).state,
                  child: Text(
                    NumberFormat.simpleCurrency(
                            locale: 'pt-BR', decimalDigits: 2)
                        .format(cryptoModel.cryptoUserCurrencyAmount),
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Color.fromRGBO(47, 46, 50, 1),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Visibility(
              replacement: Text(
                hideCryptoAmount + cryptoModel.cryptoAbrevName,
              ),
              visible: ref.watch(visibilityProvider.state).state,
              child: Text(
                cryptoModel.cryptoUserAmount.toString() +
                    cryptoModel.cryptoAbrevName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
