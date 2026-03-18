import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

//k for naming convention
var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 106, 21, 121),
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),

        //useMaterial3: true
      ),
      home: const Expenses(),
    ),
  );
}
