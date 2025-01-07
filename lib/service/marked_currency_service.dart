import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/app/base/box_service_interface.dart';
import 'package:kur_hesapla/data/entity/marked_currency.dart';
import 'package:kur_hesapla/data/repository/marked_currency_box.dart';

@injectable
class MarkedCurrencyService extends BoxServiceInterface {
  @override
  MarkedCurrencyBox boxRepository = GetIt.instance<MarkedCurrencyBox>();

  int putMarkedCurrency({required MarkedCurrency markedCurrency}) {
    return boxRepository.box.put(markedCurrency);
  }
}
