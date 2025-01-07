import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/app/state/global/bloc/global_bloc.dart';
import 'package:kur_hesapla/data/entity/marked_currency.dart';
import 'package:kur_hesapla/generated/objectbox.g.dart';
import 'package:kur_hesapla/service/marked_currency_service.dart';

part 'marked_event.dart';

part 'marked_state.dart';

part 'marked_bloc.freezed.dart';

@injectable
class MarkedBloc extends Bloc<MarkedEvent, MarkedState> {
  MarkedBloc({
    required this.markedCurrencyService,
  }) : super(const MarkedState.initial()) {
    on<Load>(_load);
    on<Remove>(_remove);
    watchedMarkedCurrency =
        markedCurrencyService.boxRepository.box.query().watch();

    subscribeMarkedCurrency =
        watchedMarkedCurrency.listen((Query<MarkedCurrency> query) async {
      add(const MarkedEvent.load());
    });
  }

  final MarkedCurrencyService markedCurrencyService;
  final GlobalBloc globalBloc = GetIt.instance<GlobalBloc>();
  late final Stream<Query<MarkedCurrency>> watchedMarkedCurrency;
  late final StreamSubscription<Query<MarkedCurrency>> subscribeMarkedCurrency;

  FutureOr<void> _load(Load event, Emitter<MarkedState> emit) {
    emit(Loaded(markedList: markedCurrencyService.boxRepository.box.getAll()));
  }

  FutureOr<void> _remove(Remove event, Emitter<MarkedState> emit) {
    markedCurrencyService.boxRepository.box.remove(event.id);
  }

  @override
  Future<void> close() {
    subscribeMarkedCurrency.cancel();
    return super.close();
  }
}
