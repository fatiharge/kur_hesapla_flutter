import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:kur_hesapla/app/init/bloc/init_cubit.dart';
import 'package:kur_hesapla/generated/locale_keys.g.dart';
import 'package:kur_hesapla/product/route/route_manager.dart';
import 'package:uikit/uikit.dart' show CardPaperBadge;

import 'package:uikit/utility/constant/padding/extension/padding_extension.dart';
import 'package:uikit/utility/extension/context_extension.dart';


class InitView extends StatelessWidget {
  InitView({super.key});

  final loadingTextList = [
    LocaleKeys.loading_speed_and_ease,
    LocaleKeys.loading_ready_in_seconds,
    LocaleKeys.loading_connecting_to_market,
    LocaleKeys.loading_preparing_data,
    LocaleKeys.loading_fetching_financial_data,
    LocaleKeys.loading_updating_exchange_rates,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: context.padding.xLarge.paddingAll,
              child: Stack(
                children: [
                  Card(
                    child: Center(
                      child: DefaultTextStyle(
                        style: context.appTheme.textTheme.displayMedium!,
                        child: AnimatedTextKit(
                          pause: Duration(
                            milliseconds: context.baseDuration.medium.toInt(),
                          ),
                          repeatForever: true,
                          animatedTexts: [
                            for (final text in loadingTextList)
                              RotateAnimatedText(
                                text.tr(),
                                duration: Duration(
                                  milliseconds:
                                      context.baseDuration.medium.toInt(),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  BlocBuilder<InitCubit, int>(
                    builder: (context, state) {
                      if (state == 100) {
                        GetIt.instance<RouteManager>().replaceNamed('/');
                      }
                      final isStateGreaterThan5 = state > 5;
                      return _buildBadge(
                        context: context,
                        badgeVisible: isStateGreaterThan5,
                        text: state.toString(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedPositioned _buildBadge({
    required BuildContext context,
    required bool badgeVisible,
    required String text,
  }) {
    return AnimatedPositioned(
      curve: Curves.fastOutSlowIn,
      duration: Duration(
        milliseconds: context.baseDuration.medium.toInt(),
      ),
      left: badgeVisible ? 0 : -context.cardSize.medium,
      top: badgeVisible ? 0 : -context.cardSize.medium,
      child: CardPaperBadge(
        widget: Text(
          text,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
        ),
        cardHeight: context.cardSize.medium,
        cardRadius: BorderRadius.circular(context.baseRadius.large),
        cardColor: context.colorScheme.secondary,
        backgroundColor: context.colorScheme.surfaceContainerLow,
        alignment: Alignment.topLeft,
      ),
    );
  }
}
