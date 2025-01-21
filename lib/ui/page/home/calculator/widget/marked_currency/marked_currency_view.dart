import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:kur_hesapla/app/adapter/marked_currency_adapter.dart';
import 'package:kur_hesapla/ui/page/home/calculator/bloc/calculator_bloc.dart';
import 'package:kur_hesapla/ui/page/home/calculator/widget/marked_currency/bloc/marked_currency_bloc.dart';

class MarkedCurrencyView extends StatelessWidget {
  final CalculatorLoaded? calculatorLoaded;

  const MarkedCurrencyView({super.key, required this.calculatorLoaded});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MarkedCurrencyBloc, MarkedCurrencyState>(
      builder: (context, state) {
        return IconButton(
          // statesController: WidgetStatesController(
          //   {
          //     if (state is Selected)
          //       WidgetState.selected
          //     else
          //       WidgetState.hovered,
          //   },
          // ),
          onPressed: () {
            final adapter = GetIt.instance<MarkedCurrencyAdapter>();
            final event = (state is Selected)
                ? MarkedCurrencyEvent.diSelect(id: state.id)
                : MarkedCurrencyEvent.select(
                    markedCurrency:
                        adapter.calculatorLoadedAdaptee(calculatorLoaded!),
                  );
            context.read<MarkedCurrencyBloc>().add(event);
          },
          // label: const Text('Save Rate'),
          icon: Icon(
            (state is Selected)
                ? Icons.bookmark_rounded
                : Icons.bookmark_add_outlined,
          ),
        );
      },
    );
  }
}
