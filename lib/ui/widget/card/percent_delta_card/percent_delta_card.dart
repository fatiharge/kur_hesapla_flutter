import 'package:flutter/material.dart';
import 'package:kur_hesapla/app/constant/color_constant.dart';
import 'package:kur_hesapla/ui/widget/card/percent_delta_card/percent_delta_card_state.dart';
import 'package:uikit/utility/constant/padding/extension/padding_extension.dart';
import 'package:uikit/utility/extension/context_extension.dart';
import 'package:uikit/utility/extension/spacer_extension.dart';

class PercentDeltaCard extends StatelessWidget {
  const PercentDeltaCard(
      {super.key,
      required this.shortName,
      required this.name,
      required this.content,
      required this.percent,
      required this.state,
      this.onPress});

  final PercentDeltaCardState state;
  final String shortName;
  final String name;
  final String content;
  final String percent;
  final Widget? onPress;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: context.cardSize.xLarge,
        child: Padding(
          padding: context.itemPadding.medium.paddingAll,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: context.itemPadding.xSmall,
                    horizontal: context.itemPadding.medium,
                  ),
                  child: Text(
                    shortName,
                    style: context.textTheme.labelMedium?.copyWith(
                      color: context.colorScheme.onPrimary,
                    ),
                  ),
                ),
                color: context.colorScheme.primary,
              ),
              context.itemPadding.small.spacer,
              Text(
                name,
                style: context.textTheme.labelLarge,
              ),
              Spacer(),
              Text(
                content,
                style: context.textTheme.titleLarge,
              ),
              context.itemPadding.small.spacer,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: context.itemPadding.medium,
                        horizontal: context.itemPadding.large,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            icon,
                            color: onPrimaryColor(context),
                          ),
                          context.itemPadding.small.spacerHorizontal,
                          Text(
                            '%' + percent,
                            style: context.textTheme.titleMedium
                                ?.copyWith(color: onPrimaryColor(context)),
                          ),
                        ],
                      ),
                    ),
                    color: primaryColor(context),
                  ),
                  if (onPress != null) onPress!
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color primaryColor(BuildContext context) =>
      state == PercentDeltaCardState.positive
          ? ColorConstant.brightGray
          : state == PercentDeltaCardState.negative
              ? ColorConstant.mistyRose
              : context.colorScheme.secondary;

  Color onPrimaryColor(BuildContext context) =>
      state == PercentDeltaCardState.positive
          ? ColorConstant.laSalleGreen
          : state == PercentDeltaCardState.negative
              ? ColorConstant.rubyRed
              : context.colorScheme.onSecondary;

  IconData get icon => state == PercentDeltaCardState.positive
      ? Icons.arrow_upward
      : state == PercentDeltaCardState.negative
          ? Icons.arrow_downward
          : Icons.mode_standby;
}
