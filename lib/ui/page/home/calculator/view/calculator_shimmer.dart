import 'package:flutter/material.dart';
import 'package:uikit/ui/atoms/layout/shimmer_layout/view/shimmer_layout_view.dart';
import 'package:uikit/ui/molecules/shimmer/shimmer_row/view/shimmer_row_view.dart';
import 'package:uikit/utility/extension/context_extension.dart';
import 'package:uikit/utility/extension/spacer_extension.dart';

class CalculatorShimmer extends StatelessWidget {
  const CalculatorShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ShimmerLayout(
      children: [
        const ShimmerRow(
          height: 70,
          flexRates: [3, 2],
        ),
        context.itemPadding.medium.spacer,
        const ShimmerRow(
          height: 150,
          flexRates: [2, 1],
        ),
        context.itemPadding.large.spacer,
        const ShimmerRow(
          height: 60,
          flexRates: [0, 1],
        ),
        context.itemPadding.small.spacer,
        const ShimmerRow(
          height: 98,
          flexRates: [1, 3],
        ),
        const ShimmerRow(
          height: 120,
          flexRates: [2, 1, 3],
        ),
        context.itemPadding.medium.spacer,
        const ShimmerRow(
          height: 55,
          flexRates: [3, 0, 2],
        ),
        const ShimmerRow(
          height: 20,
          flexRates: [0, 1],
        ),
        context.itemPadding.small.spacer,
        const ShimmerRow(
          height: 40,
          flexRates: [1, 1, 1, 2],
        ),
        context.itemPadding.xLarge.spacer,
        const ShimmerRow(
          height: 70,
          flexRates: [3, 2],
        ),
      ],
    );
  }
}
