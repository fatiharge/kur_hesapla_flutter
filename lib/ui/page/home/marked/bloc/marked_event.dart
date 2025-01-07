part of 'marked_bloc.dart';

@freezed
class MarkedEvent with _$MarkedEvent {
  const factory MarkedEvent.load() = Load;
  const factory MarkedEvent.remove(int id) = Remove;
}
