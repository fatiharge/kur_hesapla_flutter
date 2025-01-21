import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:uikit/utility/constant/padding/extension/padding_extension.dart';
import 'package:uikit/utility/extension/context_extension.dart';
import 'package:uikit/utility/extension/spacer_extension.dart';

class SelectableInputFieldWidget extends StatelessWidget {
  const SelectableInputFieldWidget({
    required this.controller,
    required this.cardText,
    required this.iconOnPressed,
    this.onChanged,
    super.key,
    this.textInputType, this.textInputFormatterList,
  });

  final TextEditingController? controller;
  final String cardText;
  final void Function(String value)? onChanged;
  final void Function() iconOnPressed;

  final TextInputType? textInputType;
  final List<TextInputFormatter>? textInputFormatterList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.itemPadding.medium.paddingSymmetricVertical,
      child: Row(
        children: [
          Expanded(
            child: Card(
              child: SizedBox(
                height: context.cardSize.medium,
                child: Center(
                  child: TextFormField(
                    style: context.textTheme.titleLarge,
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: textInputFormatterList,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefix: context.itemPadding.large.spacerHorizontal,
                    ),
                    controller: controller,
                    onChanged: onChanged,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: context.dynamicWidth(context.baseScale.small),
            child: VerticalDivider(
              width: context.itemPadding.medium,
            ),
          ),
          Card(
            child: SizedBox(
              height: context.cardSize.medium,
              child: Row(
                children: [
                  context.pagePadding.small.spacerHorizontal,
                  Card(
                    color: context.colorScheme.primary,
                    child: Padding(
                      padding: context.itemPadding.small.paddingAll,
                      child: Text(
                        cardText,
                        style: context.textTheme.titleSmall?.copyWith(
                          color: context.colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: iconOnPressed,
                    icon: const Icon(Icons.arrow_drop_down),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
