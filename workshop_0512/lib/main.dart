import 'package:flutter/material.dart';
import 'package:workshop_0512/screens/categories.dart';

final theme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepOrange, brightness: Brightness.dark));
void main() {
  runApp(MaterialApp(theme: theme, home: Categories()));
}
