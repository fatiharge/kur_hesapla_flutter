import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CalculatorShimmer extends StatelessWidget {
  const CalculatorShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            width: double.infinity,
            height: 50.0,
            color: Colors.grey[300],
          ),
        ),
        SizedBox(height: 16),
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            width: double.infinity,
            height: 50.0,
            color: Colors.grey[300],
          ),
        ),
        SizedBox(height: 16),
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            width: double.infinity,
            height: 50.0,
            color: Colors.grey[300],
          ),
        ),
      ],
    );
  }
}
