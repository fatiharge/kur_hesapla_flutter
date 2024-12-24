import 'package:flutter/material.dart';
import 'package:kur_hesapla/ui/extension/base_state_extension.dart';
import 'package:kur_hesapla/ui/page/home/calculator/bloc/calculator_bloc.dart';
import 'package:kur_hesapla/ui/page/home/calculator/view/calculator_shimmer.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: context.buildWithState<CalculatorBloc, CalculatorState>(
            loadingWidget: const CalculatorShimmer(),
            refreshEvent: RefreshEvent(),
            builderWrapper: (context, state) {
              return const Text('data');
            },
          ),
        ),
      ),
    );
  }
}
