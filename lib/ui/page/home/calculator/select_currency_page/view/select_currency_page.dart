import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:kur_hesapla/ui/page/home/calculator/select_currency_page/bloc/select_currency_cubit.dart';
import 'package:kur_hesapla/ui/page/home/calculator/select_currency_page/view/select_currency_view.dart';

@RoutePage()
class SelectCurrencyPage extends StatelessWidget {
  const SelectCurrencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.instance<SelectCurrencyCubit>(),
      child: const SelectCurrencyView(),
    );
  }
}
