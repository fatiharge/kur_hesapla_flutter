import 'package:objectbox/objectbox.dart';

@Entity()
class StarryCurrency {
  StarryCurrency({
    required this.currencyType,
    required this.calculatedCurrencyType,
    this.id = 0,
  });

  @Id()
  int id;
  String currencyType;
  String calculatedCurrencyType;
}
