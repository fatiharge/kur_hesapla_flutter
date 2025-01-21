part of 'marked_currency_bloc.dart';

@freezed
class MarkedCurrencyEvent with _$MarkedCurrencyEvent {
  const factory MarkedCurrencyEvent.clear() = _Clear;

  const factory MarkedCurrencyEvent.select({
    required MarkedCurrency markedCurrency,
  }) = _Select;

  const factory MarkedCurrencyEvent.diSelect({
    required int id,
  }) = _DiSelect;
}
