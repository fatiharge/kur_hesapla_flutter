import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_event.dart';

part 'global_state.dart';

part 'global_bloc.freezed.dart';

class GlobalBloc extends Bloc<GlobalEvent, GlobalState> {
  GlobalBloc() : super(const GlobalState.success()) {
    on<_GlobalSuccessEvent>((event, emit) {
      emit(const GlobalState.success());
    });

    on<_GlobalErrorEvent>((event, emit) {
      emit(
        GlobalState.error(
          exception: event.exception,
          widget: event.widget,
        ),
      );
    });

    on<_GlobalLoadEvent>((event, emit) {
      emit(GlobalState.loading(widget: event.widget));
    });
  }
}
