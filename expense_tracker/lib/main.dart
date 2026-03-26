import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

//k for naming convention
var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 106, 21, 121),
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: const CardThemeData().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8)
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
          backgroundColor: kColorScheme.primaryContainer,
          foregroundColor: kColorScheme.onPrimaryContainer,
        )) ,
        //textTheme: TextTheme().copyWith(titleLarge:   TextStyle().copyWith(fontWeight: FontWeight.normal))
        //useMaterial3: true
      ),
      home: const Expenses(),
    ),
  );
}
