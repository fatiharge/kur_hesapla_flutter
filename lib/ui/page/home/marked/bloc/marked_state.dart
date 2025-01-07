part of 'marked_bloc.dart';

@freezed
class MarkedState with _$MarkedState {
  const factory MarkedState.initial() = Initial;

  const factory MarkedState.loaded({
    required List<MarkedCurrency> markedList,
  }) = Loaded;
}
