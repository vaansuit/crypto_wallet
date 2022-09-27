import 'l10n.dart';

/// The translations for Portuguese (`pt`).
class L10nPt extends L10n {
  L10nPt([String locale = 'pt']) : super(locale);

  @override
  String get language => 'Português Brasil';

  @override
  String get titleWalletPage => 'Ativos em Cripto';

  @override
  String get subtitleWalletPage => 'Valor total de criptomoedas.';

  @override
  String get firstIconTextBottomNavBar => 'Portfólio';

  @override
  String get secondIconTextBottomNavBar => 'Movimentações';

  @override
  String get descriptionConversionButton => 'Converter Crypto';

  @override
  String get todayDetailsButtonsRow => 'Hoje';

  @override
  String get actualPriceDetaislPage => 'Preço monetário atual';

  @override
  String get percentVariationDetaislPage => 'Variação do período selecionado';

  @override
  String get userQuantityDetaislPage => 'Quantidade';

  @override
  String get userCyrptoCurrencyValueAmountDetaislPage => 'Valor';

  @override
  String get cryptoValueSelectedDay => 'Valor da moeda no período selecionado:';

  @override
  String get textAppBarDetailsPage => 'Detalhes';
}
