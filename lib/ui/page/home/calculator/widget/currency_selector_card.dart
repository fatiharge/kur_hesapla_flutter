import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:kur_hesapla/app/enum/currency_type.dart';
import 'package:kur_hesapla/ui/page/home/calculator/bloc/calculator_bloc.dart';
import 'package:kur_hesapla/ui/route/route_manager.dart';
import 'package:kur_hesapla/ui/route/route_manager.gr.dart';
import 'package:uikit/utility/constant/padding/extension/padding_extension.dart';
import 'package:uikit/utility/extension/context_extension.dart';
import 'package:uikit/utility/extension/spacer_extension.dart';

class CurrencySelectorCard extends StatelessWidget {
  const CurrencySelectorCard({
    required this.focusNode,
    required this.controller,
    required this.currencyType,
    this.onChanged,
    this.isCalculated = false,
    super.key,
    this.initialValue,
  });

  final FocusNode focusNode;
  final String? initialValue;
  final bool isCalculated;
  final TextEditingController? controller;
  final CurrencyType currencyType;
  final void Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: context.itemPadding.medium.paddingSymmetricVertical,
        child: Row(
          children: [
            context.itemPadding.xLarge.spacerHorizontal,
            Expanded(
              child: TextFormField(
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(
                    RegExp(r'^\d+\.?\d{0,2}'),
                  ),
                ],
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
                focusNode: focusNode,
                controller: controller,
                initialValue: initialValue,
                onChanged: onChanged,
              ),
            ),
            SizedBox(
              height: context.dynamicWidth(context.baseScale.small),
              child: VerticalDivider(
                color: context.colorScheme.primary,
              ),
            ),
            TextButton(
              onPressed: () => selectCurrency(
                context: context,
                isCalculated: isCalculated,
              ),
              child: Center(
                child: Text(
                  currencyType.name,
                ),
              ),
            ),
            context.itemPadding.medium.spacerHorizontal,
          ],
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
