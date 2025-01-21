import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/data/entity/marked_currency.dart';
import 'package:kur_hesapla/data/repository/marked_currency_box.dart';
import 'package:kur_hesapla/generated/objectbox.g.dart';

part 'marked_event.dart';

part 'marked_state.dart';

part 'marked_bloc.freezed.dart';

@injectable
class MarkedBloc extends Bloc<MarkedEvent, MarkedState> {
  MarkedBloc({
    required MarkedCurrencyBox markedCurrencyBox,
  })  : _markedCurrencyBox = markedCurrencyBox,
        super(const MarkedState.initial()) {
    on<Load>(_load);
    on<Remove>(_remove);

    _subscribeMarkedCurrency = _markedCurrencyBox
        .subscribeGenerator((p0) => add(const MarkedEvent.load()));
  }

  final MarkedCurrencyBox _markedCurrencyBox;

  late final StreamSubscription<Query<MarkedCurrency>> _subscribeMarkedCurrency;

  FutureOr<void> _load(Load event, Emitter<MarkedState> emit) {
    emit(Loaded(markedList: _markedCurrencyBox.getAll));
  }

  FutureOr<void> _remove(Remove event, Emitter<MarkedState> emit) {
    _markedCurrencyBox.remove(event.id);
  }

  @override
  Future<void> close() {
    _subscribeMarkedCurrency.cancel();
    return super.close();
  }
}
