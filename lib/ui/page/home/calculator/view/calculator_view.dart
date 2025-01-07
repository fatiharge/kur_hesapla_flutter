import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kur_hesapla/app/enum/currency_type.dart';
import 'package:kur_hesapla/app/extension/date_extension.dart';
import 'package:kur_hesapla/app/mapper/currency_type_mapper.dart';
import 'package:kur_hesapla/ui/page/home/calculator/bloc/calculator_bloc.dart';
import 'package:kur_hesapla/ui/page/home/calculator/widget/currency_info.dart';
import 'package:kur_hesapla/ui/page/home/calculator/widget/currency_selector_card.dart';
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
          child: BlocBuilder<CalculatorBloc, CalculatorState>(
            builder: (context, state) {
              if (state is CalculatorLoaded) {
                currencyController.value =
                    TextEditingValue(text: state.currencyValue);
                calculatedCurrencyController.value =
                    TextEditingValue(text: state.calculatedValue);
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    context.pagePadding.medium.spacer,
                    CurrencyInfo(
                      currencyType: state.currencyType,
                      calculatedType: state.calculatedType,
                      rate: state.rate.toStringAsFixed(4),
                      time: state
                          .findLatestResponse.meta!.createdDate!.toLocaleString,
                    ),
                    context.pagePadding.medium.spacer,
                    CurrencySelectorCard(
                      controller: currencyController,
                      focusNode: focusNode,
                      onChanged: (value) => context.read<CalculatorBloc>().add(
                            CalculatorEvent.setCurrencyValue(value: value),
                          ),
                      currencyType: state.currencyType,
                    ),
                    context.itemPadding.medium.spacer,
                    CurrencySelectorCard(
                      controller: calculatedCurrencyController,
                      focusNode: focusNodeCalculated,
                      onChanged: (value) => context.read<CalculatorBloc>().add(
                            SetCalculatedCurrencyValue(value: value),
                          ),
                      currencyType: state.calculatedType,
                      isCalculated: true,
                    ),
                    context.itemPadding.large.spacer,
                    _buildResultCard(context, state),
                    context.itemPadding.small.spacer,
                    _buildSaveRateCard(context, state),
                    context.itemPadding.xLarge.spacer,
                    Text(
                      'Other Currency',
                      style: context.textTheme.headlineSmall,
                    ),
                    Expanded(child: _buildOtherCurrenciesList(context, state)),
                  ],
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }

  Widget _buildResultCard(BuildContext context, CalculatorLoaded state) {
    return Card(
      child: ListTile(
        title: Text('${state.currencyValue} ${state.currencyType.name} = '
            '${state.calculatedValue} ${state.calculatedType.name}'),
      ),
    );
  }

  Widget _buildSaveRateCard(BuildContext context, CalculatorLoaded state) {
    return Card(
      color: Theme.of(context).colorScheme.secondary,
      child: ListTile(
        title: Text(
          'Save Rate',
          style: context.textTheme.bodyLarge?.copyWith(
            color: context.colorScheme.onSecondary,
          ),
        ),
        trailing: ElevatedButton(
          statesController: WidgetStatesController(
            {if (state.isMarked) WidgetState.selected else WidgetState.hovered},
          ),
          onPressed: () => _markedButtonOnPressed(context, state),
          child: Icon(
            state.isMarked
                ? Icons.bookmark_rounded
                : Icons.bookmark_add_outlined,
          ),
        ),
      ),
    );
  }

  void _markedButtonOnPressed(BuildContext context, CalculatorLoaded state) {
    final event = state.isMarked
        ? CalculatorEvent.removeMarkedCurrency(id: state.markedId!)
        : CalculatorEvent.putMarkedCurrency(calculatorLoadedState: state);
    context.read<CalculatorBloc>().add(event);
  }

  Widget _buildOtherCurrenciesList(
    BuildContext context,
    CalculatorLoaded state,
  ) {
    return ListView.builder(
      itemCount: CurrencyType.values.length,
      itemBuilder: (context, index) {
        final currency = CurrencyType.values[index];
        return _buildCurrencyCard(context, currency, state);
      },
    );
  }

  Widget _buildCurrencyCard(
    BuildContext context,
    CurrencyType currency,
    CalculatorLoaded state,
  ) {
    final calculatedCurrencyName = currency.getLocaleKey.tr();
    final currencyDollarRate =
        currency.findValue(state.findLatestResponse.data!);
    final stateDollarRate =
        state.currencyType.findValue(state.findLatestResponse.data!);
    final pVal = currencyDollarRate / stateDollarRate;

    return Padding(
      padding: context.itemPadding.xSmall.paddingSymmetricVertical,
      child: Card(
        child: ListTile(
          leading: Text(currency.name),
          title: Text('1 ${state.currencyType.name} = '
              '${pVal.toStringAsFixed(2)} $calculatedCurrencyName'),
        ),
      ),
    );
  }
}
