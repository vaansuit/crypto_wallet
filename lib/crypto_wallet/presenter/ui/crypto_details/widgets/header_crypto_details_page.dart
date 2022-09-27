import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../riverpod/providers.dart';

class HeaderCryptoDetailsPage extends ConsumerWidget {
  const HeaderCryptoDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var cryptoInfo = ref.watch(cryptoInfoProvider.notifier).state;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          cryptoInfo.cryptoName,
          style: const TextStyle(
            fontSize: 32,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(cryptoInfo.cryptoIcon),
            ),
          ),
        ),
      ],
    );
  }
}
