import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:kur_hesapla/generated/locale_keys.g.dart';
import 'package:kur_hesapla/ui/page/home/calculator/page/select_currency_page/bloc/select_currency_from_type/select_currency_cubit.dart';
import 'package:kur_hesapla/ui/page/home/calculator/page/select_currency_page/bloc/select_currency_from_starry/select_starry_cubit.dart';
import 'package:kur_hesapla/ui/page/home/calculator/page/select_currency_page/view/select_currency_from_starry_view.dart';
import 'package:kur_hesapla/ui/page/home/calculator/page/select_currency_page/view/select_currency_from_type_view.dart';
import 'package:uikit/utility/extension/context_extension.dart';

@RoutePage()
class SelectCurrencyPage extends StatelessWidget {
  const SelectCurrencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            LocaleKeys.select_currency_title.tr(),
            style: context.textTheme.headlineSmall,
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list)),
              Tab(icon: Icon(Icons.star_border)),
            ],
            onTap: (value) => null,
          ),
        ),
        body: TabBarView(
          children: [
            BlocProvider(
              create: (_) => GetIt.instance<SelectCurrencyCubit>(),
              child: const SelectCurrencyFromTypeView(),
            ),
            BlocProvider(
              create: (_) =>
                  GetIt.instance<SelectStarryCubit>()..initializeState(),
              child: const SelectCurrencyFromStarryView(),
            )
          ],
        ),
      ),
    );
  }
}
