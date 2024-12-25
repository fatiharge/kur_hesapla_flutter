import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kur_hesapla/app/enum/currency_type.dart';
import 'package:kur_hesapla/ui/extension/base_state_extension.dart';
import 'package:kur_hesapla/ui/page/home/calculator/bloc/calculator_bloc.dart';
import 'package:kur_hesapla/ui/page/home/calculator/view/calculator_shimmer.dart';
import 'package:kur_hesapla/ui/page/home/calculator/widget/currency_info.dart';
import 'package:kur_hesapla/ui/page/home/calculator/widget/currency_selector_card.dart';
import 'package:uikit/utility/constant/padding/extension/padding_extension.dart';
import 'package:uikit/utility/extension/context_extension.dart';
import 'package:uikit/utility/extension/spacer_extension.dart';

class CalculatorView extends StatelessWidget {
  CalculatorView({
    super.key,
  });

  final FocusNode focusNode = FocusNode();
  final FocusNode focusNodeCalculated = FocusNode();

  final TextEditingController currencyController = TextEditingController();
  final TextEditingController calculatedCurrencyController =
      TextEditingController();

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
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    context.pagePadding.medium.spacer,
                    CurrencyInfo(
                      currencyType: state.currencyType,
                      calculatedType: state.calculatedType,
                      findLatestResponse: state.findLatestResponse,
                    ),
                    context.pagePadding.medium.spacer,
                    CurrencySelectorCard(
                      focusNode: focusNode,
                      controller: currencyController,
                      currencyType: state.currencyType,
                      onPressed: () {
                        selectCurrency(
                          context: context,
                          f: (ct) {
                            if (ct != null) {
                              context.read<CalculatorBloc>().add(
                                    CalculatorEvent.setCurrentCurrency(
                                      currencyType: ct,
                                    ),
                                  );
                            }
                          },
                        );
                      },
                    ),
                    context.itemPadding.medium.spacer,
                    CurrencySelectorCard(
                      focusNode: focusNodeCalculated,
                      controller: calculatedCurrencyController,
                      currencyType: state.calculatedType,
                      onPressed: () {
                        selectCurrency(
                          context: context,
                          f: (ct) {
                            if (ct != null) {
                              context.read<CalculatorBloc>().add(
                                    CalculatorEvent.setCalculatedCurrency(
                                      currencyType: ct,
                                    ),
                                  );
                            }
                          },
                        );
                      },
                    ),
                    context.itemPadding.medium.spacer,
                    Card(
                      child: ListTile(
                        // ignore: prefer_adjacent_string_concatenation
                        title: Text(
                            state.findLatestResponse.meta?.baseCurrency ?? ''),
                      ),
                    ),
                    // const AppSpacing(),
                    Card(
                      color: Theme.of(context).colorScheme.secondary,
                      child: const ListTile(
                        title: Text("Save Rate"),
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
                    // Padding(
                    //   padding: context.paddingLowVertical,
                    //   child: Text(
                    //     "Other Currency",//TODO
                    //     style: context.textTheme.headlineSmall,
                    //   ),
                    // ),
                    // ConversionRateListWidget(
                    //   mapCurrency: mapCurrency,
                    //   currencyType: currencyType,
                    // ),
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

  void selectCurrency({
    required BuildContext context,
    required void Function(CurrencyType? ct) f,
  }) {
    showModalBottomSheet<CurrencyType>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (BuildContext context) => const SelectCurrency(),
    ).then(f);
  }
}

class SelectCurrency extends StatelessWidget {
  const SelectCurrency({super.key});

  @override
  Widget build(BuildContext context) {
    const currencyTypes = CurrencyType.values;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Select Currency",
          style: context.textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: context.pagePadding.small.paddingSymmetricHorizontal,
        child: ListView.builder(
          itemCount: currencyTypes.length,
          itemBuilder: (context, index) {
            final currencyType = currencyTypes[index];

            return Padding(
              padding: context.itemPadding.medium.paddingSymmetricVertical,
              child: Card(
                child: ListTile(
                  title: Text(
                      '${currencyType.name} · ${currencyType.getCurrencyTypeName()}'),
                  onTap: () => Navigator.of(context).pop(currencyType),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
