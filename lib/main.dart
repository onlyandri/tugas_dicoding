import 'package:flutter/material.dart';
import 'package:tugas_dicoding/constants.dart';
import 'package:tugas_dicoding/routes.dart';
import 'package:tugas_dicoding/screens/splash/splash_screen.dart';
import 'package:tugas_dicoding/theme.dart';

import 'halaman_depan.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tugas dicoding',
      theme: theme(),
      initialRoute: splashScreen.routeName,
      routes: routes,
    );
  }
}
