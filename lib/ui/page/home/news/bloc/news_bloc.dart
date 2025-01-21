import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/app/client/news_api_client.dart';
import 'package:kur_hesapla/app/state/global/bloc/global_bloc.dart';
import 'package:news_api/news_api.dart';

part 'news_event.dart';

part 'news_state.dart';

part 'news_bloc.freezed.dart';

@injectable
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(this.newsApiClient) : super(const NewsState.initial()) {
    on<_Started>(_onStarted);
    on<_NextPage>(_onNextPage);
  }

  final NewsApiClient newsApiClient;
  final GlobalBloc globalBloc = GetIt.instance<GlobalBloc>();

  Future<void> _onStarted(_Started event, Emitter<NewsState> emit) async {
    globalBloc.add(const GlobalEvent.load());
    final response = await newsApiClient.apiClient
        .getNewsResourceApi()
        .newsGet(size: 5, page: 1);
    final getNewsResponse = response.data!;
    emit(NewsState.loaded(getNewsList: getNewsResponse.data!.toList()));
    globalBloc.add(const GlobalEvent.success());
  }

  Future<void> _onNextPage(_NextPage event, Emitter<NewsState> emit) async {
    final loadedState = state as Loaded;

    globalBloc.add(const GlobalEvent.load());
    final newPage = loadedState.nextPage + 1;
    await Future<void>.delayed(Duration(seconds: 3));
    final response = await newsApiClient.apiClient
        .getNewsResourceApi()
        .newsGet(size: 5, page: newPage);

    final getNewsResponse = response.data!;

    final updatedNewsList = [
      ...loadedState.getNewsList,
      ...getNewsResponse.data!.toList(),
    ];
    emit(
      NewsState.loaded(
        getNewsList: updatedNewsList,
        nextPage: newPage,
        nextPageTrigger: loadedState.nextPageTrigger + 5,
      ),
    );

    globalBloc.add(const GlobalEvent.success());
  }
}
