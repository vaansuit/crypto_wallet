import 'package:cryptowallet/l10n/l10n.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/text_styles.dart';

class SubtitleWalletPage extends StatelessWidget {
  const SubtitleWalletPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          L10n.of(context)!.subtitleWalletPage,
          textAlign: TextAlign.left,
          style: cryptoSubtitleStyle,
        ),
      ],
    );
  }
}
