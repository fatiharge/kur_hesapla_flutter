import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/app/enum/currency_type.dart';
import 'package:kur_hesapla/data/base/box_interface.dart';
import 'package:kur_hesapla/data/entity/starry_currency.dart';
import 'package:kur_hesapla/data/objectbox.dart';

import 'package:kur_hesapla/generated/objectbox.g.dart';

@injectable
class StarryCurrencyBox extends BoxInterface<StarryCurrency> {
  StarryCurrencyBox()
      : super(
          box: GetIt.instance<ObjectBox>().store.box<StarryCurrency>(),
        );

  Box<StarryCurrency> get box => super.getEntity(this);

  List<StarryCurrency> findExactCurrencyPair({
    required String type1,
    required String type2,
  }) {
    final query = box
        .query(
          (StarryCurrency_.currencyType.equals(type1) &
                  StarryCurrency_.calculatedCurrencyType.equals(type2))
              .or(
            StarryCurrency_.currencyType.equals(type2) &
                StarryCurrency_.calculatedCurrencyType.equals(type1),
          ),
        )
        .build();

    final results = query.find();
    query.close();
    return results;
  }

  int? isStarry({
    required CurrencyType currencyType,
    required CurrencyType calculatedCurrencyType,
  }) {
    final list = findExactCurrencyPair(
        type1: currencyType.name, type2: calculatedCurrencyType.name);

    return list.length == 0 ? null : list.first.id;
  }
}
