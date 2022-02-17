import 'package:flutter/material.dart';
import 'package:flutter_challenge_three/src/presentation/common/theme/app_theme.dart';
import 'package:flutter_challenge_three/src/presentation/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Challenge',
      theme: AppTheme.light,
      home: const HomePage(),
    );
  }
}
