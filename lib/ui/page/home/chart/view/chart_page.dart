import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kur_hesapla/ui/page/home/chart/bloc/chart_bloc.dart';
import 'package:kur_hesapla/ui/page/home/chart/view/chart_view.dart';

@RoutePage()
class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ChartBloc(),
      child: const ChartView(),
    );
  }
}
