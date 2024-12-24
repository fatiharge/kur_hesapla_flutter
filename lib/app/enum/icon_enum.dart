import 'package:kur_hesapla/app/extension/string_extension.dart';

extension IconExtension on IconEnum {
  String get path {
    return 'assets/svg/${name.camelToSnakeCase}.svg';
  }
}

enum IconEnum { none }
