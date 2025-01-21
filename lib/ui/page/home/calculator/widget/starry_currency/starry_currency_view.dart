import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kur_hesapla/app/enum/currency_type.dart';
import 'package:kur_hesapla/data/entity/starry_currency.dart';
import 'package:kur_hesapla/ui/page/home/calculator/widget/starry_currency/bloc/starry_currency_bloc.dart';

class StarryCurrencyView extends StatelessWidget {
  final CurrencyType currencyType;
  final CurrencyType calculatedCurrencyType;

  const StarryCurrencyView({
    super.key,
    required this.currencyType,
    required this.calculatedCurrencyType,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StarryCurrencyBloc, StarryCurrencyState>(
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
            final event = (state is Selected)
                ? StarryCurrencyEvent.diSelect(id: state.id)
                : StarryCurrencyEvent.select(
                    starryCurrency: StarryCurrency(
                      currencyType: currencyType.name,
                      calculatedCurrencyType: calculatedCurrencyType.name,
                    ),
                  );
            context.read<StarryCurrencyBloc>().add(event);
          },
          // label: Text('fav'),
          icon: Icon(
            (state is Selected) ? Icons.star : Icons.star_border,
          ),
        );
      },
    );
  }
}
