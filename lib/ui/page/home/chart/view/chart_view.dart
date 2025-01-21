import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:kur_hesapla/app/enum/currency_type.dart';
import 'package:kur_hesapla/generated/locale_keys.g.dart';
import 'package:kur_hesapla/ui/page/home/chart/bloc/chart_bloc.dart';
import 'package:kur_hesapla/ui/route/route_manager.gr.dart';
import 'package:kur_hesapla_api/kur_hesapla_api.dart';
import 'package:uikit/utility/constant/padding/extension/padding_extension.dart';
import 'package:uikit/utility/extension/context_extension.dart';

class ChartView extends StatelessWidget {
  const ChartView({super.key});

  Future<void> selectCurrency({
    required BuildContext context,
    bool isCalculated = false,
  }) async {
    final currencyType =
        await context.pushRoute<CurrencyType>(const SelectCurrencyRoute());

    if (currencyType != null && context.mounted) {
      final event = isCalculated
          ? ChartEvent.setCurrency(currencyType: currencyType)
          : ChartEvent.setSecondCurrency(currencyType: currencyType);

      context.read<ChartBloc>().add(event);
    }
  }

  Future<void> _pickTime(
    BuildContext context,
    Date startDate,
    Date endDate,
  ) async {
    final pickedTime = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2024, 3, 7),
      lastDate: DateTime.now(),
      initialDateRange: DateTimeRange(
        start: startDate.toDateTime(),
        end: endDate.toDateTime(),
      ),
    );

    if (context.mounted && pickedTime != null) {
      final event = SetDate(
        startDate: pickedTime.start.toDate(),
        endDate: pickedTime.end.toDate(),
      );

      context.read<ChartBloc>().add(event);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<ChartBloc, ChartState>(
          builder: (context, state) {
            if (state is ChartLoaded) {
              return const Text(
                'Kur Grafik',
              );
            }
            return Text(LocaleKeys.general_loading_data.tr());
          },
        ),
      ),
      body: BlocBuilder<ChartBloc, ChartState>(
        builder: (context, state) {
          if (state is ChartLoaded) {
            return ListView(
              padding: context.pagePadding.small.paddingSymmetricHorizontal,
              children: [
                Card(
                  child: Padding(
                    padding:
                        context.itemPadding.medium.paddingSymmetricVertical,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () => selectCurrency(context: context),
                          child: Text(state.currencyType.name),
                        ),
                        SizedBox(
                          height: context.dynamicWidth(context.baseScale.small),
                          child: VerticalDivider(
                            color: context.colorScheme.primary,
                          ),
                        ),
                        TextButton(
                          onPressed: () => selectCurrency(
                            context: context,
                            isCalculated: true,
                          ),
                          child: Text(state.secondCurrencyType.name),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding:
                        context.itemPadding.medium.paddingSymmetricVertical,
                    child: TextButton(
                      onPressed: () {
                        _pickTime(context, state.startDate, state.endDate);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            state.startDate.toString(),
                          ),
                          SizedBox(
                            height:
                                context.dynamicWidth(context.baseScale.small),
                            child: VerticalDivider(
                              color: context.colorScheme.primary,
                            ),
                          ),
                          Text(
                            state.endDate.toString(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Text(
                    '${(state.historicalPricesResponse.data!.first.USD! / state.historicalPricesResponse.data!.last.EUR!).toStringAsFixed(2)}%',
                    style: context.textTheme.titleLarge,
                  ),
                  title: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${state.currencyType.name}/${state.secondCurrencyType.name}',
                            style: context.textTheme.titleLarge,
                          ),
                          SizedBox(
                            child: Text(
                              '${state.currencyType.getLocaleKey.tr()}/${state.secondCurrencyType.getLocaleKey.tr()}',
                              overflow: TextOverflow.ellipsis,
                              style: context.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Chart(
                    list: state.historicalPricesResponse.data!
                        .map(
                          (p0) => p0.EUR!,
                        )
                        .toList(),
                    positive: (state.historicalPricesResponse.data!.first.USD! /
                            state.historicalPricesResponse.data!.last.EUR!) >=
                        0,
                    open: true,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        color: context.colorScheme.primary,
                        child: SizedBox(
                          height:
                              context.dynamicWidth(context.widthScale.medium),
                          child: TextButton(
                            onPressed: () {
                              _pickTime(
                                context,
                                state.startDate,
                                state.endDate,
                              );
                            },
                            child: ListTile(
                              titleTextStyle:
                                  context.textTheme.titleMedium?.copyWith(
                                color: context.colorScheme.onPrimary,
                              ),
                              subtitleTextStyle:
                                  context.textTheme.titleMedium?.copyWith(
                                color: context.colorScheme.onPrimary,
                              ),
                              title: const Text(
                                'Baslangic tarihi:',
                              ),
                              subtitle: Text(
                                state.startDate.toString(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        color: context.colorScheme.secondary,
                        child: SizedBox(
                          height:
                              context.dynamicWidth(context.widthScale.medium),
                          child: TextButton(
                            onPressed: () {
                              _pickTime(
                                context,
                                state.startDate,
                                state.endDate,
                              );
                            },
                            child: ListTile(
                              titleTextStyle:
                                  context.textTheme.titleMedium?.copyWith(
                                color: context.colorScheme.onSecondary,
                              ),
                              subtitleTextStyle:
                                  context.textTheme.titleMedium?.copyWith(
                                color: context.colorScheme.onSecondary,
                              ),
                              title: const Text(
                                'Bitis tarihi:',
                              ),
                              subtitle: Text(
                                state.endDate.toString(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        color: context.colorScheme.primaryFixed,
                        child: SizedBox(
                          height:
                              context.dynamicWidth(context.widthScale.medium),
                          child: Center(
                            child: ListTile(
                              titleTextStyle:
                                  context.textTheme.titleMedium?.copyWith(
                                color: context.colorScheme.onPrimaryFixed,
                              ),
                              subtitleTextStyle:
                                  context.textTheme.titleSmall?.copyWith(
                                color: context.colorScheme.onPrimaryFixed,
                              ),
                              title: const Text(
                                'Maksimum oran:',
                              ),
                              subtitle: Text(
                                state.historicalPricesResponse.data!
                                    .reduce(
                                      (a, b) => a.EUR! > b.EUR! ? a : b,
                                    )
                                    .EUR!
                                    .toStringAsFixed(2),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        color: context.colorScheme.primaryFixed,
                        child: SizedBox(
                          height:
                              context.dynamicWidth(context.widthScale.medium),
                          child: Center(
                            child: ListTile(
                              titleTextStyle:
                                  context.textTheme.titleMedium?.copyWith(
                                color: context.colorScheme.onPrimaryFixed,
                              ),
                              subtitleTextStyle:
                                  context.textTheme.titleSmall?.copyWith(
                                color: context.colorScheme.onPrimaryFixed,
                              ),
                              title: const Text(
                                'Minimum oran:',
                              ),
                              subtitle: Text(
                                state.historicalPricesResponse.data!
                                    .reduce(
                                      (a, b) => a.EUR! < b.EUR! ? a : b,
                                    )
                                    .EUR!
                                    .toStringAsFixed(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        color: context.colorScheme.tertiaryContainer,
                        child: SizedBox(
                          height:
                              context.dynamicWidth(context.widthScale.medium),
                          child: Center(
                            child: ListTile(
                              titleTextStyle:
                                  context.textTheme.titleMedium?.copyWith(
                                color: context.colorScheme.onTertiaryContainer,
                              ),
                              subtitleTextStyle:
                                  context.textTheme.titleMedium?.copyWith(
                                color: context.colorScheme.onTertiaryContainer,
                              ),
                              title: const Text(
                                'Degisim Orani:',
                              ),
                              subtitle: Text(
                                '${(state.historicalPricesResponse.data!.first.USD! / state.historicalPricesResponse.data!.last.EUR!).toStringAsFixed(2)}%',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                  ],
                ),
              ],
            );
          }
          return Center(child: Text(LocaleKeys.general_loading_data.tr()));
        },
      ),
    );
  }
}

class Chart extends StatelessWidget {
  Chart({
    required this.list,
    required this.positive,
    required this.open,
    super.key,
  });

  final List<double> list; // List of data points for the chart
  final bool positive; // Flag indicating if data represents positive values
  final bool open; // Flag indicating if data represents positive values

  // Color gradients for the chart
  final List<Color> gradientColors = [
    const Color(0xFFC7F3C7),
    const Color(0xFF048A04),
  ];

  final List<Color> gradientColorsRed = [
    const Color(0xFFF3C7C7),
    const Color(0xFF8A0404),
  ];

  // Cut-off value for the chart
  final double cutOffYValue = 0.32;

  // Aspect ratio for the chart
  final double aspectRatio = 2;

  // Initial minimum X value for the chart
  final double initialMinX = 0;

  // Initial minimum Y value for the chart
  final double initialMinY = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: aspectRatio,
          child: LineChart(
            duration: Duration(
              milliseconds: context.baseDuration.medium.toInt(),
            ),
            LineChartData(
              titlesData: FlTitlesData(
                show: open,
                leftTitles: AxisTitles(
                  axisNameWidget: Padding(
                    padding: context.itemPadding.medium.paddingOnlyLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(3, (index) {
                        return Text(
                          leftTitles(index).toStringAsFixed(1),
                          style: context.textTheme.bodySmall,
                        );
                      }),
                    ),
                  ),
                  sideTitles: const SideTitles(
                    reservedSize: 20,
                  ),
                ),
                topTitles: const AxisTitles(drawBelowEverything: false),
                rightTitles: const AxisTitles(drawBelowEverything: false),
                bottomTitles: AxisTitles(
                  axisNameWidget: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(30, (index) {
                        return index % 3 == 0
                            ? Text(
                                bottomTitles(index).toString(),
                                style: context.textTheme.bodySmall,
                              )
                            : const SizedBox();
                      }),
                    ),
                  ),
                  sideTitles: const SideTitles(
                    reservedSize: 20,
                  ),
                ),
              ),
              borderData: FlBorderData(
                show: false,
                border: Border.all(color: const Color(0xff37434d)),
              ),
              maxX: list.length.toDouble(),
              minY: findMinValue(list) * 0.99,
              maxY: findMaxValue(list) * 1.01,
              lineBarsData: [
                LineChartBarData(
                  spots: list.asMap().entries.map((entry) {
                    final index = entry.key + 1;
                    final value = entry.value;
                    return FlSpot(index.toDouble(), value);
                  }).toList(),
                  isCurved: true,
                  gradient: LinearGradient(
                    colors: positive ? gradientColors : gradientColorsRed,
                  ),
                  barWidth: 1,
                  dotData: const FlDotData(
                    show: false,
                  ),
                  belowBarData: BarAreaData(
                    show: true,
                    cutOffY: cutOffYValue,
                    applyCutOffY: true,
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: (positive ? gradientColors : gradientColorsRed)
                          .map((color) => color.withAlpha(96))
                          .toList(),
                      tileMode: TileMode.decal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  double findMaxValue(List<double> originalList) {
    var maxValue = originalList[0];

    for (var i = 1; i < originalList.length; i++) {
      if (originalList[i] > maxValue) {
        maxValue = originalList[i];
      }
    }

    return maxValue;
  }

  double findMinValue(List<double> originalList) {
    var minValue = originalList[0];

    for (var i = 1; i < originalList.length; i++) {
      if (originalList[i] < minValue) {
        minValue = originalList[i];
      }
    }

    return minValue;
  }

  int bottomTitles(int index) {
    return index + DateTime.now().day > 30
        ? index + DateTime.now().day - 30
        : index + DateTime.now().day;
  }

  double leftTitles(int index) {
    return index == 0
        ? findMinValue(list)
        : index == 1
            ? (findMinValue(list) + findMaxValue(list)) / 2
            : findMaxValue(list);
  }
}
