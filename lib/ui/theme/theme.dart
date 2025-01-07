import 'package:flutter/material.dart';
import 'package:kur_hesapla/ui/theme/dark_color_schema.dart';
import 'package:kur_hesapla/ui/theme/light_color_schema.dart';

class MaterialTheme {
  const MaterialTheme(this.textTheme);

  final TextTheme textTheme;

  ThemeData light() => theme(lightColorSchema);

  ThemeData dark() => theme(darkColorSchema);

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        // brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        // scaffoldBackgroundColor: colorScheme.surface,
        // canvasColor: colorScheme.surface,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.resolveWith<Color>(
              (states) {
                if (states.contains(WidgetState.selected)) {
                  return colorScheme.primaryContainer;
                } else {
                  return colorScheme.surfaceContainerLow;
                }
              },
            ),
          ),
        ),
      );
}
