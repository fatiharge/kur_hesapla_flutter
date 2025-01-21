import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get_it/get_it.dart';
import 'package:kur_hesapla/app/extension/date_extension.dart';
import 'package:kur_hesapla/app/mapper/currency_type_mapper.dart';

import 'package:kur_hesapla/ui/page/home/calculator/bloc/calculator_bloc.dart';
import 'package:kur_hesapla/ui/page/home/calculator/view/calculator_state_cm.dart';
import 'package:kur_hesapla/ui/page/home/calculator/widget/currency_delta_list/view/currency_delta_list_view.dart';
import 'package:kur_hesapla/ui/page/home/calculator/widget/currency_info.dart';
import 'package:kur_hesapla/ui/page/home/calculator/widget/marked_currency/bloc/marked_currency_bloc.dart';
import 'package:kur_hesapla/ui/page/home/calculator/widget/marked_currency/marked_currency_view.dart';
import 'package:kur_hesapla/ui/page/home/calculator/widget/starry_currency/starry_currency_view.dart';
import 'package:kur_hesapla/ui/page/home/calculator/widget/starry_currency/bloc/starry_currency_bloc.dart';

import 'package:kur_hesapla/ui/widget/card/flagged_item_selector_card.dart';
import 'package:uikit/ui/atoms/animated/slide_fade_switcher/view/slide_fade_switcher_view.dart';
import 'package:uikit/utility/constant/padding/extension/padding_extension.dart';
import 'package:uikit/utility/extension/context_extension.dart';
import 'package:uikit/utility/extension/spacer_extension.dart';
import 'package:uikit/utility/extension/text_input_formatter_extension.dart';

class CalculatorView extends StatelessWidget {
  CalculatorView({super.key});

  final currencyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: context.pagePadding.small.paddingSymmetricHorizontal,
          child: ListView(
            children: [
              BlocBuilder<CalculatorBloc, CalculatorState>(
                builder: (calculatorContext, calculatorState) {
                  if (calculatorState is CalculatorLoaded) {
                    currencyController.value =
                        TextEditingValue(text: calculatorState.currencyValue);
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        context.pagePadding.medium.spacer,
                        CurrencyInfo(
                          currencyType: calculatorState.currencyType,
                          calculatedType: calculatorState.calculatedType,
                          currencyValue: calculatorState.currencyValue,
                          calculatedValue: calculatorState.calculatedValue,
                          time: calculatorState.findLatestResponse.meta!
                              .createdDate!.toLocaleString,
                        ),
                        context.pagePadding.medium.spacer,
                        _buildAmountField(context, currencyController),
                        _buildCurrencySelectStack(context, calculatorState),
                        context.itemPadding.large.spacer,
                      ],
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
              context.itemPadding.medium.spacer,
              Text(
                'Kur Degisimleri',
                style: context.textTheme.headlineSmall,
              ),
              context.itemPadding.medium.spacer,
              SizedBox(
                height: context.cardSize.xLarge,
                child: CurrencyDeltaListView(),
              ),
              context.pagePadding.xLarge.spacer,
              context.pagePadding.xLarge.spacer,
            ],
          ),
        ),
      ),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  Widget _buildFloatingActionButton() {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, calculatorState) {
        if (calculatorState is CalculatorLoaded) {
          return SpeedDial(
            animatedIcon: AnimatedIcons.menu_close,
            visible: true,
            curve: Curves.bounceIn,
            spaceBetweenChildren: context.itemPadding.medium,
            children: [
              SpeedDialChild(
                child: BlocProvider(
                  create: (context) => GetIt.instance<MarkedCurrencyBloc>(),
                  child: MarkedCurrencyView(
                    calculatorLoaded: calculatorState,
                  ),
                ),
                label: 'Save Rate',
              ),
              SpeedDialChild(
                child: BlocProvider(
                  create: (context) => GetIt.instance<StarryCurrencyBloc>()
                    ..add(
                      StarryCurrencyEvent.init(
                        currencyType: calculatorState.currencyType,
                        calculatedCurrencyType: calculatorState.calculatedType,
                      ),
                    ),
                  child: StarryCurrencyView(
                    calculatedCurrencyType: calculatorState.calculatedType,
                    currencyType: calculatorState.currencyType,
                  ),
                ),
                label: 'Add Favorite',
              ),
            ],
          );
        }
        return SizedBox();
      },
    );
  }

  SizedBox _buildCurrencySelectStack(
      BuildContext context, CalculatorLoaded calculatorState) {
    return SizedBox(
      height: context.cardSize.large * 2.3,
      child: Stack(
        children: [
          Column(
            children: [
              SlideFadeSwitcherView(
                duration: context.baseDuration.small.toInt(),
                child: FlaggedItemSelectorCard(
                  key: ValueKey(calculatorState.currencyType.name),
                  title: 'From',
                  text: calculatorState.currencyType.name,
                  secondText: calculatorState.currencyType.getLocaleKey.tr(),
                  onPressed: () =>
                      calculatorState.selectCurrency(context: context),
                  flag: calculatorState.currencyType.getSvgGenImage?.svg(),
                  flagName: calculatorState.currencyType.name,
                ),
              ),
              SlideFadeSwitcherView(
                duration: context.baseDuration.small.toInt(),
                offset: const Offset(0, -1),
                child: FlaggedItemSelectorCard(
                  key: ValueKey(calculatorState.calculatedType.name),
                  title: 'To',
                  text: calculatorState.calculatedType.name,
                  secondText: calculatorState.calculatedType.getLocaleKey.tr(),
                  onPressed: () => calculatorState.selectCurrency(
                      context: context, isCalculated: true),
                  flag: calculatorState.calculatedType.getSvgGenImage?.svg(),
                  flagName: calculatorState.calculatedType.name,
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: context.itemPadding.large.paddingAll,
              ),
              onPressed: () {
                context.read<CalculatorBloc>().add(ChangeCurrency());
              },
              child: Icon(
                Icons.swap_vert_outlined,
                size: context.iconSize.large,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildAmountField(
      BuildContext context, TextEditingController textEditingController) {
    return Padding(
      padding: context.itemPadding.medium.paddingSymmetricVertical,
      child: Card(
        child: Padding(
          padding: context.itemPadding.medium.paddingAll,
          child: Center(
            child: TextFormField(
              style: context.textTheme.titleLarge,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              inputFormatters: context.numericWithTwoDecimals,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Amount',
              ),
              controller: textEditingController,
              onChanged: (value) => context.read<CalculatorBloc>().add(
                    CalculatorEvent.setCurrencyValue(
                      value: value,
                    ),
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
