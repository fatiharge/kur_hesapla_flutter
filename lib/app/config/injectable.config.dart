// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/repository/marked_currency_box.dart' as _i663;
import '../../data/repository/starry_currency_box.dart' as _i114;
import '../../data/repository/task_box.dart' as _i532;
import '../../service/initialization_service.dart' as _i17;
import '../../ui/page/home/calculator/bloc/calculator_bloc.dart' as _i816;
import '../../ui/page/home/calculator/page/select_currency_page/bloc/select_currency_from_starry/select_starry_cubit.dart'
    as _i221;
import '../../ui/page/home/calculator/page/select_currency_page/bloc/select_currency_from_type/select_currency_cubit.dart'
    as _i204;
import '../../ui/page/home/calculator/widget/currency_delta_list/bloc/currency_delta_list_bloc.dart'
    as _i423;
import '../../ui/page/home/calculator/widget/marked_currency/bloc/marked_currency_bloc.dart'
    as _i256;
import '../../ui/page/home/calculator/widget/starry_currency/bloc/starry_currency_bloc.dart'
    as _i148;
import '../../ui/page/home/chart/bloc/chart_bloc.dart' as _i577;
import '../../ui/page/home/marked/bloc/marked_bloc.dart' as _i439;
import '../../ui/page/home/news/bloc/news_bloc.dart' as _i416;
import '../adapter/marked_currency_adapter.dart' as _i162;
import '../client/kur_hesapla_client.dart' as _i718;
import '../client/news_api_client.dart' as _i694;

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
    gh.factory<_i162.MarkedCurrencyAdapter>(
        () => _i162.MarkedCurrencyAdapter());
    gh.factory<_i17.InitializationService>(() => _i17.InitializationService());
    gh.factory<_i114.StarryCurrencyBox>(() => _i114.StarryCurrencyBox());
    gh.factory<_i663.MarkedCurrencyBox>(() => _i663.MarkedCurrencyBox());
    gh.factory<_i532.TaskBox>(() => _i532.TaskBox());
    gh.singleton<_i694.NewsApiClient>(() => _i694.NewsApiClient());
    gh.singleton<_i718.KurHesaplaClient>(() => _i718.KurHesaplaClient());
    gh.factory<_i221.SelectStarryCubit>(
        () => _i221.SelectStarryCubit(gh<_i114.StarryCurrencyBox>()));
    gh.factory<_i204.SelectCurrencyCubit>(
        () => _i204.SelectCurrencyCubit(gh<_i114.StarryCurrencyBox>()));
    gh.factory<_i148.StarryCurrencyBloc>(
        () => _i148.StarryCurrencyBloc(gh<_i114.StarryCurrencyBox>()));
    gh.factory<_i439.MarkedBloc>(() =>
        _i439.MarkedBloc(markedCurrencyBox: gh<_i663.MarkedCurrencyBox>()));
    gh.factory<_i256.MarkedCurrencyBloc>(
        () => _i256.MarkedCurrencyBloc(gh<_i663.MarkedCurrencyBox>()));
    gh.factory<_i816.CalculatorBloc>(() => _i816.CalculatorBloc(
          kurHesaplaClient: gh<_i718.KurHesaplaClient>(),
          markedCurrencyBox: gh<_i663.MarkedCurrencyBox>(),
          markedCurrencyAdapter: gh<_i162.MarkedCurrencyAdapter>(),
        ));
    gh.factory<_i423.CurrencyDeltaListBloc>(
        () => _i423.CurrencyDeltaListBloc(gh<_i718.KurHesaplaClient>()));
    gh.factory<_i577.ChartBloc>(
        () => _i577.ChartBloc(kurHesaplaClient: gh<_i718.KurHesaplaClient>()));
    gh.factory<_i416.NewsBloc>(() => _i416.NewsBloc(gh<_i694.NewsApiClient>()));
    return this;
  }
}
