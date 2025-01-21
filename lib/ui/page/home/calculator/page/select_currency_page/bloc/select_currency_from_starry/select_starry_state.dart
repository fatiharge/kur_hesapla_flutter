part of 'select_starry_cubit.dart';

@freezed
class SelectStarryState with _$SelectStarryState {
  const factory SelectStarryState.starry({
    required List<StarryCurrencies> starryCurrenciesList,
  }) = _Starry;
}

class StarryCurrencies {
  final CurrencyType fCurrencyType;
  final CurrencyType sCurrencyType;

  StarryCurrencies({required this.fCurrencyType, required this.sCurrencyType});
}
