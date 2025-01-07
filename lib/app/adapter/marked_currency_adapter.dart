import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/data/entity/marked_currency.dart';
import 'package:kur_hesapla/ui/page/home/calculator/bloc/calculator_bloc.dart';

@injectable
class MarkedCurrencyAdapter {
  MarkedCurrency calculatorLoadedAdaptee(CalculatorLoaded calculatorLoaded) {
    return MarkedCurrency(
      currencyType: calculatorLoaded.currencyType.name,
      calculatedCurrencyType: calculatorLoaded.calculatedType.name,
      currencyValue: calculatorLoaded.currencyValue,
      calculatedCurrencyValue: calculatorLoaded.calculatedValue,
      date: DateTime.now(),
    );
  }
}
