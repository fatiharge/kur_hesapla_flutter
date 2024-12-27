import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:kur_hesapla/app/enum/currency_type.dart';
import 'package:kur_hesapla/ui/route/route_manager.dart';
import 'package:kur_hesapla/ui/route/route_manager.gr.dart';
import 'package:uikit/utility/extension/context_extension.dart';

class CurrencyInfo extends StatelessWidget {
  const CurrencyInfo({
    required this.currencyType,
    required this.time,
    required this.rate,
    required this.calculatedType,
    super.key,
  });

  final CurrencyType currencyType;
  final CurrencyType calculatedType;
  final String time;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '1 ${currencyType.getCurrencyTypeName()}',
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w300,
            color: Theme.of(context).hintColor,
          ),
        ),
        Text(
          '$rate ${calculatedType.getCurrencyTypeName()}',
          style: context.textTheme.displaySmall,
        ),
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text:
                    // '${findLatestResponse.meta!.createdDate?.toLocaleString} · ',
                    '$time · ',
                style: context.textTheme.titleSmall,
              ),
              TextSpan(
                text: 'Sorumluluk Reddi Beyanı',
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    GetIt.instance<RouteManager>().push(
                      const NewWidgetRoute(),
                    );
                    // PersistentNavBarNavigator.pushNewScreen(
                    //   context,
                    //   screen: NewWidgetPage(),
                    //   withNavBar: true,
                    // );
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
