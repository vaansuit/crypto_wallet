import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entities/crypto_entity.dart';
import '../../domain/repositories/crypto_repository.dart';
import 'crypto_notifier_provider.dart';

final visibilityProvider = StateProvider<bool>((ref) => true);

final indexProvider = StateProvider<int>((ref) => 0);

final cryptoRepositoryProvider = Provider((ref) {
  return CryptoRepository();
});

final selectedChartDayProvider = StateProvider((ref) => 5);

final cryptoInfoProvider =
    StateNotifierProvider<CryptoNotifierProvider, CryptoEntity>(
        (ref) => CryptoNotifierProvider());

final chartIndexSelectedProvider = StateProvider<int>(
  (ref) => 0,
);
