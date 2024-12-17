import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'marked_event.dart';
part 'marked_state.dart';

class MarkedBloc extends Bloc<MarkedEvent, MarkedState> {
  MarkedBloc() : super(MarkedInitial()) {
    on<MarkedEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
