// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../app//client/kur_hesapla_client.dart' as _i405;
import '../../ui/page/home/calculator/bloc/calculator_bloc.dart' as _i816;
import '../service/initialization_service.dart' as _i937;
import '../service/kur_hesapla_client/currency_price_resource_api_service.dart'
    as _i1046;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i937.InitializationService>(
        () => _i937.InitializationService());
    gh.singleton<_i405.KurHesaplaClient>(() => _i405.KurHesaplaClient());
    gh.factory<_i1046.CurrencyPriceResourceApiService>(() =>
        _i1046.CurrencyPriceResourceApiService(
            kurHesaplaClient: gh<_i405.KurHesaplaClient>()));
    gh.factory<_i816.CalculatorBloc>(() => _i816.CalculatorBloc(
        currencyPriceResourceApiService:
            gh<_i1046.CurrencyPriceResourceApiService>()));
    return this;
  }
}
