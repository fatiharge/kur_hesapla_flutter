import 'package:objectbox/objectbox.dart';

@Entity()
class MarkedCurrency {
  MarkedCurrency({
    required this.currencyType,
    required this.calculatedCurrencyType,
    required this.currencyValue,
    required this.calculatedCurrencyValue,
    required this.date,
    this.id = 0,
  });

  @Id()
  int id;
  String currencyType;
  String calculatedCurrencyType;
  String currencyValue;
  String calculatedCurrencyValue;
  @Property(type: PropertyType.date)
  DateTime date;
}
