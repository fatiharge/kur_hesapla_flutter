import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kur_hesapla/generated/locale_keys.g.dart';
import 'package:kur_hesapla/ui/page/home/calculator/select_currency_page/bloc/select_currency_cubit.dart';
import 'package:uikit/utility/constant/padding/extension/padding_extension.dart';
import 'package:uikit/utility/extension/context_extension.dart';
import 'package:uikit/utility/extension/spacer_extension.dart';

class SelectCurrencyView extends StatelessWidget {
  const SelectCurrencyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.select_currency_title.tr(),
          style: context.textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: context.pagePadding.small.paddingSymmetricHorizontal,
        child: Column(
          children: [
            context.itemPadding.medium.spacer,
            TextField(
              onChanged: (query) =>
                  context.read<SelectCurrencyCubit>().searchQueryChanged(query),
              decoration: InputDecoration(
                labelText: LocaleKeys.general_search.tr(),
                border: const OutlineInputBorder(),
              ),
            ),
            Expanded(
              child: BlocBuilder<SelectCurrencyCubit, SelectCurrencyState>(
                builder: (context, state) {
                  final currencyTypes = state.filteredCurrencyTypes;
                  return ListView.builder(
                    itemCount: currencyTypes.length,
                    itemBuilder: (context, index) {
                      final currencyType = currencyTypes[index];
                      return Padding(
                        padding:
                            context.itemPadding.small.paddingSymmetricVertical,
                        child: Card(
                          child: ListTile(
                            title: Text(
                              '${currencyType.name} · '
                              '${currencyType.getLocaleKey.tr()}',
                            ),
                            onTap: () =>
                                Navigator.of(context).pop(currencyType),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
