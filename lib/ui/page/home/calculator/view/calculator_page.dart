import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:kur_hesapla/ui/page/home/calculator/bloc/calculator_bloc.dart';
import 'package:kur_hesapla/ui/page/home/calculator/view/calculator_view.dart';
import 'package:kur_hesapla/ui/page/home/calculator/widget/currency_delta_list/bloc/currency_delta_list_bloc.dart';

@RoutePage()
class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => GetIt.instance<CalculatorBloc>()
            ..add(const CalculatorEvent.load()),
        ),
        BlocProvider(
          create: (_) => GetIt.instance<CurrencyDeltaListBloc>()
            ..add(CurrencyDeltaListEvent.load()),
        ),

      ],
      child: CalculatorView(),
    );
  }
}
