import 'package:flutter/material.dart';

import '../../../../../l10n/l10n.dart';
import '../../../../core/utils/text_styles.dart';

class CryptoDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CryptoDetailsAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.grey),
      elevation: 1,
      title: Text(
        L10n.of(context)!.textAppBarDetailsPage,
        style: cryptoSubtitleStyle,
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 56);
}
