//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/find_latest_data.dart';
import 'package:openapi/src/model/find_latest_meta.dart';
import 'package:openapi/src/model/find_latest_response.dart';
import 'package:openapi/src/model/historical_prices_data.dart';
import 'package:openapi/src/model/historical_prices_meta.dart';
import 'package:openapi/src/model/historical_prices_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  FindLatestData,
  FindLatestMeta,
  FindLatestResponse,
  HistoricalPricesData,
  HistoricalPricesMeta,
  HistoricalPricesResponse,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
