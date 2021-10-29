import 'package:flutter/material.dart';
import 'package:koffi/page/splash/splash_page.dart';
import 'package:koffi/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: CustomTheme.theme,
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
