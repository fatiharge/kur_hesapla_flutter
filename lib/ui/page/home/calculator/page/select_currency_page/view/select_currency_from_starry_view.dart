import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kur_hesapla/app/mapper/currency_type_mapper.dart';
import 'package:kur_hesapla/ui/page/home/calculator/page/select_currency_page/bloc/select_currency_from_starry/select_starry_cubit.dart';
import 'package:kur_hesapla/ui/route/selector_extension.dart';
import 'package:uikit/utility/constant/padding/extension/padding_extension.dart';
import 'package:uikit/utility/extension/context_extension.dart';

class SelectCurrencyFromStarryView extends StatelessWidget {
  const SelectCurrencyFromStarryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: context.pagePadding.small.paddingSymmetricHorizontal,
      child: BlocBuilder<SelectStarryCubit, SelectStarryState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.starryCurrenciesList.length,
            itemBuilder: (context, index) {
              final starryCurrencies = state.starryCurrenciesList[index];
              return Padding(
                padding: context.itemPadding.small.paddingSymmetricVertical,
                child: Card(
                  child: ListTile(
                    leading: starryCurrencies.fCurrencyType.getSvgGenImage !=
                            null
                        ? starryCurrencies.fCurrencyType.getSvgGenImage!.svg()
                        : Card(
                            child: Padding(
                              padding: context.itemPadding.xSmall.paddingAll,
                              child: Text(
                                starryCurrencies.fCurrencyType.name,
                                style: context.textTheme.bodySmall?.copyWith(
                                    color: context.colorScheme.onPrimary),
                              ),
                            ),
                            color: context.colorScheme.primary,
                          ),
                    trailing: starryCurrencies.sCurrencyType.getSvgGenImage !=
                            null
                        ? starryCurrencies.sCurrencyType.getSvgGenImage!.svg()
                        : Card(
                            child: Padding(
                              padding: context.itemPadding.xSmall.paddingAll,
                              child: Text(
                                starryCurrencies.sCurrencyType.name,
                                style: context.textTheme.bodySmall?.copyWith(
                                    color: context.colorScheme.onPrimary),
                              ),
                            ),
                            color: context.colorScheme.primary,
                          ),
                    title: Center(
                      child: Text(
                        '${starryCurrencies.fCurrencyType.name} & '
                        '${starryCurrencies.sCurrencyType.name}',
                      ),
                    ),
                    onTap: () => context.maybePop(
                      SelectorExtensionModel(
                        starryCurrencies: starryCurrencies,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
