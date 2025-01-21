import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:kur_hesapla/app/enum/currency_type.dart';

import 'package:kur_hesapla/ui/route/route_manager.gr.dart';
import 'package:uikit/utility/extension/context_extension.dart';

class CurrencyInfo extends StatelessWidget {
  const CurrencyInfo({
    required this.currencyType,
    required this.time,
    required this.calculatedType,
    super.key,
    required this.calculatedValue,
    required this.currencyValue,
  });

  final CurrencyType currencyType;
  final CurrencyType calculatedType;
  final String calculatedValue;
  final String currencyValue;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$currencyValue ${currencyType.getLocaleKey.tr()}',
          style: context.textTheme.headlineSmall?.copyWith(
            color: Theme.of(context).hintColor,
          ),
        ),
        Text(
          '$calculatedValue ${calculatedType.getLocaleKey.tr()}',
          style: context.textTheme.headlineMedium,
        ),
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: '$time · ',
                style: context.textTheme.titleSmall,
              ),
              TextSpan(
                text: 'Sorumluluk Reddi Beyanı',
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    context.pushRoute(const DisclaimerRoute());
                  },
                style: context.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w300,
                  color: Theme.of(context).hintColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
