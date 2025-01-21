import 'package:flutter/material.dart';

import 'package:uikit/utility/constant/padding/extension/padding_extension.dart';
import 'package:uikit/utility/extension/context_extension.dart';

class FlaggedItemSelectorCard extends StatelessWidget {
  const FlaggedItemSelectorCard({
    required this.title,
    this.flag,
    this.flagName,
    required this.text,
    required this.secondText,
    required this.onPressed,
    super.key,
  });

  final String title;
  final Widget? flag;
  final String text;
  final String? flagName;
  final String secondText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: ListTile(
          minTileHeight: context.cardSize.large,
          onTap: onPressed,
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              flag != null
                  ? flag!
                  : Card(
                      child: Padding(
                        padding: context.itemPadding.xSmall.paddingAll,
                        child: Text(
                          flagName!,
                          style: context.textTheme.bodySmall
                              ?.copyWith(color: context.colorScheme.onPrimary),
                        ),
                      ),
                      color: context.colorScheme.primary,
                    )
            ],
          ),
          title: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: text,
                  style: context.textTheme.titleLarge,
                ),
                TextSpan(
                  text: ' - ',
                  style: context.textTheme.bodyMedium,
                ),
                TextSpan(
                  text: secondText,
                  style: context.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          trailing: IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.arrow_drop_down),
          ),
        ),
      ),
    );
  }
}
