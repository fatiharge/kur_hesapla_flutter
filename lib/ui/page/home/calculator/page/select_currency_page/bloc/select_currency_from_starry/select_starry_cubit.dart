import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/app/enum/currency_type.dart';
import 'package:kur_hesapla/data/repository/starry_currency_box.dart';

part 'select_starry_state.dart';

part 'select_starry_cubit.freezed.dart';

@injectable
class SelectStarryCubit extends Cubit<SelectStarryState> {
  SelectStarryCubit(this._starryCurrencyBox)
      : super(const SelectStarryState.starry(starryCurrenciesList: []));

  final StarryCurrencyBox _starryCurrencyBox;

  void initializeState() {
    emit(
      SelectStarryState.starry(
          starryCurrenciesList: _starryCurrencyBox.getAll.map((e) {
        final fromCurrency = CurrencyType.values.byName(e.currencyType);
        final toCurrency = CurrencyType.values.byName(e.calculatedCurrencyType);

        return StarryCurrencies(
            fCurrencyType: fromCurrency, sCurrencyType: toCurrency);
      }).toList()),
    );
  }
}
