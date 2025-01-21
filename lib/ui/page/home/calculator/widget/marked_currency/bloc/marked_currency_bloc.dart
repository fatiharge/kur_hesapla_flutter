import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/data/entity/marked_currency.dart';
import 'package:kur_hesapla/data/repository/marked_currency_box.dart';
import 'package:kur_hesapla/generated/objectbox.g.dart';

part 'marked_currency_event.dart';

part 'marked_currency_state.dart';

part 'marked_currency_bloc.freezed.dart';

@injectable
class MarkedCurrencyBloc
    extends Bloc<MarkedCurrencyEvent, MarkedCurrencyState> {
  MarkedCurrencyBloc(this._markedCurrencyBox)
      : super(const MarkedCurrencyState.initial()) {
    _subscribeMarkedCurrency =
        _markedCurrencyBox.subscribeGenerator(_listenEventTrigger);

    on<_Select>(_onSelect);
    on<_DiSelect>(_onDiSelect);
    on<_Clear>(_onClear);
  }

  final MarkedCurrencyBox _markedCurrencyBox;

  late final StreamSubscription<Query<MarkedCurrency>> _subscribeMarkedCurrency;

  @override
  Future<void> close() {
    _subscribeMarkedCurrency.cancel();
    return super.close();
  }

  FutureOr<void> _onSelect(_Select event, Emitter<MarkedCurrencyState> emit) {
    final id = _markedCurrencyBox.put(event.markedCurrency);

    emit(Selected(marked: event.markedCurrency, id: id));
  }

  FutureOr<void> _onDiSelect(
    _DiSelect event,
    Emitter<MarkedCurrencyState> emit,
  ) {
    _markedCurrencyBox.remove(event.id);

    emit(const Initial());
  }

  FutureOr<void> _onClear(
    _Clear event,
    Emitter<MarkedCurrencyState> emit,
  ) {
    emit(const Initial());
  }

  void _listenEventTrigger(Query<MarkedCurrency> query) {
    if (state is Selected) {
      final selectedState = state as Selected;
      final q = query.find().where(
            (element) => selectedState.id == element.id,
          );
      if (q.isEmpty) {
        add(const _Clear());
      }
    }
  }
}
