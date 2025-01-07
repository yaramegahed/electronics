
import 'package:electronics/features/electronics/layout/layout.dart';
import 'package:flutter/material.dart';

import 'features/electronics/view/electronics_screen/screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: Layout(),

    );
  }}