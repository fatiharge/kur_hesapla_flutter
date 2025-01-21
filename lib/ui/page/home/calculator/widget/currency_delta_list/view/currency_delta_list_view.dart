import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kur_hesapla/app/enum/currency_type.dart';
import 'package:kur_hesapla/app/mapper/currency_type_mapper.dart';
import 'package:kur_hesapla/ui/page/home/calculator/widget/currency_delta_list/bloc/currency_delta_list_bloc.dart';
import 'package:kur_hesapla/ui/widget/card/percent_delta_card/percent_delta_card.dart';
import 'package:kur_hesapla/ui/widget/card/percent_delta_card/percent_delta_card_state.dart';

class CurrencyDeltaListView extends StatelessWidget {
  CurrencyDeltaListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrencyDeltaListBloc, CurrencyDeltaListState>(
      builder: (context, state) {
        if (state is Loaded) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: CurrencyType.values.length,
            itemBuilder: (context, index) {
              final today = CurrencyType.values[index]
                  .findValueFromHistoricalPricesData(
                      state.historicalPricesResponse.data!.last);
              final yesterday = CurrencyType.values[index]
                  .findValueFromHistoricalPricesData(
                      state.historicalPricesResponse.data!.first);

              final changeRate = ((yesterday / today) * 100) - 100;
              return PercentDeltaCard(
                shortName: CurrencyType.values[index].name,
                name: CurrencyType.values[index].getLocaleKey.tr(),
                content: '\$ ' + today.toStringAsFixed(2),
                percent: (changeRate).toStringAsFixed(2),
                state: changeRate > 0
                    ? PercentDeltaCardState.positive
                    : changeRate < 0
                        ? PercentDeltaCardState.negative
                        : PercentDeltaCardState.equal,
                // changeRate: changeRate,
              );
            },
          );
        }
        return Text(state.toString());
      },
    );
  }
}
