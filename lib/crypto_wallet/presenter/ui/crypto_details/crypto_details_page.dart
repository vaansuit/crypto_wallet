import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/utils/arguments.dart';
import '../../../domain/entities/crypto_entity.dart';
import '../../riverpod/providers.dart';
import 'widgets/crypto_details_appbar.dart';
import 'widgets/crypto_details_body.dart';

class CryptoDetailsPage extends ConsumerStatefulWidget {
  const CryptoDetailsPage({Key? key}) : super(key: key);

  static const cryptoDetailsRoute = '/crypto-details-page';

  @override
  ConsumerState<CryptoDetailsPage> createState() => _CryptoDetailsPageState();
}

class _CryptoDetailsPageState extends ConsumerState<CryptoDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Arguments;
    CryptoEntity crypto = args.cryptoEntity;
    ref.read(cryptoInfoProvider.notifier).state = crypto;

    return const Scaffold(
      appBar: CryptoDetailsAppBar(),
      body: CryptoDetailsBody(),
    );
  }
}
