import 'package:flutter/material.dart';

import 'views/auth_view.dart';
import 'views/home_view.dart';
import 'views/analysis_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthView(),
        '/home': (context) => const HomeView(),
        '/analysis': (context) => const AnalysisView(),
      },
    );
  }
}