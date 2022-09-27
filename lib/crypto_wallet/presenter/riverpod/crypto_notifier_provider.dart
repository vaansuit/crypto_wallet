import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entities/crypto_entity.dart';

class CryptoNotifierProvider extends StateNotifier<CryptoEntity> {
  CryptoNotifierProvider()
      : super(CryptoEntity(
          cryptoMarketDataChart: {},
          cryptoHistoryPrice: {},
          cryptoPercentVariation: {},
          cryptoActualCurrencyPrice: 0,
          cryptoIcon: '',
          cryptoAbrevName: '',
          cryptoName: '',
          cryptoUserCurrencyAmount: 0,
          cryptoUserAmount: 0,
        ));
}
