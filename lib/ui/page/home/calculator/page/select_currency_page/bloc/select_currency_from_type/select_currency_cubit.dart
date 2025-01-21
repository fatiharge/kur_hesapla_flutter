import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/app/enum/currency_type.dart';
import 'package:kur_hesapla/data/repository/starry_currency_box.dart';

part 'select_currency_state.dart';

part 'select_currency_cubit.freezed.dart';

@injectable
class SelectCurrencyCubit extends Cubit<SelectCurrencyState> {
  SelectCurrencyCubit(this._starryCurrencyBox)
      : super(
          const SelectCurrencyState.all(
            allCurrencyTypes: CurrencyType.values,
            filteredCurrencyTypes: CurrencyType.values,
            searchQuery: '',
          ),
        ) {}
  final StarryCurrencyBox _starryCurrencyBox;

  List<Map<CurrencyType, CurrencyType>> get getStarryCurrenciesMap {
    return _starryCurrencyBox.getAll.map((e) {
      final fromCurrency = CurrencyType.values.byName(e.currencyType);
      final toCurrency = CurrencyType.values.byName(e.calculatedCurrencyType);

      return {fromCurrency: toCurrency};
    }).toList();
  }

  void searchQueryChanged(String query) {
    final lowerQuery = query.toLowerCase();

    final filtered = state.allCurrencyTypes
        .where(
          (currency) =>
              currency.name.toLowerCase().contains(lowerQuery) ||
              currency.getLocaleKey.tr().toLowerCase().contains(lowerQuery),
        )
        .toList();
    emit(
      state.copyWith(filteredCurrencyTypes: filtered, searchQuery: query),
    );
  }
}
