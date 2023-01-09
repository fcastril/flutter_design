import 'package:designsapp/src/pages/pages.dart';
import 'package:designsapp/src/themes/appTheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design App',
      theme: AppTheme.getThemePpal(),
      home: const HeadersPage(),
    );
  }
}
