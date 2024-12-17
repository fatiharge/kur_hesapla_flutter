import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'marked_event.dart';
part 'marked_state.dart';

class MarkedBloc extends Bloc<MarkedEvent, MarkedState> {
  MarkedBloc() : super(MarkedInitial()) {
    on<MarkedEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
