import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:kur_hesapla/ui/page/home/news/bloc/news_bloc.dart';
import 'package:kur_hesapla/ui/page/home/news/view/news_view.dart';

@RoutePage()
class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.instance<NewsBloc>()..add(NewsEvent.started()),
      child: const NewsView(),
    );
  }
}
