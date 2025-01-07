part of 'select_currency_cubit.dart';

@freezed
class SelectCurrencyState with _$SelectCurrencyState {
  const factory SelectCurrencyState({
    required List<CurrencyType> allCurrencyTypes,
    required List<CurrencyType> filteredCurrencyTypes,
    required String searchQuery,
  }) = _SelectCurrencyState;
}
