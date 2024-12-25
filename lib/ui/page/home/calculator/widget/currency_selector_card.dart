import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kur_hesapla/app/enum/currency_type.dart';
import 'package:uikit/utility/constant/padding/extension/padding_extension.dart';
import 'package:uikit/utility/extension/context_extension.dart';
import 'package:uikit/utility/extension/spacer_extension.dart';

class CurrencySelectorCard extends StatelessWidget {
  const CurrencySelectorCard({
    required this.focusNode,
    required this.controller,
    required this.currencyType,
    required this.onPressed,
    super.key,
  });

  final FocusNode focusNode;
  final TextEditingController controller;
  final CurrencyType currencyType;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(context.baseRadius.medium),
        side: BorderSide(
          color: focusNode.hasFocus
              ? context.colorScheme.secondary
              : Colors.transparent,
        ),
      ),
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
              ),
            ),
            SizedBox(
              height: context.dynamicWidth(context.baseScale.small),
              child: VerticalDivider(
                color: context.colorScheme.primary,
              ),
            ),
            TextButton(
              // onTap: onTap,
              onPressed: onPressed,
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
}
