import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/app/config/injectable.config.dart';


@InjectableInit(preferRelativeImports: true)
void configureDependencies() => GetIt.instance.init();
