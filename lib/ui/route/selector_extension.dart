import 'package:kur_hesapla/app/enum/currency_type.dart';
import 'package:kur_hesapla/ui/page/home/calculator/page/select_currency_page/bloc/select_currency_from_starry/select_starry_cubit.dart';
import 'package:kur_hesapla/ui/route/route_manager.dart';
import 'package:kur_hesapla/ui/route/route_manager.gr.dart';

extension SelectorExtensions on RouteManager {
  Future<SelectorExtensionModel?> currencyTypeSelector() async {
    return push<SelectorExtensionModel?>(const SelectCurrencyRoute());
  }
}

class SelectorExtensionModel {
  final CurrencyType? currencyType;
  final StarryCurrencies? starryCurrencies;

  SelectorExtensionModel({this.currencyType, this.starryCurrencies});
}
