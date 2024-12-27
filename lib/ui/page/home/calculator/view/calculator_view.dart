import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:kur_hesapla/app/enum/currency_type.dart';
import 'package:kur_hesapla/app/extension/date_extension.dart';
import 'package:kur_hesapla/ui/extension/base_state_extension.dart';
import 'package:kur_hesapla/ui/page/home/calculator/bloc/calculator_bloc.dart';
import 'package:kur_hesapla/ui/page/home/calculator/view/calculator_shimmer.dart';
import 'package:kur_hesapla/ui/page/home/calculator/widget/currency_info.dart';
import 'package:kur_hesapla/ui/page/home/calculator/widget/currency_selector_card.dart';

import 'package:kur_hesapla/ui/route/route_manager.dart';
import 'package:kur_hesapla/ui/route/route_manager.gr.dart';
import 'package:uikit/utility/constant/padding/extension/padding_extension.dart';
import 'package:uikit/utility/extension/context_extension.dart';
import 'package:uikit/utility/extension/spacer_extension.dart';

class CalculatorView extends StatelessWidget {
  CalculatorView({super.key});

  final FocusNode focusNode = FocusNode();
  final FocusNode focusNodeCalculated = FocusNode();
  final currencyController = TextEditingController();
  final calculatedCurrencyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: context.pagePadding.small.paddingSymmetricHorizontal,
          child: context.buildWithState<CalculatorBloc, CalculatorState>(
            loadingWidget: const CalculatorShimmer(),
            refreshEvent: const Refresh(),
            builderWrapper: (context, state) {
              if (state is CalculatorLoaded) {
                currencyController.value = TextEditingValue(
                  text: state.currencyValue,
                );

                calculatedCurrencyController.value = TextEditingValue(
                  text: state.calculatedValue,
                );

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    context.pagePadding.medium.spacer,
                    CurrencyInfo(
                      currencyType: state.currencyType,
                      calculatedType: state.calculatedType,
                      rate: state.rate.toStringAsFixed(4),
                      time: state
                          .findLatestResponse.meta!.createdDate!.toLocaleString,
                    ),
                    context.pagePadding.large.spacer,
                    CurrencySelectorCard(
                      controller: currencyController,
                      focusNode: focusNode,
                      onChanged: (value) {
                        final event =
                            CalculatorEvent.setCurrencyValue(value: value);
                        context.read<CalculatorBloc>().add(event);
                      },
                      currencyType: state.currencyType,
                      onPressed: () => selectCurrency(context: context),
                    ),
                    context.itemPadding.large.spacer,
                    CurrencySelectorCard(
                      controller: calculatedCurrencyController,
                      focusNode: focusNodeCalculated,
                      onChanged: (value) {
                        final event = SetCalculatedCurrencyValue(
                          value: value,
                        );
                        context.read<CalculatorBloc>().add(event);
                      },
                      currencyType: state.calculatedType,
                      onPressed: () => selectCurrency(
                        context: context,
                        isCalculated: true,
                      ),
                    ),
                    context.itemPadding.xLarge.spacer,
                    Card(
                      child: ListTile(
                        // ignore: prefer_adjacent_string_concatenation
                        title: Text('${state.currencyValue} '
                            '${state.currencyType.name} = '
                            '${state.calculatedValue} '
                            '${state.calculatedType.name}'),
                      ),
                    ),
                    context.itemPadding.medium.spacer,
                    Card(
                      color: Theme.of(context).colorScheme.secondary,
                      child: ListTile(
                        title: Text(
                          "Save Rate",
                          style: context.textTheme.bodyLarge?.copyWith(
                              color: context.colorScheme.onSecondary),
                        ),
                        // trailing: MarkedButton<MarkedModel>(
                        //   box: Hive.box<MarkedModel>(MarkedModel.name),
                        //   model: MarkedModel.createId(
                        //     currencyType: currencyType.name,
                        //     calculatedCurrencyType: calculatedType.name,
                        //     currencyName: currencyType.getCurrencyTypeName(),
                        //     calculatedCurrencyName: calculatedType.getCurrencyTypeName(),
                        //     currencyValue: currencyController.value.text,
                        //     calculatedCurrencyValue: calculatedCurrencyController.value.text,
                        //     currencyPrice:
                        //     mapCurrency[currencyType]?.data?.getValue(calculatedType)?.toStringAsFixed(2) ??
                        //         "Error",//TODO
                        //     date: TimeManager.now().removeHours(),
                        //   ),
                        // ),
                      ),
                    ),
                    context.itemPadding.xLarge.spacer,
                    Text(
                      "Other Currency", //TODO
                      style: context.textTheme.headlineSmall,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: CurrencyType.values.length,
                        itemBuilder: (context, index) {
                          final currency = CurrencyType.values.elementAt(index);

                          final calculatedCurrencyName =
                              currency.getCurrencyTypeName();

                          final currencyDollarRate = double.tryParse(
                                currency.findValue(state.findLatestResponse),
                              ) ??
                              0;

                          final stateDollarRate = double.tryParse(
                                state.currencyType
                                    .findValue(state.findLatestResponse),
                              ) ??
                              0;

                          final pVal = currencyDollarRate / stateDollarRate;
                          return Padding(
                            padding: context
                                .itemPadding.small.paddingSymmetricVertical,
                            child: Card(
                              child: ListTile(
                                leading: Text(currency.name),
                                title: Text('1 ${state.currencyType.name} = '
                                    '${pVal.toStringAsFixed(2)} '
                                    '$calculatedCurrencyName'),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                );
              }
              return const Placeholder();
            },
          ),
        ),
      ),
    );
  }

  Future<void> selectCurrency({
    required BuildContext context,
    bool isCalculated = false,
  }) async {
    final routeManager = GetIt.instance<RouteManager>();

    final currencyType =
        await routeManager.push<CurrencyType>(const SelectCurrencyRoute());
    if (currencyType != null && context.mounted) {
      final event = isCalculated
          ? CalculatorEvent.setCalculatedCurrency(
              currencyType: currencyType,
            )
          : CalculatorEvent.setCurrentCurrency(
              currencyType: currencyType,
            );

      context.read<CalculatorBloc>().add(event);
    }
  }
}
