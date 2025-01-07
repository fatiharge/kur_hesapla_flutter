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
import '../../data/repository/task_box.dart' as _i532;
import '../../ui/page/home/calculator/bloc/calculator_bloc.dart' as _i816;
import '../../ui/page/home/calculator/select_currency_page/bloc/select_currency_cubit.dart'
    as _i772;
import '../../ui/page/home/marked/bloc/marked_bloc.dart' as _i439;
import '../adapter/marked_currency_adapter.dart' as _i162;
import '../client/kur_hesapla_client.dart' as _i718;
import '../../service/initialization_service.dart' as _i937;
import '../../service/marked_currency_service.dart' as _i641;

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
    gh.factory<_i772.SelectCurrencyCubit>(() => _i772.SelectCurrencyCubit());
    gh.factory<_i162.MarkedCurrencyAdapter>(
        () => _i162.MarkedCurrencyAdapter());
    gh.factory<_i937.InitializationService>(
        () => _i937.InitializationService());
    gh.factory<_i641.MarkedCurrencyService>(
        () => _i641.MarkedCurrencyService());
    gh.factory<_i663.MarkedCurrencyBox>(() => _i663.MarkedCurrencyBox());
    gh.factory<_i532.TaskBox>(() => _i532.TaskBox());
    gh.singleton<_i718.KurHesaplaClient>(() => _i718.KurHesaplaClient());
    gh.factory<_i816.CalculatorBloc>(() => _i816.CalculatorBloc(
          kurHesaplaClient: gh<_i718.KurHesaplaClient>(),
          markedCurrencyService: gh<_i641.MarkedCurrencyService>(),
          markedCurrencyAdapter: gh<_i162.MarkedCurrencyAdapter>(),
        ));
    gh.factory<_i439.MarkedBloc>(() => _i439.MarkedBloc(
        markedCurrencyService: gh<_i641.MarkedCurrencyService>()));
    return this;
  }
}
