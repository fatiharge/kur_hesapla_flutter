import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kur_hesapla/app/enum/currency_type.dart';
import 'package:uikit/utility/constant/padding/extension/padding_extension.dart';
import 'package:uikit/utility/extension/context_extension.dart';

@RoutePage()
class SelectCurrencyPage extends StatelessWidget {
  const SelectCurrencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    const currencyTypes = CurrencyType.values;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Select Currency",
          style: context.textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: context.pagePadding.small.paddingSymmetricHorizontal,
        child: ListView.builder(
          itemCount: currencyTypes.length,
          itemBuilder: (context, index) {
            final currencyType = currencyTypes[index];

            return Padding(
              padding: context.itemPadding.medium.paddingSymmetricVertical,
              child: Card(
                child: ListTile(
                  title: Text(
                      '${currencyType.name} · ${currencyType.getCurrencyTypeName()}'),
                  onTap: () => Navigator.of(context).pop(currencyType),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}