import 'package:flutter/material.dart';
import 'package:shop_app/pages/splash_page.dart';

void main() {
  runApp(shopApp());
}

class shopApp extends StatelessWidget {
  const shopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashPage());
  }
}
