import 'package:flutter/material.dart';
import 'package:uikit/ui/atoms/layout/shimmer_layout/view/shimmer_layout_view.dart';
import 'package:uikit/ui/atoms/shimmer/shimmer_container/view/shimmer_container_view.dart';
import 'package:uikit/ui/molecules/shimmer/shimmer_row_list/view/shimmer_row_list_view.dart';
import 'package:uikit/utility/constant/padding/extension/padding_extension.dart';
import 'package:uikit/utility/extension/context_extension.dart';
import 'package:uikit/utility/extension/spacer_extension.dart';

class CalculatorShimmer extends StatelessWidget {
  const CalculatorShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: context.pagePadding.small.paddingSymmetricHorizontal,
          child: ShimmerLayout(
            children: [
              //info
              context.pagePadding.medium.spacer,
              ShimmerContainer(
                height: context.itemSize.small,
                width: context.dynamicWidth(context.widthScale.medium),
              ),
              context.itemPadding.medium.spacer,
              ShimmerContainer(
                height: context.itemSize.large,
                width: context.dynamicWidth(context.widthScale.large),
              ),
              context.itemPadding.medium.spacer,
              ShimmerContainer(
                height: context.itemSize.small,
                width: context.dynamicWidth(context.widthScale.xLarge),
              ),
              // fields
              context.itemPadding.xLarge.spacer,
              context.itemPadding.medium.spacer,
              ShimmerContainer(height: context.cardSize.medium),
              context.itemPadding.xLarge.spacer,
              ShimmerContainer(height: context.cardSize.medium),
              context.itemPadding.xLarge.spacer,
              context.itemPadding.medium.spacer,

              // buttons

              ShimmerContainer(height: context.cardSize.small),
              context.itemPadding.medium.spacer,
              ShimmerContainer(height: context.cardSize.small),
              context.itemPadding.xLarge.spacer,

              // text
              ShimmerContainer(
                height: context.itemSize.large,
                width: context.dynamicWidth(context.widthScale.large),
              ),
              context.itemPadding.medium.spacer,
              ShimmerRowList(
                height: context.cardSize.medium,
                flexRates: const [1],
                count: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
