import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/app/enum/currency_type.dart';
import 'package:kur_hesapla/data/entity/starry_currency.dart';
import 'package:kur_hesapla/data/repository/starry_currency_box.dart';

part 'starry_currency_event.dart';

part 'starry_currency_state.dart';

part 'starry_currency_bloc.freezed.dart';

@injectable
class StarryCurrencyBloc
    extends Bloc<StarryCurrencyEvent, StarryCurrencyState> {
  StarryCurrencyBloc(
    this._starryCurrencyBox,
  ) : super(const StarryCurrencyState.initial()) {
    on<_Select>(_onSelect);
    on<_DiSelect>(_onDiSelect);
    on<_Clear>(_onClear);
    on<_Init>(_onInit);
  }

  final StarryCurrencyBox _starryCurrencyBox;

  FutureOr<void> _onSelect(_Select event, Emitter<StarryCurrencyState> emit) {
    final id = _starryCurrencyBox.put(event.starryCurrency);
    emit(Selected(starry: event.starryCurrency, id: id));
  }

  FutureOr<void> _onInit(_Init event, Emitter<StarryCurrencyState> emit) {
    final id = _starryCurrencyBox.isStarry(
      currencyType: event.currencyType,
      calculatedCurrencyType: event.calculatedCurrencyType,
    );

    if (id != null) {
      final starry = StarryCurrency(
        currencyType: event.currencyType.name,
        calculatedCurrencyType: event.currencyType.name,
      );
      emit(Selected(starry: starry, id: id));
    }
  }

  FutureOr<void> _onDiSelect(
    _DiSelect event,
    Emitter<StarryCurrencyState> emit,
  ) {
    _starryCurrencyBox.remove(event.id);

    emit(const Initial());
  }

  FutureOr<void> _onClear(
    _Clear event,
    Emitter<StarryCurrencyState> emit,
  ) {
    emit(const Initial());
  }
}
