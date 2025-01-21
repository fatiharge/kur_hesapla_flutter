// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(FindLatestData.serializer)
      ..add(FindLatestMeta.serializer)
      ..add(FindLatestResponse.serializer)
      ..add(HistoricalPricesData.serializer)
      ..add(HistoricalPricesMeta.serializer)
      ..add(HistoricalPricesResponse.serializer)
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(HistoricalPricesData)]),
          () => new ListBuilder<HistoricalPricesData>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => new MapBuilder<String, String>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
