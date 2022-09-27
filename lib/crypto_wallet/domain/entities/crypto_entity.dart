import 'dart:convert';

class CryptoEntity {
  String cryptoIcon;
  String cryptoAbrevName;
  String cryptoName;
  double cryptoUserCurrencyAmount;
  double cryptoUserAmount;
  double cryptoActualCurrencyPrice;
  Map<String, double> cryptoHistoryPrice;
  Map<String, double> cryptoPercentVariation;
  Map<String, List<List<double>>> cryptoMarketDataChart;

  CryptoEntity({
    required this.cryptoMarketDataChart,
    required this.cryptoPercentVariation,
    required this.cryptoHistoryPrice,
    required this.cryptoActualCurrencyPrice,
    required this.cryptoIcon,
    required this.cryptoAbrevName,
    required this.cryptoName,
    required this.cryptoUserCurrencyAmount,
    required this.cryptoUserAmount,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'cryptoIcon': cryptoIcon});
    result.addAll({'cryptoAbrevName': cryptoAbrevName});
    result.addAll({'cryptoName': cryptoName});
    result.addAll({'cryptoCurrencyAmount': cryptoUserCurrencyAmount});
    result.addAll({'cryptoAmount': cryptoUserAmount});
    result.addAll({'cryptoHistoryPrice': cryptoHistoryPrice});
    result.addAll({'cryptoPercentVariation': cryptoPercentVariation});
    result.addAll({'cryptoMarketDataChart': cryptoMarketDataChart});

    return result;
  }

  factory CryptoEntity.fromMap(Map<String, dynamic> map) {
    return CryptoEntity(
      cryptoIcon: map['cryptoIcon'] ?? '',
      cryptoAbrevName: map['cryptoAbrevName'] ?? '',
      cryptoName: map['cryptoName'] ?? '',
      cryptoUserCurrencyAmount: map['cryptoCurrencyAmount'],
      cryptoUserAmount: map['cryptoAmount'],
      cryptoActualCurrencyPrice: map['cryptoActualCurrenciPrice'],
      cryptoHistoryPrice: map['cryptoHistoryPrice'],
      cryptoPercentVariation: map['cryptoPercentVariation'],
      cryptoMarketDataChart: map['cryptoMarketDataChart'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CryptoEntity.fromJson(String source) =>
      CryptoEntity.fromMap(json.decode(source));
}
