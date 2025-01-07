import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/data/base/box_interface.dart';
import 'package:kur_hesapla/data/entity/marked_currency.dart';
import 'package:kur_hesapla/data/objectbox.dart';
import 'package:kur_hesapla/generated/objectbox.g.dart';

@injectable
class MarkedCurrencyBox extends BoxInterface<MarkedCurrency> {
  @override
  final Box<MarkedCurrency> box =
      GetIt.instance<ObjectBox>().store.box<MarkedCurrency>();
}
