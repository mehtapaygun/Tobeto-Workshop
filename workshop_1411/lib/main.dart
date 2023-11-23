import 'package:flutter/material.dart';
import 'package:workshop_1411/pages/main_page.dart';

ColorScheme colorScheme1 =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 214, 94, 235));
void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: colorScheme1,
          appBarTheme: AppBarTheme(
            color: colorScheme1.primary,
            foregroundColor: colorScheme1.onPrimaryContainer,
          ),
          scaffoldBackgroundColor: colorScheme1.onPrimary,
          cardTheme: CardTheme(
            color: colorScheme1.onSecondary,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                titleMedium: TextStyle(color: colorScheme1.tertiary),
                bodyMedium: TextStyle(
                    color: colorScheme1.primary,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
          snackBarTheme: ThemeData().snackBarTheme.copyWith(
                actionTextColor: colorScheme1.onPrimary,
                backgroundColor: colorScheme1.primary,
              ),
          iconTheme: IconThemeData(color: colorScheme1.primary),
          bottomSheetTheme:
              BottomSheetThemeData(dragHandleColor: colorScheme1.primary)),
      home: const MainPage(),
    ),
  );
}
