import 'l10n.dart';

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get language => 'English';

  @override
  String get titleWalletPage => 'Crypto Assets';

  @override
  String get subtitleWalletPage => 'Total value of cryptocurrencies.';

  @override
  String get firstIconTextBottomNavBar => 'Portfolio';

  @override
  String get secondIconTextBottomNavBar => 'Transactions';

  @override
  String get descriptionConversionButton => 'Convert Crypto';

  @override
  String get todayDetailsButtonsRow => 'Today';

  @override
  String get actualPriceDetaislPage => 'Current monetary price';

  @override
  String get percentVariationDetaislPage => 'Variation of the selected period';

  @override
  String get userQuantityDetaislPage => 'Quantity';

  @override
  String get userCyrptoCurrencyValueAmountDetaislPage => 'Value';

  @override
  String get cryptoValueSelectedDay => 'Monetary value in the selected period:';

  @override
  String get textAppBarDetailsPage => 'Details';
}
