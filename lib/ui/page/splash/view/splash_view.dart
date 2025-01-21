import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:kur_hesapla/generated/locale_keys.g.dart';
import 'package:kur_hesapla/ui//route/route_manager.gr.dart';
import 'package:kur_hesapla/ui/page/splash/bloc/splash_cubit.dart';
import 'package:uikit/uikit.dart' show CardPaperBadge;
import 'package:uikit/utility/constant/padding/extension/padding_extension.dart';
import 'package:uikit/utility/extension/context_extension.dart';

class SplashView extends StatelessWidget {
  SplashView({super.key});

  final loadingTextList = [
    LocaleKeys.loading_speed_and_ease,
    LocaleKeys.loading_connecting_to_market,
    LocaleKeys.loading_preparing_data,
    LocaleKeys.loading_fetching_financial_data,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: context.padding.medium.paddingAll,
              child: Stack(
                children: [
                  Card(
                    child: Center(
                      child: DefaultTextStyle(
                        style: context.appTheme.textTheme.titleSmall!,
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
                  BlocBuilder<SplashCubit, int>(
                    builder: (context, state) {
                      if (state == 100) {
                        context.replaceRoute(
                          const HomeControllerRoute(),
                        );
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
