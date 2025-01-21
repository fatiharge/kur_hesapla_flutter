part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.initial() = Initial;

  const factory NewsState.loaded({
    required List<GetNewsData> getNewsList,
    @Default(5) int nextPageTrigger,
    @Default(1) int nextPage
  }) = Loaded;
}
