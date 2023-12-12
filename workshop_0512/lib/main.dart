import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workshop_0512/screens/categories.dart';

final theme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple, brightness: Brightness.dark));
void main() {
  runApp(ProviderScope(child: MaterialApp(theme: theme, home: Categories())));
}
