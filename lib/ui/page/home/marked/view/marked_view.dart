import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kur_hesapla/app/enum/currency_type.dart';
import 'package:kur_hesapla/app/extension/date_extension.dart';
import 'package:kur_hesapla/data/entity/marked_currency.dart';
import 'package:kur_hesapla/generated/locale_keys.g.dart';
import 'package:kur_hesapla/ui/page/home/marked/bloc/marked_bloc.dart';
import 'package:uikit/utility/constant/padding/extension/padding_extension.dart';
import 'package:uikit/utility/extension/context_extension.dart';

class MarkedView extends StatelessWidget {
  const MarkedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.marked_view_title.tr(),
        ),
      ),
      body: Padding(
        padding: context.pagePadding.small.paddingSymmetricHorizontal,
        child: BlocBuilder<MarkedBloc, MarkedState>(
          builder: (context, state) {
            if (state is Loaded) {
              if (state.markedList.isEmpty) {
                return Center(
                  child: Text(LocaleKeys.general_no_data.tr()),
                );
              }
              return _buildMarkedList(context, state);
            }
            return Center(
              child: Text(LocaleKeys.general_loading_data.tr()),
            );
          },
        ),
      ),
    );
  }

  Widget _buildMarkedList(BuildContext context, Loaded state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: state.markedList.length,
            itemBuilder: (context, index) {
              final model = state.markedList[index];
              return _buildMarkedItem(context, model);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildMarkedItem(BuildContext context, MarkedCurrency model) {
    return Padding(
      padding: context.itemPadding.xSmall.paddingSymmetricVertical,
      child: Card(
        child: ListTile(
          title: Text(
            '${model.currencyValue} ${model.currencyType} = '
            '${model.calculatedCurrencyValue} ${model.calculatedCurrencyType}',
          ),
          subtitle: _buildItemSubtitle(model),
          trailing: _buildDeleteButton(context, model),
        ),
      ),
    );
  }

  Widget _buildItemSubtitle(MarkedCurrency model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${model.currencyType}/${model.calculatedCurrencyType}: '
          '${_rateAsFixed_(model)}',
        ),
        Text(
          '${model.currencyType}: '
          '${_getCurrencyTypeByName(model.currencyType).getLocaleKey.tr()}',
        ),
        Text(
          '${model.calculatedCurrencyType}: '
          '${_calculatedText_(model)}',
        ),
        Text('${LocaleKeys.general_date.tr()}: ${model.date.toLocaleString}'),
      ],
    );
  }

  String _calculatedText_(MarkedCurrency model) =>
      _getCurrencyTypeByName(model.calculatedCurrencyType).getLocaleKey.tr();

  String _rateAsFixed_(MarkedCurrency model) =>
      (double.parse(model.currencyValue) /
              double.parse(model.calculatedCurrencyValue))
          .toStringAsFixed(2);

  Widget _buildDeleteButton(BuildContext context, MarkedCurrency model) {
    return IconButton(
      onPressed: () async {
        final res = await _showDeleteConfirmationDialog(context);
        if (res ?? false) {
          if (context.mounted) {
            _removeMarkedItem(context, model.id);
          }
        }
      },
      icon: const Icon(
        Icons.delete,
        color: Colors.red,
      ),
    );
  }

  Future<bool?> _showDeleteConfirmationDialog(BuildContext context) {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(LocaleKeys.general_delete_record.tr()),
          content: Text(LocaleKeys.general_are_you_sure.tr()),
          actions: <Widget>[
            TextButton(
              child: Text(
                LocaleKeys.general_remove.tr(),
                style: TextStyle(
                  color: context.colorScheme.error,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
            TextButton(
              child: Text(
                LocaleKeys.general_cancel.tr(),
              ),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
          ],
        );
      },
    );
  }

  void _removeMarkedItem(BuildContext context, int id) {
    if (context.mounted) {
      context.read<MarkedBloc>().add(MarkedEvent.remove(id));
    }
  }

  CurrencyType _getCurrencyTypeByName(String name) {
    return CurrencyType.values.firstWhere((element) => element.name == name);
  }
}
